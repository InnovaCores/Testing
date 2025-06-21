Feature: TS010 - Gestión de reuniones y grabaciones

  Scenario: Obtener todas las reuniones registradas
    Given que existen reuniones registradas en el sistema
    When un usuario envía una solicitud GET al endpoint "/api/v1/meetings"
    Then la respuesta será 200 OK con una lista de todas las reuniones

  Scenario: Obtener una reunión específica por ID
    Given que existe una reunión registrada con ID "1"
    When un usuario envía una solicitud GET al endpoint "/api/v1/meetings/1"
    Then la respuesta será 200 OK con los detalles completos de la reunión

  Scenario: Error al obtener una reunión inexistente por ID
    Given que no existe ninguna reunión registrada con ID "999"
    When un usuario envía una solicitud GET al endpoint "/api/v1/meetings/999"
    Then la respuesta será 404 Not Found indicando que la reunión no existe

  Scenario: Actualizar una reunión existente con datos válidos
    Given que existe una reunión registrada con ID "1"
    When un usuario envía una solicitud PUT con datos válidos al endpoint "/api/v1/meetings/1"
    Then la respuesta será 200 OK con los datos actualizados de la reunión
    And la reunión tendrá sus datos actualizados en el sistema

  Scenario: Error al actualizar una reunión inexistente
    Given que no existe ninguna reunión registrada con ID "999"
    When un usuario envía una solicitud PUT al endpoint "/api/v1/meetings/999"
    Then la respuesta será 404 Not Found indicando que la reunión no existe

  Scenario: Eliminar una reunión existente
    Given que existe una reunión registrada con ID "1"
    When un usuario envía una solicitud DELETE al endpoint "/api/v1/meetings/1"
    Then la respuesta será 204 No Content indicando eliminación exitosa
    And la reunión ya no existirá en el sistema

  Scenario: Error al eliminar una reunión inexistente
    Given que no existe ninguna reunión registrada con ID "999"
    When un usuario envía una solicitud DELETE al endpoint "/api/v1/meetings/999"
    Then la respuesta será 400 Bad Request indicando que no existe la reunión a eliminar
