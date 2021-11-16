Feature: Add, edit and delete new business to the Avaliador

  Background: : User log in on Connect Group
    Given user is logged in <Next Avaliador> on <Connect Group 12.367.969/0001-84>

    Scenario: Create TEST business
      When click on </empresas>
      And click on <cadastrar-btn>
      And type cadastrar-nome: <Empresa Teste>
      And type cadastrar-cnpj: <69593190000102>
      And type cadastrar-telefone: <65111111111>
      And type cadastrar-email: <email_teste@gmail.com>
      And type cadastrar-contato: <Tester>
      And choose <Ativo> from <inserir-status>
      And click on <cadastrar-button>
      Then show message <Empresa cadastrada com sucesso> on <toast-message>

    Scenario: Create business using existent cnpj
      When click on <cadastrar-btn>
      And fill new business form
      And clear and type <cadastrar-cnpj>: <69593190000102>
      And click on <cadastrar-button>
      Then show message <Já existe uma empresa cadastrada com esse cnpj> on <toast-message>

    Scenario: Create business using existent name
      When click on <cadastrar-btn>
      And fill new business form
      And clear and type <cadastrar-cnpj>: <69593190000102>
      And click on <cadastrar-button>
      Then show message <Já existe uma empresa cadastrada com esse nome> on <toast-message>

    Scenario: Edit TEST business and set existing name
      When find <Empresa Teste> [type: <class>, name: <editar-btn>] in <table> (FOR LISTS)
      And clear and type <editar-nome>: <Empresa Teste Novo>
      And clear and type <editar-telefone>: <65999999999>
      And click on <editar-button>
      Then show message <Empresa editada com sucesso> on <toast-message>

    Scenario: Delete TEST business
      When find <Empresa Teste Novo> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      Then show message <Empresa excluida com sucesso> on <toast-message>




