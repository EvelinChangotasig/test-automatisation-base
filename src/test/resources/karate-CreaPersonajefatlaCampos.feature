@id:8 @CrearPersonajeCamposFaltantes
 Background:
    * def base_url = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
	* configure ssl = true
    
Scenario: T-API-BTFAC-123-CA08- Crear personaje con campos requeridos faltantes
  Given url base_url
  And request
    """
    {
      "name": "Eve"
      // Faltan los campos "alterego", "description" y "powers"
    }
    """
  When method POST
  Then status 400
  And print response