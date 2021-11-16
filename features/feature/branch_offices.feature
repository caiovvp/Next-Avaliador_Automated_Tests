Feature: Add, edit and delete branches of business that were created

  Background: 
    Given user is logged in <Next Avaliador> on <Connect Group 12.367.969/0001-84>
    And go to Branches Page: <http://192.168.201.15:86/unidades>

    Scenario: Create branch without selecting business
      When click on <cadastrar-btn>
      And type cadastrar-nome: <Filial de Rondonópolis>
      And click on <cadastrar-button>
      Then show message <Selecione uma unidade> on <toast-message>

    Scenario: Create test branch for Connect Group
      When click on <cadastrar-btn>
      And choose <Connect Group> from <cadastrar-empresa>
      And type cadastrar-nome: <Filial de Rondonópolis>
      And click on <cadastrar-button>
      Then show message <Unidade cadastrada com sucesso> on <toast-message>

    Scenario: Edit test branch
      When find <Filial de Rondonópolis> [type: <class>, name: <editar-btn>] in <table> (FOR LISTS)
      And choose <Connect Group> from <editar-empresa>
      And clear and type <editar-nome>: <Filial de Rondonópolis Editada>
      And click on <editar-button>
      Then show message <Unidade editada com sucesso> on <toast-message>

    Scenario: Delete test branch
      When find <Filial de Rondonópolis Editada> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      Then show message <Unidade excluida com sucesso> on <toast-message>