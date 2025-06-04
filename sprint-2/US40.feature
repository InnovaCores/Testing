Feature: US40 - Ver historial de una incidencia

  Scenario: Visualización del Historial de Eventos
    Given que soy un miembro del equipo con acceso a un issue
    When visualizo el detalle
    Then veo un historial de eventos, incluyendo quién los creó, la fecha y la descripción