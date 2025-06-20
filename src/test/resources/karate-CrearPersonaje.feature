@Prueba
Feature: Prueba para obtener personaje por ID no exitoso

  Background:
    * def base_url = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    * configure ssl = true

@id:5 @CrearPersonajeIronMan
Scenario: T-API-BTFAC-123-CA05- Crear personaje Iron Man1
  Given url base_url
  And request
    """
    {
      "name": "Chica SuperPoderosa",
      "alterego": "Susan",
      "description": "Genius billionaire",
      "powers": ["Armor", "Flight"]
    }
    """
  When method POST
  Then status 201
  And match response.name == "Chica SuperPoderosa"
  And match response.alterego == "TSusan"
  And match response.description == "Genius billionaire"
  And match response.powers contains "Armor"
  And match response.powers contains "Flight"
  And print response