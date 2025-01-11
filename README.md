# Descrição do Projeto
Este repositório apresenta o *2º projeto* desenvolvido durante o programa de bolsas da *Compass.uol*. O objetivo foi criar um sistema relacional de banco de dados para gerenciar informações relacionadas a diaristas, casas e proprietários, além de fornecer recursos como agendamentos e feedbacks.

O sistema foi modelado utilizando diagramas de entidade-relacionamento e implementado com tabelas normalizadas para garantir a integridade e eficiência no gerenciamento de dados.

# Modelagem do Banco de Dados
O modelo inclui as seguintes tabelas e relações principais:

- Diarista:
  - Gerencia informações de diaristas, como CPF e nome.

- Casa:
  - Armazena dados das casas, incluindo endereço, tamanho e o CPF do proprietário associado.

- Proprietário:
  - Contém informações dos proprietários das casas, como CPF e nome.

- Agenda:
  - Permite o gerenciamento dos agendamentos de serviços entre diaristas e casas, com informações de data, preço e status de execução.

- Feedback:
  - O feedback serve para avaliar o serviço prestado e melhorar a qualidade do atendimento.

- Diarista_has_Casa:
  - Representa uma relação entre diaristas e casas, permitindo mapear quais diaristas já trabalharam em determinadas casas.

# Tecnologias Utilizadas
- Modelagem: MySQL Workbench
- Banco de Dados: MySQL
- Linguagens de Suporte: SQL para manipulação e consulta de dados.

# Como Usar
- Clone este repositório: git clone https://github.com/seu-usuario/seu-repositorio.git
- Importe o modelo para o MySQL Workbench ou outro sistema de banco de dados relacional de sua preferência.

