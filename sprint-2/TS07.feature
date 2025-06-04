Feature: TS007 - Endpoint para creación de incidencias

  Scenario: Creación exitosa de incidencia
    Given que el Developer implementa el endpoint "/api/issues"
    When un usuario envía una solicitud POST con datos válidos de incidencia
    Then la respuesta será 201 Created con el encabezado 'Location' que enlace a "/api/issues/{id}"
    And la incidencia será registrada en el sistema

  Scenario: Datos de incidencia faltantes o inválidos
    Given que el Developer implementa el endpoint "/api/issues"
    When un usuario envía una solicitud POST con datos de incidencia faltantes o inválidos
    Then la respuesta será 400 Bad Request con un mensaje indicando los campos requeridos o el formato incorrecto
