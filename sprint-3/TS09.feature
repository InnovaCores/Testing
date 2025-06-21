Feature: TS009 - Endpoint para creación de reuniones

  Scenario: Creación exitosa de una reunión
    Given que el Developer implementa el endpoint "/api/v1/meetings"
    When un usuario envía una solicitud POST con datos válidos para crear una reunión
    Then la respuesta será 201 Created con los detalles de la reunión creada
    And la reunión será registrada correctamente en el sistema con su grabación asociada automáticamente

  Scenario: Error al crear una reunión con título duplicado
    Given que ya existe una reunión registrada con el título "Reunión de equipo"
    When un usuario envía una solicitud POST al endpoint "/api/v1/meetings" con el mismo título
    Then la respuesta será 400 Bad Request indicando que el título ya existe
    And no se creará ninguna nueva reunión en el sistema

  Scenario: Error al crear una reunión sin miembros disponibles
    Given que no hay miembros disponibles registrados en el sistema
    When un usuario envía una solicitud POST válida al endpoint "/api/v1/meetings"
    Then la respuesta será 400 Bad Request indicando que no hay miembros disponibles
    And la reunión no será registrada en el sistema
