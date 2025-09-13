Feature: Ver equipo de Chaquitaclla (US21)

  Como visitante de la landing page
  Quiero informarme sobre el equipo que creó Chaquitaclla
  Para evaluar su experiencia y la calidad del producto.

  @UI
  Scenario: Render de la sección equipo
    Given que estoy en la landing page
    When navego a "#about-us"
    Then debo ver los nombres "Paolo Guillen", "Ricardo Barrutia", "July Paico", "Fernando Quispe", "Fabiola Espinoza"
    And cada integrante debe tener una imagen y descripción

  @Accesibilidad
  Scenario: Validación de imágenes con alt
    Given que estoy en "#about-us"
    Then cada imagen del equipo debe tener atributo "alt" no vacío
