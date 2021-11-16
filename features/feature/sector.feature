Feature: Add, edit and delete new sectors to the business

  Scenario: Log in on Connect Group
    Given user is logged in <Next Avaliador> on <Connect Group 12.367.969/0001-84>

  Scenario: Go to Business Page
    When click on </empresas>
    Then create a test business

  Scenario: Log out of Connect Group
    Given go to Login Page: <http://192.168.201.15:86/login>

  Scenario: Create test business
    Given user is logged in <Next Avaliador> on <Empresa Teste 69.593.190/0001-02>

  Scenario: Create test branch for test business
    When go to Branch Page: <http://192.168.201.15:86/unidades>
    Then create a test branch

  Scenario: Try to add new sector without selecting any branch
    When click on </setores>
    And click on <cadastrar-btn>
    And type cadastrar-nome: <Setor Teste>
    And click on <cadastrar-button>
    Then show message <Setor editado com sucesso> on <toast-message>

  Scenario: Add test sector to the test branch
    When choose <Filial Teste> from <cadastrar-unidade>
    And clear and type <cadastrar-nome>: <Setor Teste>
    And click on <cadastrar-button>
    Then show message <Setor editado com sucesso> on <toast-message>

  Scenario: Edit test sector
    When click on </setores>
    And find <Setor Teste> [type: <class>, name: <editar-btn>] in <table> (FOR LISTS)
    And choose <Filial Teste> from <editar-unidade>
    And clear and type <editar-nome>: <Setor Teste Editado>
    And click on <editar-button>
    Then show message <Setor editado com sucesso> on <toast-message>

  Scenario: Delete test sector
    When click on </setores>
    And find <Setor Teste Editado> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
    Then show message <Setor excluido com sucesso> on <toast-message>
