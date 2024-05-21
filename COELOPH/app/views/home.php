<?php include "partials/header.php" ?>

<head>
        <link rel="stylesheet" href="addtocart.css">
        <script src="https://kit.fontawesome.com/92d70a2fd8.js" crossorigin="anonymous"></script>
    </head>
    <body>
 

        <div class="container">
            <div id="root"></div>
            <div class="sidebar">
                <div class="head"><p>My Cart</p></div>
                <div id="cartItem">Your cart is empty</div>
                <div class="foot">
                    <h3>Total</h3>
                    <h2 id="total">$ 0.00</h2>
                </div>
            </div>
        </div>
        <script src="../public/assets/bootstrap/js/addtocart.js"></script>
    </body>

    <?php include "partials/footer.php" ?>