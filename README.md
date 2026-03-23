# 🐾 Sistema de Gestão de Cuidados Caninos (Controle Pessoal)

Este projeto nasceu de uma necessidade real: gerenciar o histórico de saúde e cronograma de vacinação dos meus próprios cães. Com um número elevado de animais, o controle manual por agendas tornou-se complexo, e este banco de dados em MySQL foi a solução desenvolvida para garantir que nenhum cuidado seja esquecido.

## 🎯 Objetivo do Projeto
Aplicar conhecimentos de modelagem relacional e SQL para organizar dados de:
* Cadastro individual de animais domésticos.
* Histórico completo de vacinação e vermifugação.
* Catálogo de fabricantes e medicamentos utilizados.
* Registro de atendimentos e consultas veterinárias.

## 🛠️ Tecnologias e Ferramentas
* **Modelagem de Dados (Conceitual):** BRModelo (utilizado para o desenho das Entidades e Relacionamentos).
* **Banco de Dados (Lógico e Físico):** MySQL.
* **Interface de Gerenciamento:** MySQL Workbench.
* **Linguagem:** SQL (DDL para estrutura e DML para manipulação de dados).
  
## 📊 Estrutura do Banco
O banco de dados é composto por 8 tabelas integradas:
1. `animais`: Identificação de cada cão.
2. `veterinario`: Registro dos profissionais que realizam os atendimentos.
3. `atendimento_veterinario`: Prontuário das consultas realizadas.
4. `vacinas` & `vacinacao`: Catálogo de tipos de vacinas e registro de aplicações.
5. `vermifugo` & `vermifugacao`: Controle de marcas e datas de desverminação.
6. `fabricante`: Gestão dos laboratórios dos medicamentos utilizados.

## 🔍 Queries de Uso Diário (Exemplos)

Para facilitar minha gestão, utilizo consultas como esta para verificar quais cães tomaram vacinas há mais tempo:

```sql
SELECT 
    a.nome AS Nome_do_Cão, 
    v.nome_vacina AS Vacina, 
    vac.data_aplicacao AS Data_da_Dose
FROM animais a
JOIN vacinacao vac ON a.id_animal = vac.id_animal
JOIN vacinas v ON vac.id_vacina = v.id_vacina
ORDER BY vac.data_aplicacao ASC;
