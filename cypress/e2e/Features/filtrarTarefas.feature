Feature: Filtrar tarefas

    Scenario: Filtrar para visualizar tarefas pendentes

        Given que o usuário tem tarefas pendentes e concluídas na lista
        When o usuário clicar na opção "Ativas" para filtrar as tarefas
        Then apenas as tarefas pendentes devem ser exibidas

    Scenario: Filtrar para visualizar tarefas concluídas

        Given que o usuário tem tarefas pendentes e concluídas na lista
        When o usuário clicar na opção "Concluídas" para filtrar as tarefas
        Then apenas as tarefas concluídas devem ser exibidas

    Scenario: Exibir todas as tarefas

        Given que o usuário está filtrando as tarefas
        When o usuário clicar na opção "Todas"
        Then todas as tarefas, tanto pendentes quanto concluídas, devem ser exibidas