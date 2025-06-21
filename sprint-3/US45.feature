Feature: US45 - Recibir notificación automática antes de reuniones
  Scenario: Recepción exitosa de notificación
    Given que tengo una reunión programada dentro de una hora
    When faltan 10 minutos para el inicio de la reunión
    Then recibo automáticamente una notificación recordatoria

  Scenario: No recibir notificación cuando la reunión se cancela
    Given que tenía una reunión programada y fue cancelada
    When faltan 10 minutos para el horario original
    Then no recibo ninguna notificación recordatoria

