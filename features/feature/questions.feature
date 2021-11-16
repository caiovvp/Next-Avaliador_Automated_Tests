Feature: Add, edit and delete questions for that specific business

  Background:
    Given user is logged in <Next Avaliador> on <Connect Group 12.367.969/0001-84>
    And click on </perguntas>

    Scenario: Add new binary question
      When click on <cadastrar-btn>
      And choose <Binário> from <cadastrar-tipo-pergunta>
      And type cadastrar-binario-titulo: <Binário Teste>
      And type cadastrar-binario-subtitulo: <Subtítulo Teste>
      And type cadastrar-binario-texto: <Pergunta Binária>
      And choose <Sim> from <cadastrar-binario-obrigatoria>
      And choose <Ativo> from <cadastrar-binario-status>
      And choose <Sim> from <cadastrar-binario-valorpadrao>
      And click on <cadastrar-button>
      Then show message <Pergunta cadastrada com sucesso> on <toast-message>

    Scenario: Add new simple question
      When click on <cadastrar-btn>
      And choose <Simples> from <cadastrar-tipo-pergunta>
      And type cadastrar-simples-titulo: <Simples Teste>
      And type cadastrar-simples-subtitulo: <Subtítulo Teste>
      And type cadastrar-simples-texto: <Pergunta Simples>
      And choose <Sim> from <cadastrar-simples-obrigatoria>
      And choose <Ativo> from <cadastrar-simples-status>
      And choose <Ativo> from <cadastrar-simples-tipo>
      And type cadastrar-simples-texto-exemplo: <Resposta Exemplo>
      And click on <cadastrar-button>
      Then show message <Pergunta cadastrada com sucesso> on <toast-message>

    Scenario: Add new dropdown question
      When click on <cadastrar-btn>
      And choose <Dropdown> from <cadastrar-tipo-pergunta>
      And type cadastrar-dropdown-titulo: <Dropdown Teste>
      And type cadastrar-dropdown-subtitulo: <Subtítulo Teste>
      And type cadastrar-dropdown-texto: <Pergunta Dropdown>
      And choose <Sim> from <cadastrar-dropdown-obrigatoria>
      And choose <Ativo> from <cadastrar-dropdown-status>
      And click on <cadastrar-button>
      Then show message <Pergunta cadastrada com sucesso> on <toast-message>

    Scenario: Add new smile question
      When click on <cadastrar-btn>
      And choose <Smiles> from <cadastrar-tipo-pergunta>
      And type cadastrar-smile-titulo: <Smile Teste>
      And type cadastrar-smile-subtitulo: <Subtítulo Teste>
      And type cadastrar-smile-texto: <Pergunta Smile>
      And choose <Sim> from <cadastrar-smile-obrigatoria>
      And choose <Ativo> from <cadastrar-smile-status>
      And type cadastrar-smile1: <Ótimo>
      And type cadastrar-smile2: <Bom>
      And type cadastrar-smile3: <Regular>
      And type cadastrar-smile4: <Ruim>
      And type cadastrar-smile5: <Péssimo>
      And click on <cadastrar-button>
      Then show message <Pergunta cadastrada com sucesso> on <toast-message>

    Scenario: Edit the binary question
      When find <Binário Teste> [type: <class>, name: <editar-btn>] in <table> (FOR LISTS)
      ## Do the changes needed
      And click on <editar-button>
      Then show message <Pergunta cadastrada com sucesso> on <toast-message>

    Scenario: Delete all questions
      When find <Binário Teste> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      Then show message <Pergunta excluida com sucesso> on <toast-message>
      When find <Simples Teste> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      Then show message <Pergunta excluida com sucesso> on <toast-message>
      When find <Dropdown Teste> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      Then show message <Pergunta excluida com sucesso> on <toast-message>
      When find <Smile Teste> [type: <class>, name: <excluir-btn>] in <table> (FOR LISTS)
      Then show message <Pergunta excluida com sucesso> on <toast-message>

