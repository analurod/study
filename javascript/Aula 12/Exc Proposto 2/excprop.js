function verifica(){
    console.log("Função verifica() chamada.")

    var ndata = new Date();
    var ano = ndata.getFullYear()

    var nasc = document.getElementById('data')
    var res = document.querySelector('div#res')

    if(nasc.value.length == 0 || nasc.value > ano){
        alert('ERRO! Verifique os dados e tente novamente!')
    }

    else{
        var fsex= document.getElementsByName('radsex')
        var idade = ano - Number(nasc.value)
        var gen = ''
        var img = document.createElement('img')
        img.setAttribute('id', 'foto')

        if(fsex[0].checked){
            gen = 'Mulher'

            if(idade >= 0 && idade <4){
                img.setAttribute('src', 'meninabb.png');
            }
            else if (idade < 12){
                img.setAttribute('src', 'meninakid.png');
            }
            else if(idade < 30){
                img.setAttribute('src', 'meninaado.png');
            }
            else if(idade < 55){
                img.setAttribute('src', 'mulher.png');
            }
            else{
                img.setAttribute('src', 'idosa.png');
            }
        }

        else if (fsex[1].checked){
            gen = 'Homem'

            if(idade >= 0 && idade <4){
                img.setAttribute('src', 'meninobb.png');
            }
            else if (idade < 12){
                img.setAttribute('src', 'meninokid.png');
            }
            else if(idade < 30){
                img.setAttribute('src', 'meninoado.png');
            }
            else if(idade < 55){
                img.setAttribute('src', 'homem.png');
            }
            else{
                img.setAttribute('src', 'idoso.png');
            }

            
        }

        res.innerHTML = `Detectado! ${gen} com ${idade} anos!`
        res.appendChild(img)
    }
}