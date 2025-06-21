Feature: US46 - Cancelar una reunión existente
  Scenario: Cancelar reunión exitosamente
    Given que soy el organizador de una reunión programada
    When cancelo la reunión desde la plataforma
    Then la reunión queda marcada como cancelada
    And todos los participantes reciben una notificación sobre la cancelación

  Scenario: Cancelación no permitida por usuario no autorizado
    Given que no soy organizador de la reunión
    When intento cancelar la reunión
    Then recibo un mensaje indicando que no tengo permisos para realizar esta acción

