Feature: US43 - Consultar reuniones por rango de fechas
  Scenario: Consulta exitosa por rango válido
    Given que estoy en la sección de reuniones
    When ingreso un rango válido de fechas
    Then se muestran solo las reuniones dentro de esas fechas

  Scenario: Consulta sin resultados
    Given que estoy en la sección de reuniones
    When ingreso un rango de fechas sin reuniones
    Then se muestra un mensaje indicando que no hay reuniones en ese período

