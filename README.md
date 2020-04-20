# Ethereum DApps and API integration

Avaliação da disciplina Ethereum Dapps and API integrations no curso MBA Blockchain - FIAP

# Frontend para um token ERC20

Dado o token `FIAP token`, publicado na testnet Ropsten:
* endereço: `0xa4cedb7277baec50e0445d65bd84869e666fbb18`
* etherscan: [0xa4cedb7277baec50e0445d65bd84869e666fbb18](https://ropsten.etherscan.io/address/0xa4cedb7277baec50e0445d65bd84869e666fbb18)
* transação: [0xa976f5072b7d047a8f6a7e628a63b4b7a1370815d9bf1145e0253bc41b47d718](https://ropsten.etherscan.io/tx/0xa976f5072b7d047a8f6a7e628a63b4b7a1370815d9bf1145e0253bc41b47d718)
* [OneClickDapp](https://oneclickdapp.com/prague-demo/)
* código fonte verificado no Etherscan: [code](https://ropsten.etherscan.io/address/0xa4cedb7277baec50e0445d65bd84869e666fbb18#code)

> Interação através do EtherScan:
> 
> [leitura](https://ropsten.etherscan.io/address/0xa4cedb7277baec50e0445d65bd84869e666fbb18#readContract)
> 
> [escrita](https://ropsten.etherscan.io/address/0xa4cedb7277baec50e0445d65bd84869e666fbb18#writeContract)

Faça um frontend para interagir com este token.

O frontend pode ser baseado em qualquer um dos exemplos de frontend apresentados em aula, que se encontram neste link:

[dapp-register](https://github.com/solangegueiros/dapp-register)

O frontend deve ter:
1. name
2. symbol
3. decimals
4. totalSupply
5. balanceOf
6. transfer
7. transferFrom
8. approve
9. allowance
10. increaseAllowance
11. decreaseAllowance
12. mint

O frontend será avaliado pelos critérios:
- design (1,0 ponto)
- tratamento de erros (1,0 ponto)
- atende às 12 especificações listadas acima (6,0 pontos)

#### Tratamento de erros
Por tratamento de erros, será avaliado qual o retorno quando tentamos interagir de forma errada com o token. 

Exemplos:
- Transferir um valor maior do que o saldo em uma conta
- Inverter os parâmetros do approve
- Fazer um transferFrom de uma conta que não tem autorização

Será avaliado se, em situações como estas ou qualquer outra de erros dos usuários, são retornadas mensagens amigáveis para o usuário.

## Arquivo READ.me
(2,0 pontos)

Crie um arquivo READ.me contendo:
1. Nomes dos integrantes do grupo
2. Url para acessar o frontend do token
3. Instruções para compilar e executar o frontend localmente

## Entregas

Um repositório no github contendo:
1. O arquivo READ.me
2. Código fonte do frontend

Envie um arquivo texto na plataforma da Fiap com o link para o repositório no github
