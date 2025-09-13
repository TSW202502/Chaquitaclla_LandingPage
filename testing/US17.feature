Feature: Navegación por la landing page (US17)

  Como visitante
  Quiero navegar por la landing page de Chaquitaclla
  Para informarme mejor sobre el producto.

  @UI
  Scenario: Acceso a todas las secciones desde el navbar
    Given que estoy en la landing page
    When hago clic en cada enlace de la barra
    Then debo desplazarme correctamente a cada sección existente

  Scenario Outline: Navegación específica por secciones
    Given que estoy en la landing page
    When hago clic en "<label>"
    Then la vista debe desplazarse a "<anchor>"
  Examples:
    | label              | anchor         |
    | Home               | #home          |
    | About the Product  | #about-product |
    | Subscriptions      | #subscriptions |
    | Reviews            | #reviews       |
    | Contact Us         | #contact-us    |
    | About Us           | #about-us      |
