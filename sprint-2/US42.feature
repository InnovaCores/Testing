Feature: US42 - Filtrar incidencias por Sprint y Prioridad

  Scenario: Filtro por Sprint
    Given que estoy en la sección de Issues
    When selecciono un Sprint
    Then se muestran solo las incidencias asociadas a ese Sprint

  Scenario: Filtro por Prioridad
    Given que estoy en la sección de Issues
    When selecciono una Prioridad
    Then se muestran solo las incidencias con esa prioridad

  Scenario: Filtro combinado
    Given que estoy en la sección de Issues
    When selecciono un Sprint y una Prioridad
    Then se muestran las incidencias que cumplen ambos criterios
