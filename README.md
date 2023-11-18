Instalar Python

Criar ambiente virtual python

```
py -m venv venv
```

Ativar ambiente virtual

```
./venv/Scripts/activate
```

Instalar o requisitos

```
pip install -r requirements.txt
```

Pugins:
- Python
- Pylance
- Robot Framework Language Server

Variáveis de ambiente:

- Variáveis como navegador e url do sistema devem ser inseridas no arquivo .env
- chaves de acesso (api keys) também devem ser informadas dentro desse arquivo

Boas práticas:

- **adicionar, na primeira linha de todos os srquivos, Language: ptbr**
- o nome dos arquivos do projeto devem usar o padrão snake case (palavras separadas por \_ )
- variáveis sempre em caixa alta
- padrão para a nomenclatura de componentes (variaveis): ex: NOME_PAGE.CPF_INPUT, NOME_PAGE.ENTAR_BUTTON (sempre adicionar o nome da página como prefixo seguido de ponto)
  - usar o nome da página como primeiro elemento ex: PAGINA ou NOME_PAGINA (em caso de nome composto)
  - nome do elemento ex: PAGINA.NOME_ELEMENTO ou NOME_PAGINA.NOME_ELEMENTO
  - tipo do elemento ex: PAGINA.NOME_ELEMENTO.TIPO ou PAGINA.NOME_ELEMENTO.TIPO_ELEMENTO
  - tipos de elementos:
    - INPUT -> qualquer campo texto
    - BUTTON -> qualquer botão da página
    - SELECT -> lista de seleção (dropdown)
    - RADIO -> radio buttons
    - CHECKBOX -> checkbox
    - LINK -> links
    - LABEL -> texto da tela sem nenhum tipo de interação ou título de campos
    - TOAST -> toast
- usar encapsulamento das variáveis dentro da page
- todo teste deve começar com a tag **[Inicialização]**
- todo teste deve ser finalizado com a tag **[Finalização]**
- todo teste deve conter a chave do zepher na tag **[Tags]**

Estrutura:

- commons: variáveis globais
- pages: variáveis dos elementos da página
- steps: ações efetuadas em cada etapa (keywords)
- tests: descrição dos testes usando o padrão gherkin
- services: quando houver testes de serviços
- e2e: testes end to end
- hooks: arquivos que devem ser usados em todos os casos de teste
- resources: pasta de recursos
- json: arquivos json para requisições
