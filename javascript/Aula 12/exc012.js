
var agora = new Date()
var hora = agora.getHours() /* usamos esses comandos para pegar a hora do sistema */

console.log(`Agora são exatamente ${hora} horas.`)

if(hora < 12){
    console.log(`Bom dia!`)
}
else if(hora < 18){
    console.log(`Boa tarde!`)
}
else{
    console.log(`Boa noite!`)
}
