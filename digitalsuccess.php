<?php 
     include 'inc/header.php';
 ?>
 <?php
    if(!isset($_GET['orderId']) || $_GET['orderId']== NULL){
        //header("Location: catlist.php");
        echo "<script>window.location='index.php'</script>";
    }
?>
   <?php 
     $login=Session::get('cuslogin');
     if($login==false){
     	header('Location: login.php');
     }
 ?>
 <style>
  .paymentsuccess{width: 500px; min-height: 200px; text-align: center; border: 1px solid #ddd; margin: 0 auto; padding: 50px;}
  .paymentsuccess h2{    border-bottom: 1px solid #ddd;margin-bottom: 20px; padding-bottom: 10px;}
  .paymentsuccess p{line-height: 25px; font-size:  18px; text-align: left;}
 </style>
 <div class="main">
    <div class="content">
    	<div class="section group">
 			<div class='paymentsuccess'>
 				<h2>Success</h2>
        <?php
            $cusID=Session::get('cusID');
            $amount=$ct->payableAmount($cusID);
            if($amount){
              $sum=0;
              while($result=$amount->fetch_assoc()){
                $price=$result['price'];
                $sum=$sum+$price;
                Session::set("sum",$sum);
              }
            }
        ?>
        <p style="color: #16cd00;">Total paid Amount (Including Vat):
          <?php 
            $grandTotal=Session::get('sum');
            echo "৳".$grandTotal;
          ?>
              
        </p>
        <p>You order has placed successfully. Thank You for your order. We will contact you HB SHOP with delivery details. Here is your order details...<a href='orderdetails.php' class="text-decoration-none">Visit Here</a></p>
        <div ><button class="btn btn-success" name="register"> <a href="../shop/" style="text-decoration: none;color:#000000;">Got to Home</a></button></div>
      </div>
       
			    
 		</div>
 	</div>
</div>


 
 <?php 
 	include 'inc/footer.php';

 ?>





<?php

$val_id=urlencode($_POST['orderId']);
$store_id=urlencode("hbsho6228bb5e4e97a");
$store_passwd=urlencode("hbsho6228bb5e4e97a@ssl");
$requested_url = ("https://sandbox.sslcommerz.com/validator/api/validationserverAPI.php?val_id=".$val_id."&store_id=".$store_id."&store_passwd=".$store_passwd."&v=1&format=json");

$handle = curl_init();
curl_setopt($handle, CURLOPT_URL, $requested_url);
curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
curl_setopt($handle, CURLOPT_SSL_VERIFYHOST, false); # IF YOU RUN FROM LOCAL PC
curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, false); # IF YOU RUN FROM LOCAL PC

$result = curl_exec($handle);

$code = curl_getinfo($handle, CURLINFO_HTTP_CODE);

if($code == 200 && !( curl_errno($handle)))
{

	# TO CONVERT AS ARRAY
	# $result = json_decode($result, true);
	# $status = $result['status'];

	# TO CONVERT AS OBJECT
	$result = json_decode($result);

	# TRANSACTION INFO
	$status = $result->status;
	$tran_date = $result->tran_date;
	$tran_id = $result->tran_id;
	$val_id = $result->val_id;
	$amount = $result->amount;
	$store_amount = $result->store_amount;
	$bank_tran_id = $result->bank_tran_id;
	$card_type = $result->card_type;

	# EMI INFO
	$emi_instalment = $result->emi_instalment;
	$emi_amount = $result->emi_amount;
	$emi_description = $result->emi_description;
	$emi_issuer = $result->emi_issuer;

	# ISSUER INFO
	$card_no = $result->card_no;
	$card_issuer = $result->card_issuer;
	$card_brand = $result->card_brand;
	$card_issuer_country = $result->card_issuer_country;
	$card_issuer_country_code = $result->card_issuer_country_code;

	# API AUTHENTICATION
	$APIConnect = $result->APIConnect;
	$validated_on = $result->validated_on;
	$gw_version = $result->gw_version;


	
//     // $query = "INSERT INTO `payment`(`payment`, `payment_date`, `Txn id`, `status`, `payment_type`) VALUES ('$amount','$tran_date','$tran_id','$status','$card_type')";
//     // mysqli_query($connection,$query);

// 	// $query = "INSERT INTO `order`(`user_id`, `product_id`,`quantity`, `shipping_add`, `order_date`, `payment_type`, `totalprice`) VALUES ('$id','$c_id','$qty','$address','$tran_date', '$card_type', '$amount')";
//     // mysqli_query($connection,$query);

	

//    echo "<script>alert('Payment Successfull')</script>";
//     echo "<script>location.href='index.php'</script>";


 } else {

	echo "<script>location.href='payment.php'</script>";

 }

?>