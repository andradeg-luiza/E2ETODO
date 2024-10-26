Feature: Persistência de dados

    Scenario: Verificar a persistência de tarefas após recarregar a página

        Given que o usuário adicionou várias tarefas e algumas foram marcadas como concluídas
        When o usuário recarregar a página
        Then todas as tarefas devem ser exibidas como estavam antes do recarregamento