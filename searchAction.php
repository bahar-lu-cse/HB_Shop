<?php 
	include 'inc/header.php';
	include ('./config/dbconn.php');
?>


<div class="main">
    <div class="content">
	    <div class="card-section group">
	      	<?php
	        	if(isset($_POST['search'])){
                $search = $_POST['search_text'];
                $res = mysqli_query($connection,"SELECT * FROM `tbl_product` WHERE productName LIKE '%$search%' OR body LIKE '%$search%'");
                while($result = mysqli_fetch_array($res)){
                    
            ?>
	  
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?pdodID=<?php echo $result['productID']?>"><img src="admin/<?php echo $result['image']?>" alt="" /></a>
					 <h2><?php echo $result['productName']?></h2>
					 <p><?php echo $fm->textShorten($result['body'], 70)?></p>
					 <p><span class="price">৳<?php echo $result['price']?></span></p>  
				     <div class="button"><span><a href="details.php?pdodID=<?php echo $result['productID']?>" class="details">Details</a></span></div>
				</div>
			<?php } } ?>
		</div>
		<style>
			.brand{
				margin: 26px;
			}
		</style>
		
    </div>
</div>


<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
 <?php 
 	include 'inc/footer.php';
 ?>
 