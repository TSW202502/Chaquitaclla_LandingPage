Feature: Ver beneficios de Chaquitaclla (US20)

  Como visitante de la landing page
  Quiero poder ver los beneficios del producto Chaquitaclla
  Para tomar una decisión informada antes de comprar mi suscripción.

  @UI
  Scenario: Render de planes y beneficios
    Given que estoy en la landing page
    When navego a "#subscriptions"
    Then debo ver los planes "Basico", "Regular" y "Premium"
    And cada plan debe mostrar beneficios visibles

  @FlujoRegistro
  Scenario Outline: Redirección desde el botón de registro
    Given que estoy en la sección "#subscriptions"
    When hago clic en "Register" del plan "<plan>"
    Then debo ser dirigido a "src/ingreso/sign-up.html"
  Examples:
    | plan    |
    | Basico  |
    | Regular |
    | Premium |
