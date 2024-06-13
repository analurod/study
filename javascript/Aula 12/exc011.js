var idade = '66'

if(idade < 16){
    console.log('Você não pode votar!') // usamos console.log para escrever na tela, pois não estamos dentro do navegador
}
else if(idade < 18 || idade > 65) {
    console.log('Você tem voto opcional!')
}
else{
    console.log('Você é obrigado a votar!')
}