# ⚛️ React Básico

## 📌 Visão Geral
Este documento apresenta um resumo claro e organizado sobre os principais conceitos do **React**, uma biblioteca JavaScript criada pelo Facebook para construção de interfaces de usuário de forma eficiente, modular e escalável.

React é utilizado no **Front-End**, mas **não** é uma linguagem de programação — ele usa **JavaScript** ou **TypeScript**.

---

## 🔑 Conteúdo Abordado

- O que é React
- Criação de projetos com Vite  
- Componentes (classe e funcionais)  
- Estrutura de pastas  
- JSX  
- Props  
- Estado (state)  
- Exemplo prático  
- Rotas com react-router-dom  

---

## ⚛️ O que é React?

React é uma **biblioteca JavaScript** desenvolvida pelo Facebook, usada para criar **interfaces de usuário (UI)** de forma eficiente e escalável.

Ele segue um padrão baseado em **componentes**, que são partes independentes e reutilizáveis da aplicação.

> React não é uma linguagem. Ele usa JavaScript ou TypeScript.

---

## 🛠️ Criando um Projeto React

Com Vite (rápido e moderno):

```bash
npm create vite@latest my-react-app -- --template react
```

## 📁 Estrutura de Pastas do Projeto

- **node_modules/**  
  Armazena as dependências instaladas.

- **public/**  
  Arquivos públicos acessíveis diretamente.

- **src/**  
  Código principal da aplicação.
  
  - **assets/** – imagens e recursos estáticos  
  - **components/** – componentes reutilizáveis

- **index.html**  
  Contém o `<div id="root">`, onde o React injeta a aplicação.

## 🧩 Componentes no React

Componentes representam partes da interface e podem ser reutilizados.

---

### 🔹 Componente de Classe

Forma antiga usando classes.  
Pouco utilizado atualmente:

```jsx
class MeuComponente extends React.Component {
  render() {
    return <h1>Olá</h1>;
  }
}
```

### 🔹 Componente Funcional (moderno)
Uma função que retorna JSX:
```jsx
    function App() {
    return <h1>Hello World</h1>;
    }

    export default App;
```

## 🧾 JSX: HTML dentro do JavaScript

JSX é a sintaxe que mistura **HTML + JavaScript**, tornando o código mais intuitivo:

```jsx
const nome = "Ana";
return <h1>Bem-vinda, {nome}</h1>;
```

## 🧱 Props

As **props** (propriedades) são valores enviados de um componente “pai” para um componente “filho”.  
Elas permitem **personalizar** e **reutilizar** componentes mudando apenas os dados enviados.

Podem ser:

- **strings**
- **números**
- **arrays**
- **objetos**
- **funções**
- **outros componentes**

## 🔄 Estado (State)

O **estado** é como a “memória interna” de um componente.  
Sempre que o estado muda, o React **re-renderiza** automaticamente a interface.

O estado é criado usando o hook `useState`.

Exemplo simples de estado sendo atualizado enquanto o usuário digita:

```jsx
import { useState } from "react";

function App() {
  const [texto, setTexto] = useState("");

  return (
    <>
      <input 
        type="text" 
        onChange={(e) => setTexto(e.target.value)} 
        placeholder="Digite algo..."
      />
      <p>{texto}</p>
    </>
  );
}

export default App;
```

## 🎛️ Eventos no React

Eventos funcionam como no HTML, mas com camelCase:
```jsx
<button onClick={() => alert("Clicado!")}>
  Clique aqui
</button>
```


## 🚦 Rotas no React (react-router-dom)

Como React é uma **SPA (Single Page Application)**, precisamos da biblioteca react-router-dom para criar rotas.

Instalação:
```
npm install react-router-dom
```
<br>

Estrutura básica de rotas:
```jsx
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Sobre from "./pages/Sobre";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/sobre" element={<Sobre />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
```
<br>

Página simples:
```jsx
function Home() {
  return <h1>Página Inicial</h1>;
}

export default Home;
```

## 🌐 JSX + Componentes + Props + Estado: Exemplo Completo
```jsx
import { useState } from "react";

function Botao({ texto }) {
  return <button>{texto}</button>;
}

function App() {
  const [nome, setNome] = useState("");

  return (
    <>
      <input 
        type="text" 
        placeholder="Digite seu nome"
        onChange={(e) => setNome(e.target.value)}
      />

      <h2>Olá, {nome}</h2>

      <Botao texto="Enviar" />
    </>
  );
}

export default App;
```

---

📌 **© 2024 Ana Luisa Rodrigues**




