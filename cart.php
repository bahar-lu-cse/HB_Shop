<?php 
	include 'inc/header.php';
?>
<?php
 	if(isset($_GET['delprod'])){
 		$delID= preg_replace('/[^-a-zA-Z0-9_]/','',$_GET['delprod']);
 		$delCartProduct=$ct->delCartProdByCartId($delID);
 	}   
?>
<?php
	if($_SERVER['REQUEST_METHOD']=='POST'){
		$sid=session_id();
        $quantity=$_POST["quantity"];
        $cartID=$_POST["cartID"];
        if($quantity<=0){
        	$delCartProduct=$ct->delCartProdByCartId($cartID);
        }else{
        	 $updateCart=$ct->updateQuantity($quantity,$cartID);
        }
    }
?>
<?php
	if(!isset($_GET['refid'])){
		echo "<meta http-equiv='refresh' content='0;URL=?refid=bahar'/>";
	}
?>
 <div class="main">
    <div class="content">
    	<div class="cartoption">		
			<div class="cartpage">
		    	<h2>Your Cart</h2>
		    	<?php
					if(isset($cartUpdate)){
						echo $cartUpdate;
					}if(isset($delCartProduct)){
						echo $delCartProduct;
					}
				?>
	    	    <style>
					table.tblone tr th,table.tblone tr td {border-right: 1px solid #e4d3e66b;}
				</style>
				<table class="tblone Large shadow" style="border-bottom: 1px solid #ebebeb;">
					<tr>
						<th width="5%">SL</th>
						<th width="25%">Product Name</th>
						<th width="10%">Image</th>
						<th width="15">Price</th>
						<th width="15%">Quantity</th>
						<th width="20%">Total Price</th>
						<th width="10%">Action</th>
					</tr>
					<?php
						$sum=0;
						$cartProd=$ct->getCartProduct();
						if($cartProd){
							$i=0;
							$sum=0;
							$qty=0;
							while($result=$cartProd->fetch_assoc()){
								$i++;
								?>
								<tr>
									<td ><?php echo $i;?></td>
									<td ><?php echo $result['productName'];?></td>
									<td ><img src="<?php echo "admin/".$result['image'];?>" alt=""/></td>
									<td>৳<?php echo $result['price'];?></td>
									<td>
										<form action="" method="post">
											<input type="hidden" name="cartID" value="<?php echo $result['cartID'];?>"/>
											<input type="number" name="quantity" value="<?php echo $result['quantity'];?>"/>
											<input type="submit" name="submit" value="Update"/>
										</form>
									</td>
									<td>৳<?php 
										$total=$result['price']*$result['quantity'];
										echo $total;
										?>
									</td>
									<td >
										<a onclick="return confirm('Are You Sure To DElete!');" class="btn btn-danger btn-sm" href="?delprod=<?php echo $result['cartID']; ?>">
											Remove
										</a>
									</td>
								</tr>

								<?php 
									$sum=$sum+$total;
									$qty=$qty+ $result['quantity'];
									Session::set("sum", $sum);
									Session::set("items",$qty);
								?>
					    <?php } 
					} ?> 
				</table>

				<?php
					$getdata=$ct->checkCartTable();
					if($getdata){ 
				?>
				<div class="row" style="margin-left: 340px; margin-top: 40px;">
					<div class="col-sm-8">
						<div class="card border border-success p-4">
							<div class="card-body p-0">
								<h5>Cart Summary</h5>
								<ul class="list-group list-group-sm mt-3">
									<li class="list-group-item d-flex font-weight-bold rounded-bottom">
										Sub Total <span style="margin-left: 45px;">৳</span><span class="ml-auto"><?php echo $sum; ?> </span> 
									</li>
									<li class="list-group-item d-flex font-weight-bold rounded-bottom">
										VAT <span style="margin-left: 85px;">৳</span><span class="ml-auto"><?php 
										$vat= ($sum/100)*10;
										echo $vat; 
										?> (10%)</span> 
									</li>
									<li class="list-group-item d-flex font-weight-bold rounded-bottom">
										Grand Total <span style="margin-left: 30px;">৳</span><span class="ml-auto"><?php echo $sum+$vat;?> </span>
										<?php 
											$_SESSION['total']= $sum+$vat;
																?> 
									</li>
								</ul>
								<a href="payment.php" class="btn btn-success mt-2">
									Proceed to Checkout <i class="far fa-arrow-alt-circle-right" style="color: white"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php } else{?>
				<script type="text/javascript">
					window.location.href = "index.php"
				</script>
			<?php }?>
    	</div>  	
        <div class="clear"></div>
    </div>
 </div>
 <?php 
 	include 'inc/footer.php';
 ?>