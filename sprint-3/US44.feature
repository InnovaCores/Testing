Feature: US44 - Generar reporte resumido de reuniones
  Scenario: Generar reporte exitosamente
    Given que estoy en la sección de reportes
    When genero un reporte para las reuniones del último mes
    Then obtengo un resumen con todas las reuniones realizadas en ese período

  Scenario: Generar reporte sin reuniones
    Given que estoy en la sección de reportes
    When genero un reporte para un periodo sin reuniones
    Then obtengo un mensaje indicando que no existen reuniones en ese periodo
