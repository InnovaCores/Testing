Feature: TS012 - Escenarios adicionales breves para meetings

  Scenario: Obtener reuniones por título específico
    Given que existe una reunión registrada con el título "Sprint Review"
    When un usuario envía una solicitud GET al endpoint "/api/v1/meetings?title=Sprint Review"
    Then la respuesta será 200 OK con los detalles de la reunión encontrada

  Scenario: Manejar búsqueda por título inexistente
    Given que no existe ninguna reunión con el título "Reunión Inexistente"
    When un usuario envía una solicitud GET al endpoint "/api/v1/meetings?title=Reunión Inexistente"
    Then la respuesta será 404 Not Found

  Scenario: Crear reunión con formato inválido en la fecha
    Given que el usuario prepara una solicitud POST con fecha inválida "31-12-2024"
    When envía la solicitud POST al endpoint "/api/v1/meetings"
    Then la respuesta será 400 Bad Request indicando formato inválido de fecha

  Scenario: Crear reunión con hora inválida
    Given que el usuario prepara una solicitud POST con hora inválida "25:00"
    When envía la solicitud POST al endpoint "/api/v1/meetings"
    Then la respuesta será 400 Bad Request indicando formato inválido de hora

  Scenario: Obtener reunión con acceso válido por código único
    Given que existe una reunión registrada con el código de acceso "123e4567-e89b-12d3-a456-426614174000"
    When un usuario envía una solicitud GET al endpoint "/api/v1/meetings/access/123e4567-e89b-12d3-a456-426614174000"
    Then la respuesta será 200 OK con la reunión correspondiente
