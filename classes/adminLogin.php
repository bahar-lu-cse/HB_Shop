 <?php
 	$filepath= realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/Session.php');
	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');
	Session::checkLogin();
?>
<?php
	class adminLogin{
		private $db;
		private $fm;
		public function __construct(){  //object in constructor can be used within the whole class
			$this->db=new Database();
			$this->fm=new Format();
		}
		public function AdminLogin($username, $password){

			$username =$this->fm->validation($username);
			$password =$this->fm->validation($password);
			$username= mysqli_real_escape_string($this->db->link, $username);
			$password= mysqli_real_escape_string($this->db->link, $password);

			if(empty($username) || empty($password)){
				$loginmsg="username or password must not be empty";
				return $loginmsg;
			}else{
				$password=md5($password);
				$query="select * from tbl_admin WHERE adminUser='$username' AND adminPass='$password'";
				$result=$this->db->select($query);
				if($result !=false){
					$value=$result->fetch_assoc();
					Session::set("adminLogin", true);
					Session::set("adminId", $value['adminId']);
					Session::set("adminUser", $value['adminUser']);
					Session::set("adminName", $value['adminName']);
					header('Location: dashboard.php');
				}else{
					$loginmsg="Username or Password not matched";
					return $loginmsg;
				}
			}
		}
		public function changePassword($email, $opassword,$npassword){
			$email =$this->fm->validation($email);
			$email= mysqli_real_escape_string($this->db->link, $email);
			$opassword =$this->fm->validation($opassword);
			$opassword= mysqli_real_escape_string($this->db->link, $opassword);
			$npassword =$this->fm->validation($npassword);
			$npassword= mysqli_real_escape_string($this->db->link, $npassword);
			 
			if(  empty($email) || empty($opassword) || empty($npassword)){
				$msg="<span class='error'>Fields must not be empty</span>";
				return $msg;
			}else if($opassword == $npassword){
				$msg="<span class='error'>Old and New Password is Same!</span>";
				return $msg;
			}else{
				$opassword=md5($opassword);
				$select="SELECT * from tbl_admin WHERE adminEmail='$email' AND adminPass='$opassword'";
				$getUser=$this->db->select($select);
				if($getUser){
					$npassword=md5($npassword);
					$query="UPDATE tbl_admin 
					SET 
					adminPass='$npassword'
					WHERE adminEmail='$email' AND adminPass='$opassword'";
					$changePassword=$this->db->update($query);
					if($changePassword){
						$msg="<span class='success'>Password Changed Successfully</span>";
						return $msg;
					}else{
						$msg="<span class='success'>Passwords not Changed!</span>";
						return $msg;
					}
				}else{
						$msg="<span class='error'>Check email or password again</span>";
						return $msg;
				} 
			}
		}
	}
?>