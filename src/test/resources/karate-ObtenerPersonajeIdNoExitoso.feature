@Prueba
Feature: Prueba para obtener personaje por ID no exitoso

  Background:
    * def base_url = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    * configure ssl = true

  @id:3 @ObtenerPersonajePorIdNoExitoso
  Scenario: T-API-BTFAC-123-CA03- Obtener Personaje por ID no existente
    Given url base_url + '/99999'
    When method GET
    Then status 404
    And print response