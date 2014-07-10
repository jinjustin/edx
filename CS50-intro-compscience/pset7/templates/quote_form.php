<div class="my-nav">
    <ul class="nav nav-tabs">
      <li><a class="display_name"><?= $_SESSION["username"] ?></a></li>
      <li><a href="index.php">Your Portfolio</a></li>
      <li><a href="quote.php">Check stock price</a></li>
      <li><a href="buy.php">Buy stocks</a></li>
      <li><a href="sell.php">Sell stocks</a></li>
      <li><a href="add.php">Deposit funds</a></li>
      <li><a href="history.php">Transaction history</a></li>
      <li><a href="settings.php">Settings</a></li>
    </ul>
</div>

<form action="quote.php" method="post">
    <fieldset>
        <p>
            Fill the box below with a valid symbol to get the relative stock price.
        </p>
        <div class="form-group">
            <input autofocus class="form-control" name="symbol" placeholder="Stock symbol" type="text"/>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-default">Search!</button>
        </div>
    </fieldset>
</form>
<div>
    <a href="javascript:history.go(-1);">Back</a>
</div>
