Feature: US41 - Creación automática de los eventos creación y asignación del issue

  Scenario: Creación automática del evento de creación del issue
    Given que soy un miembro del equipo
    When creo un nuevo issue
    Then se genera automáticamente un evento de creación con fecha, creador y descripción

  Scenario: Creación automática del evento de asignación del issue
    Given que soy un miembro del equipo
    When asigno el issue
    Then se genera automáticamente un evento de asignación con fecha, miembro asignado y descripción
