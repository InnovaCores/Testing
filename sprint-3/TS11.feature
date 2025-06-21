Feature: TS011 - Gestión de grabaciones asociadas a reuniones

  Scenario: Obtener todas las grabaciones registradas
    Given que existen grabaciones registradas en el sistema
    When un usuario envía una solicitud GET al endpoint "/api/recordings"
    Then la respuesta será 200 OK con una lista de todas las grabaciones

  Scenario: Obtener grabaciones por ID de reunión
    Given que existe una reunión registrada con ID "1" que tiene grabaciones asociadas
    When un usuario envía una solicitud GET al endpoint "/api/recordings/meeting/1"
    Then la respuesta será 200 OK con la lista de grabaciones asociadas a la reunión

  Scenario: Error al obtener grabaciones para una reunión inexistente
    Given que no existe ninguna reunión registrada con ID "999"
    When un usuario envía una solicitud GET al endpoint "/api/recordings/meeting/999"
    Then la respuesta será 200 OK con una lista vacía de grabaciones

  Scenario: Creación manual de una grabación asociada a una reunión existente
    Given que existe una reunión registrada con ID "1"
    When un usuario envía una solicitud POST al endpoint "/api/recordings" con datos válidos de grabación para la reunión "1"
    Then la respuesta será 200 OK con el ID de la grabación creada
    And la grabación será registrada correctamente en el sistema asociada a la reunión

  Scenario: Error al eliminar una grabación inexistente
    Given que no existe ninguna grabación registrada con ID "999"
    When un usuario envía una solicitud DELETE al endpoint "/api/recordings/999"
    Then la respuesta será 400 Bad Request indicando que la grabación no existe

  Scenario: Eliminar una grabación existente
    Given que existe una grabación registrada con ID "1"
    When un usuario envía una solicitud DELETE al endpoint "/api/recordings/1"
    Then la respuesta será 204 No Content indicando eliminación exitosa
    And la grabación ya no existirá en el sistema
