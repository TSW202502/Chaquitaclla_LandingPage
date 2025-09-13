Feature: Barra de navegación (US04)

  Como visitante de la landing page
  Quiero poder usar la barra de navegación de la landing page
  Para desplazarme por esta.

  @UI
  Scenario: Render de la barra de navegación
    Given que estoy en la landing page
    Then debo ver el logo de Chaquitaclla
    And debo ver enlaces a "#home", "#about-product", "#subscriptions", "#reviews", "#contact-us", "#about-us"

  @Navegacion
  Scenario: Navegación a la sección de producto
    When hago clic en "About the Product"
    Then la vista debe desplazarse a "#about-product"
