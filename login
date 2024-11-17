<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            box-sizing: border-box;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            font-size: 14px;
            margin-bottom: 5px;
            display: block;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
        }
        input[type="submit"], input[type="button"] {
            width: 48%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        input[type="button"] {
            background-color: #f44336;
            color: white;
        }
        input[type="button"]:hover {
            background-color: #d32f2f;
        }
        .error-message {
            color: red;
            font-size: 12px;
            text-align: center;
        }
        .register-link {
            text-align: center;
            margin-top: 15px;
        }
        .register-link a {
            color: #4CAF50;
            text-decoration: none;
            font-size: 16px;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        
        <form id="loginForm">
            <label for="email">E-mail:</label>
            <input type="text" id="email" name="email" required>

            <label for="senha">Senha:</label>
            <input type="password" id="senha" name="senha" required>

            <div class="button-container">
                <input type="submit" value="Entrar">
                <input type="button" value="Limpar" onclick="limparCampos()">
            </div>
        </form>

        <div id="errorMessages" class="error-message"></div>

        <!-- Link para a página de cadastro -->
        <div class="register-link">
            <p>Não tem uma conta? <a href="cadastro.jsp">Cadastre-se aqui</a></p>
        </div>
    </div>

    <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            event.preventDefault(); // Impede o envio do formulário

            let errorMessages = "";
            const email = document.getElementById("email").value;
            const senha = document.getElementById("senha").value;

            // Validações simples
            if (!email) {
                errorMessages += "O campo E-mail é obrigatório.<br>";
            }
            if (!senha) {
                errorMessages += "O campo Senha é obrigatório.<br>";
            }

            if (errorMessages) {
                document.getElementById("errorMessages").innerHTML = errorMessages;
            } else {
                // Aqui você pode adicionar a lógica para verificar credenciais no banco de dados ou API

                // Se o login for bem-sucedido, redireciona para a lista de itens
                window.location.href = "listagem.jsp"; // Redireciona para a página de lista de itens
            }
        });

        // Função para limpar os campos do formulário
        function limparCampos() {
            document.getElementById("loginForm").reset(); // Limpa todos os campos
            document.getElementById("errorMessages").innerHTML = ""; // Limpa as mensagens de erro
        }
    </script>
</body>
</html>
