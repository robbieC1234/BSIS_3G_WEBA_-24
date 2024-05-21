<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>COELOPH</title>
  <link rel="stylesheet" href="<?= ROOT ?>/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?= ROOT ?>/assets/css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <style>
    .navbar {
      background-color: #4a686a !important; /* Set background color */
      width: 100%; /* Ensure navbar spans full width */
      padding: 10px 20px; /* Adjust padding for better spacing */
    }

    .nav-link-large {
      font-size: 1.5rem; /* Adjust the size as needed */
      margin-right: 20px; /* Add margin for spacing between links */
      
      
    }

    .navbar .nav-link,
    .navbar .navbar-brand {
      color: #ffffff!important; /* Ensure text color matches the overall theme */
    }

    .cart {
      display: flex;
      align-items: center;
      margin-right: 20px; /* Adjust margin as needed */
      background-color: #F9F8F3; 
      
    }

    .cart p {
      margin-left: 5px; /* Adjust margin as needed */
      
      
    }

    .user-info {
      display: flex;
      align-items: center;
      margin-right: 20px; /* Add margin for spacing */
      
    }

    .user-info img {
      margin-right: 10px; /* Space between the image and the name */
      background-color: #C1D1D1; 
    }

    .logout-btn {
    background-color: #7fff00; /* Replace with your desired color */
    border-color: #black; /* Optional: To change the border color */
    
    
    }
    body {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
      font-size: 18px;
      background-color: #f9f8f3; 
    }

    .container {
      width: 100%;
      padding: 0;
      
    }
  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg">
    <div class="container">
      <a class="navbar-brand" href="#">
        <img src="<?= ROOT ?>/assets/images/logo.png" alt="logo" style="width: 80px; height: auto;">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <?php if (!empty($_SESSION['USER'])): ?>
            <li class="nav-item">
              <a class="nav-link nav-link-large" aria-current="page" href="<?= ROOT ?>/home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-link-large" aria-current="page" href="<?= ROOT ?>/users">Users</a>
            </li>
          <?php endif; ?>
        </ul>
        <?php if (empty($_SESSION['USER'])): ?>
          <a href="<?= ROOT ?>/login" class="btn btn-secondary">Login</a>
        <?php else: ?>
          <div class="cart">
            <i class="fa-solid fa-cart-shopping"></i>
            <p id="count">0</p>
          </div>
          <div class="user-info">
            <img class="rounded-circle" width="30px" height="30px" src="<?= ROOT ?>/<?= $_SESSION['USER']->image ?>" alt="">
            <span>
              <?= $_SESSION['USER']->firstname ?>
              <?= $_SESSION['USER']->lastname ?>
            </span>
          </div>
          <a href="<?= ROOT ?>/logout" class="btn btn-secondary logout-btn">Logout</a>
        <?php endif; ?>
      </div>
    </div>
  </nav>
  <script src="<?= ROOT ?>/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
