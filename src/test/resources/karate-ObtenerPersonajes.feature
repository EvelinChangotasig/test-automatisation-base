@Prueba
Feature: Prueba para Obtener Personajes
 
  Background:
    * def base_url = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
	* configure ssl = true

 
    @id:1 @ObtenerPersonajes
    Scenario: T-API-BTFAC-123-CA01- Obtener Todos
        Given url base_url 
        When method GET
        Then status 200
        And print response