# UriScrapping



**Um script capaz de pegar qualquer questão do Site Uri Online Judge, e com isso pode jogar automaticamente e aleatoriamente ou até não aleatório no terminal!**


# Equipe:
  [Gilberto Magno](https://github.com/MagnoCarta)
  
  [Leonardo Gomes](https://github.com/leonardo252)


# Como Instalar Esse Script em sua maquina

- Passo 1: Abra o seu Terminal no Diretório Desktop(Podes alcançar o Diretorio utilizando o comando "**cd Desktop**")




- Passo 2: digite o comando "**git clone https://github.com/MagnoCarta/UriScrapping.git**"




- Passo 3: Após isso Abra o projeto xcode na pasta UriScrapping cujo nome é "**ArgumentUri.xcodeproj**"




- Passo 4: Build o projeto, e logo após isto, vá para products , clique no exec ArgumentUri e na parte Esquerda Copie o **Full path do Executavel**, a partir de agora irei nomear esse Full path de somente **_Path_**
OBS IMPORTANTE:
Além desse **_Path_** , também teremos um similante a ele, a dentro desse **_Path_**, substitua **ArgumentUri** por **oi.txt**, esse novo Path se chamará de **_Path2_**




- Passo 5: Abra novamente o Terminal de sua Maquina e digite o seguinte comando "**nano .zshrc**"




- Passo 6: Dentro desse editor nano digite o Seguinte:




```
alias at ="touch Path2"
alias dat ="rm Path2"
alias uri="clear && Path"
if [ -e Path2]
then  
    uri      
    alias switch ="dat"         
else  
    alias switch ="at"      
fi
```





- Passo 7: Salve e Saia do nano com **cltr x** e logo depois **enter**




- Passo 8: Saia e Volte ao Terminal




- Passo 9: Caso tenha Aparecido uma questão no Terminal , dê o comando "**uri -h**" ou "**uri --help**" para conferir os comandos e se está tudo bem
