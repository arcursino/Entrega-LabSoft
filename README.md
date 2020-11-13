# Entregas

Repositório oficial para as entregas de trabalhos da disciplina Laboratório de Engenharia de Software.


Professor da Disciplina - Fabrício Galende


## Guia das Entregas:
* primeira entrega - Aplicação web simples com Java
* segunda entrega  - Protótipo navegável com inserção de dados



## Recomendações para o uso:

**Conectar ao banco e executar o script para criar a base de dados** 
- CREATE DATABASE sistema;

**Conectar ao banco e executar o script para criar o usuário e dar acesso ao banco**

- mysql > CREATE USER 'servlet' IDENTIFIED BY 'servlet';
- mysql > GRANT ALL PRIVILEGES ON *.* TO 'servlet' IDENTIFIED BY 'servlet' WITH GRANT OPTION;
- mysql > SELECT User, Host FROM mysql.user;
- flush privileges;

iniciar > CMD > Entrega-LabSoft enter

```
gradle build
gradle appRun

```

Após rodar o appRun, colocar o seguinte endereço no Browser:
http://localhost:8080/entregas/home


#### O vídeo com um exemplo do build realizado com o gradle da Primeira Entrega, pode ser visto no link do youtube: https://youtu.be/fRpAgMRXtmI

#### O vídeo com um exemplo do build realizado com o gradle da Segunda Entrega, pode ser visto no link do youtube: https://youtu.be/BgtZi8suv38
