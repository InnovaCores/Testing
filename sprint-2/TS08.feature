Feature: TS008 - Endpoint para actualización de incidencias

  Scenario: Actualización exitosa de incidencia
    Given el endpoint "/api/issues/{id}"
    When un usuario envía una solicitud PUT con datos válidos para modificar la incidencia
    Then la respuesta será 200 OK y la incidencia reflejará los cambios realizados

  Scenario: Incidencia no encontrada
    Given el endpoint "/api/issues/{id}"
    When un usuario envía una solicitud PUT o DELETE con un ID de incidencia que no existe
    Then la respuesta será 404 Not Found indicando que la incidencia no fue encontrada
