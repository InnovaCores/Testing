Feature: US39 - Ver reporte de una incidencia

  Scenario: Reporte completo
    Given que el usuario selecciona una incidencia
    When accede al reporte
    Then se muestra una descripción detallada del problema, el historial de cambios y las asignaciones con fechas