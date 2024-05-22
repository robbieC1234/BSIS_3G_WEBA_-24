
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Details</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&family=Poppins&display=swap" rel="stylesheet">
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    background: #1b1c1e;
    text-align: center;
    font-family: 'Poppins', sans-serif;
}

h1 {
    font-family: 'Playfair Display', serif;
    font-size: 59px;
    color: white;
    font-weight: 600;
    padding-bottom: 20px;
}

p, h2 {
    color: #d2d2d2;
    line-height: 1.6; /* Adjust line spacing */
}

.container {
    max-width: 1320px;
    margin: 0 auto;
    padding: 5%;
}

.contact-details {
    max-width: 500px;
    margin: 0 auto;
    text-align: center; /* Center text */
    padding: 20px 0;
}

.contact-details h2 {
    font-size: 24px;
    color: white;
    margin-bottom: 10px;
}

.contact-details p {
    font-size: 18px;
    margin-bottom: 10px;
}

.contact-details a {
    color: #828282;
    text-decoration: none;
    font-style: italic;
}

.contact-details a:hover {
    color: #fff;
    text-decoration: underline;
}

button {
    background-color: #545557;
    padding: 15px 30px;
    color: white;
    font-size: 18px;
    border: none;
    margin-top: 30px;
    cursor: pointer;
    transition: all .3s ease;
}

button:hover {
    background: #FFF;
    color: #1b1c1e;
}

a {
    color: #828282;
    font-style: italic;
    text-decoration: none;
}

a:hover {
    color: #fff;
}

    </style>
</head>
<body>
    <div class="container">
        <h1>Contact Me</h1>
        <p>Feel free to reach out through the following contact details or social media platforms.</p>
        <div class="contact-details">
            <h2>Contact Information</h2>
            <p><strong>Email:</strong>Sales@coeloph.shop</p>
            <p><strong>Phone:</strong>09151809566</p>
            <h2>Social Media</h2>
            <p><a href="https://www.facebook.com/coelophr" target="_blank">Facebook</a></p>
            <p><a href="https://www.instagram.com/coeloph/" target="_blank">Instagram</a></p>
        </div>
        <button onclick="location.href='<?=ROOT?>/home'">Go to Home</button>
    </div>
</body>
</html>
