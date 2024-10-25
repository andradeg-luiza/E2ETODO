## Documentação de testes automatizados para o site **todomvc.com** 

### Esta documentação contém: 

* Estimativas justificadas; 

* História de usuário; 

* Critérios de aceitação; 

* Definição de pronto; 

* Cenários de testes. 

--- 

## Estimativas 

#### **História de usuário** 

**Estimativa**: 1 horas 

**Justificativa**: Escrever uma história do usuário é uma tarefa relativamente rápida, embora a história deva ser clara e concisa, refletindo a necessidade do usuário em gerenciar tarefas de forma eficiente. 

 

#### **Critérios de aceitação** 

**Estimativa**: 2 horas 

**Justificativa**: Criar critérios de aceitação requer um entendimento profundo das funcionalidades da aplicação. Devemos identificar as condições que devem ser atendidas para que uma funcionalidade seja considerada completa, e essa tarefa pode incluir revisões para garantir que os critérios estejam alinhados com a visão do produto. 

 

#### **Cenários de testes** 

**Estimativa**: 4 horas 

**Justificativa**: Elaborar casos de teste envolve detalhar os diferentes cenários que devem ser testados para cada funcionalidade. Isso inclui não apenas os casos positivos, mas também os negativos e isso pode levar tempo para garantir a cobertura completa.   

 

#### **Teste exploratório** 

**Estimativa**: 2 horas 

**Justificativa**: Esse tempo permite uma análise abrangente e cuidadosa da aplicação, garantindo uma boa cobertura de testes. Também permite uma familiarização com a aplicação e a execução de diversos cenários. 

 

#### **Testes automatizados com Cypress e JavaScript** 

**Estimativa**: 10 horas 

**Justificativa**: A implementação de testes automatizados com Cypress e JavaScript envolve não apenas escrever os testes, mas também configurar o ambiente e garantir que todos os testes sejam executados corretamente. Isso inclui a codificação de testes, revisões e ajustes.  

 

--- 

## Gerenciamento de tarefas na aplicação TODOMVC 

**Como** usuário que preciso organizar minhas tarefas diárias 

**Quero** utilizar uma aplicação de gerenciamento de tarefas 

**Para** que eu possa adicionar, visualizar, editar e remover tarefas de forma prática e rápida 

 

--- 

## **Critérios de aceitação** 

1. **Adicionar tarefas**: 

* O usuário pode inserir uma nova tarefa digitando no campo de texto e pressionando "Enter" 

* A nova tarefa é exibida na lista de tarefas, e o campo de texto é limpo automaticamente 

2. **Marcar tarefas como “concluídas”**: 

* O usuário pode marcar uma tarefa como concluída clicando em uma caixa de seleção ao lado de cada tarefa   

* Quando marcada como concluída, a tarefa aparece com um texto riscado

3. **Visualizar tarefas “pendentes” e “concluídas”** 

* O usuário pode visualizar todas as tarefas   

* O usuário pode filtrar a lista de tarefas para exibir apenas as pendentes, as concluídas ou todas   

4. **Editar tarefas** 

* O usuário pode editar uma tarefa clicando duas vezes sobre o texto da tarefa 

* O campo de texto para edição aparece, e o usuário pode modificar o conteúdo da tarefa   

* Após a edição, o usuário pode pressionar "Enter" para salvar as alterações   

5. **Excluir tarefas** 

* O usuário pode excluir uma tarefa clicando na área dedicada à exclusão ao lado da tarefa 

* A tarefa é removida permanentemente da lista 

6. **Contador de tarefas pendentes** 

* O usuário pode ver o número de tarefas que ainda não foram concluídas em um contador localizado na parte inferior da aplicação   

7. **Remover tarefas e “concluídas”** 

* O usuário pode clicar em um botão para remover todas as tarefas que foram marcadas como concluídas    

8. **Salvar estado** 

* A aplicação deve manter as tarefas salvas mesmo após recarregar a página, utilizando armazenamento local (localStorage) 

 

--- 
## **Definição de pronto (DoD)**

1. A interface do usuário está intuitiva e responsiva, permitindo que o usuário realize todas as ações de maneira fluida;
2. A funcionalidade de CRUD (Create, Read, Update, Delete) está funcionando conforme descrito;
3. Testes automatizados foram implementados para garantir a integridade das funcionalidades;
4. O estado das tarefas é salvo entre sessões, utilizando o armazenamento local.

---
## **Cenários de testes**:

**1. Adicionar tarefas**:

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Adicionar uma nova tarefa

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário está na página inicial da aplicação

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário digitar uma nova tarefa no campo de entrada e pressionar "Enter" 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** a nova tarefa deve aparecer na lista de tarefas

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**E** o campo de entrada deve ser limpo   


&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Adicionar tarefa em branco   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário está na página inicial da aplicação  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário pressionar "Enter" sem digitar nada no campo de entrada   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** nenhuma nova tarefa deve ser adicionada à lista 

**2. Marcar tarefas como "concluídas”**:

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Marcar uma tarefa como concluída   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário tem uma tarefa pendente na lista   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário clicar na caixa de seleção ao lado da tarefa   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** a tarefa deve ser marcada como concluída   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**E** o texto da tarefa deve ser exibido com uma linha riscada

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Desmarcar uma tarefa concluída   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário tem uma tarefa marcada como concluída   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário clicar na caixa de seleção novamente   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** a tarefa deve ser desmarcada   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**E** o texto riscado deve ser removido

**3. Filtrar tarefas**:

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Filtrar para visualizar tarefas pendentes   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário tem tarefas pendentes e concluídas na lista   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário clicar na opção "Ativas" para filtrar as tarefas   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** apenas as tarefas pendentes devem ser exibidas   

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Filtrar para visualizar tarefas concluídas   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário tem tarefas pendentes e concluídas na lista   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário clicar na opção "Concluídas" para filtrar as tarefas   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** apenas as tarefas concluídas devem ser exibidas   

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Exibir todas as tarefas   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário está filtrando as tarefas   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário clicar na opção "Todas"   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** todas as tarefas, tanto pendentes quanto concluídas, devem ser exibidas   

**4. Editar tarefas**:

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Editar uma tarefa ativa   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário tem uma tarefa ativa na lista   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário clicar duas vezes no texto da tarefa   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** o campo de entrada deve aparecer para edição   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**E** o usuário deve poder modificar o texto da tarefa 

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Editar uma tarefa concluída   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário tem uma tarefa concluída na lista   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário clicar duas vezes no texto da tarefa   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** o campo de entrada deve aparecer para edição   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**E** o usuário deve poder modificar o texto da tarefa 

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Salvar a edição da tarefa   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário está editando uma tarefa   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário pressionar "Enter" após fazer alterações   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** a tarefa deve ser atualizada com o novo texto   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**E** o campo de entrada deve ser ocultado.   

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Cancelar edição de uma tarefa   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário está editando uma tarefa   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário pressionar "Esc"   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** a edição deve ser cancelada   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**E** o texto original da tarefa deve ser mantido


**5. Excluir tarefas**:

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Excluir uma tarefa   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário tem uma tarefa na lista   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário clicar no ícone de lixeira ao lado da tarefa   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** a tarefa deve ser removida permanentemente da lista   

**6. Remover tarefas concluídas**:

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Remover todas as tarefas concluídas   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário tem tarefas concluídas na lista,  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário clicar no botão "Limpar Concluídas"   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** todas as tarefas marcadas como concluídas devem ser removidas 

**7. Contador de tarefas pendentes**:

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Ver o número de tarefas pendentes   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário tem uma lista de tarefas   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário visualiza a lista  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** o contador de tarefas pendentes deve mostrar o número correto de tarefas não concluídas 

**8. Persistência de dados**:

&nbsp;&nbsp;&nbsp;&nbsp;**Cenário**: Verificar a persistência de tarefas após recarregar a página   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Dado** que o usuário adicionou várias tarefas e algumas foram marcadas como concluídas,   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Quando** o usuário recarregar a página,   

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Então** todas as tarefas devem ser exibidas como estavam antes do recarregamento.  