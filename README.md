React - TodoMVC
--------------

### [![Build Status](https://travis-ci.org/camillagds/react-todomvc.svg?branch=master)](https://travis-ci.org/camillagds/react-todomvc) Travis-CI 

##### Ambiente
* __OS:__ Linux
* __Distro:__ Ubuntu Trusty
* __Linguagem:__ Node.js
* __Versões:__ 5.11, 6.0, 6.1

##### Branches
* all

##### Variaveis
* __REPO__ = Repositório do GITHUB
* __SCALE__ = Quantidade de Aplicacões
* __HOST__ = Nome do Host

##### Processos
1. **Install** | Constrói a imagem do docker
2. **Install** | Instala as dependências
3. **Build** | Compila a aplicação
4. **Test** | Testa a Aplicação
5. **Build** | Executa o container da imagem do docker
6. **Test** | Testa o container
7. **Publish** | Publica a aplicação como Release no GitHub
8. **Deploy** | Instala a aplicação no Server
10. **Test** | Valida o deploy usando o Assertible

### [![Build Status](https://app.snap-ci.com/camillagds/react-todomvc/branch/master/build_image)](https://app.snap-ci.com/camillagds/react-todomvc/branch/master) Snap-CI

1. **Build** | Constrói a aplicação
2. **Test** | Testa a aplicação
3. **Deploy** | Instala a aplicação no Server de Produção
4. **Validation** | Valida o deploy usando o Assertible

### [![Service status](https://assertible.com/apis/24213304-c745-420f-8cc5-9bc4ea5013c9/status?api_token=Yfn9z5660h7i1B6I)](https://assertible.com/dashboard#/services/24213304-c745-420f-8cc5-9bc4ea5013c9) Assertible

O Assertible ajuda a evitar que bugs o tornem produtivo automatizando testes manuais, executando afirmações contra ambientes de teste e integrando alertas em sua cadeia de ferramentas atual.

### [![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy) Heroku

Heroku é uma aplicação cloud multi-linguagem que funciona como um PaaS. Ele cuida de toda a infra estrutura e configuração de servidores, bastando que você faça somente o deploy e a aplicação já esteja rodando. 

* __Travis:__ https://react-todomvc-lobinhaxd.herokuapp.com/#/
* __SNAP-CI:__ https:/react-todomvc-snap-lobinhaxd.herokuapp.com/

## Ambiente para Desenvolvedores
Abaixo esta os scripts para a instalação do docker para desenvolvimento.

#### Windows
https://github.com/camillagds/react-todomvc/blob/master/desenv-scripts/ms-desenv.ps1

__*Atenção:*__
* Rodar com nível administrativo
* [É necessário habilitar a virtualização no Hyper-V usando o PowerShell](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-venable-virtualization-in-hyper-v)

#### OS X
https://github.com/camillagds/react-todomvc/blob/master/desenv-scripts/osx-desenv.sh

__*Atenção:*__
Rodar com nível administrativo

#### Linux

__CentOS__ - https://github.com/camillagds/react-todomvc/blob/master/desenv-scripts/centos-desenv.sh
__Ubuntu__ - https://github.com/camillagds/react-todomvc/blob/master/desenv-scripts/ubuntu-desenv.sh

### Docker

Crie um arquivo `.env` com o conteudo:
```
REPO= <nome do repositorio>
HOST= <nome do host>
```
Exemplo:
```
REPO=camillagds/react-todomvc
HOST=react-todomvc.local
```
E rode os comandos abaixo:
`$ docker-compose config`
`$ docker-compose up -d nginx-proxy`
`$ docker-compose scale web=2`

-------
#### Fork

Developers these days are spoiled with choice when it comes to selecting an MV* framework for structuring and organizing their JavaScript web apps.

Backbone, Ember, AngularJS… the list of new and stable solutions continues to grow, but just how do you decide on which to use in a sea of so many options?

To help solve this problem, we created TodoMVC - a project which offers the same Todo application implemented using MV* concepts in most of the popular JavaScript MV* frameworks of today.

*Forked from* https://github.com/tastejs/todomvc/tree/gh-pages/examples/react
Licence: MIT

