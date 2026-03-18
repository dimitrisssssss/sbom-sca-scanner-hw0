FROM nginx:1.22

RUN echo '<!DOCTYPE html>\
<html lang="el">\
<head>\
    <meta charset="UTF-8">\
    <meta name="viewport" content="width=device-width, initial-scale=1.0">\
    <title>Είσοδος στον λογαριασμό</title>\
    <style>\
        body { font-family: sans-serif; background-color: #f4f7f6; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }\
        .login-container { width: 100%; max-width: 520px; padding: 20px; }\
        .card { background: white; padding: 40px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }\
        .Registerlogin-title { text-align: center; color: #333; margin-bottom: 30px; font-size: 24px; }\
        label { display: block; margin-bottom: 8px; color: #555; font-size: 14px; }\
        input[type="email"], input[type="password"], input[type="text"] { width: 100%; padding: 12px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; font-size: 14px; }\
        .password-input-container { position: relative; }\
        .toggle-password-btn { position: absolute; right: 10px; top: 20px; transform: translateY(-50%); background: none; border: none; cursor: pointer; color: #666; }\
        .remember-me { display: flex; align-items: center; margin-bottom: 20px; }\
        .remember-me input { margin-right: 10px; margin-bottom: 0; width: auto; }\
        .btn-save { width: 100%; padding: 12px; background-color: #007bff; color: white; border: none; border-radius: 4px; font-size: 16px; cursor: pointer; transition: background 0.3s; }\
        .btn-save:hover { background-color: #0056b3; }\
        .register-prompt { text-align: center; margin-top: 20px; }\
        .register-prompt a { color: #007bff; text-decoration: none; font-size: 14px; }\
        .register-prompt a:hover { text-decoration: underline; }\
    </style>\
</head>\
<body>\
    <div class="login-container">\
        <div class="card">\
            <h2 class="Registerlogin-title">Είσοδος στον λογαριασμό</h2>\
            <form action="#" method="POST">\
                <label for="email">Καταχώρηση ηλεκτρονικής διεύθυνσης</label>\
                <input id="email" type="email" placeholder="example@gmail.com" required />\
                <label for="password">Κωδικός</label>\
                <div class="password-input-container">\
                    <input id="password" type="password" placeholder="Απαιτούνται τουλάχιστον 8 χαρακτήρες" required minlength="8" />\
                    <button type="button" class="toggle-password-btn" title="Εμφάνιση κωδικού">👁️</button>\
                </div>\
                <div class="remember-me">\
                    <input type="checkbox" id="rememberMe" />\
                    <label for="rememberMe" style="margin-bottom:0;">Θυμήσου με</label>\
                </div>\
                <button type="submit" class="btn-save">Είσοδος</button>\
            </form>\
            <div class="register-prompt">\
                <a href="#">Δεν έχω λογαριασμό</a>\
            </div>\
        </div>\
    </div>\
</body>\
</html>' > /usr/share/nginx/html/index.html

EXPOSE 80