var agora = new Date()
var diaSem = agora.getDay()// pega o dia da semana do sistema 

switch(diaSem){
    case 0:
        console.log('Hoje é Domingo!')
    break

    case 1:
        console.log('Hoje é Segunda!')
    break

    case 2:
        console.log('Hoje é Terça!')
    break

    case 3:
        console.log('Hoje é Quarta!')
    break

    case 4:
        console.log('Hoje é Quinta!')
    break

    case 5:
        console.log('Hoje é Sexta!')
    break

    case 6:
        console.log('Hoje é Sabádo!')
    break 

    default:
    console.log('ERRO! Dia inválido')
    break
}


/* dias da semana em js:
DOM = 0
SEG = 1
TER = 2
QUA = 3
QUI = 4
SEX = 5
SAB =6
*/