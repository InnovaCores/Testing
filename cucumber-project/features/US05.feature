Feature: US05 - Resumen de la Empresa, Misión y Visión

  Scenario: Visualización de Misión y Visión de la Empresa
    Given que el visitante está en la página principal
    When accede a la sección "Sobre Nosotros"
    Then puede ver un resumen de la empresa con su misión y visión claramente especificadas
