Feature: Excluir tarefas

    Scenario: Excluir uma tarefa

        Given que o usuário tem uma tarefa na lista
        When o usuário clicar no ícone de exclusão ao lado da tarefa
        Then a tarefa deve ser removida permanentemente da lista