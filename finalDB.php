<!DOCTYPE html>
<html>

<head> 
	<link rel="stylesheet" href="final_site.css">
</head>

<body>

<!--Page Header-->
<p><strong><font size="+3">Welcome the Gene Alias Database</font></strong></p><br>

<!--Page Disclaimer about inputs-->
<p><strong><font size="+1"><font color="teal">*DISCLAIMER* please only select one search option at a time (ex: gene id= 123, Yes, No, No) *DISCLAIMER*</font></strong></p><br>
<p><strong><font size"+1"><font color="teal">IF NO DATA IS SHOWN WHEN YES/NO SELECTED THE GENE IS NOT FOUND IN THE DATABASE!</font></strong></p><br><br>

<!--Main page form: one for the searched ID, one for the info table, one for the alias table, and one for the description table-->
<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
Enter the gene ID you are looking for: <input type="tect" name="id"><br><br>
Display gene information (Yes/No): <input type="text" name="gene"><br><br>
Display alias information (Yes/No): <input type="text" name="names"><br><br>
Display description information (Yes/No): <input type="text" name="info">
<input type="submit">
</form>

<!--Checks to see if a post request has been sent-->			
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST")
{
	//input values
	$id = $_POST['id'];
	echo "<br>";
	if (empty($id))
	{
		echo "No gene was provided, please try again. <br>";
	}
	else 
	{
		/*grabs the gene ID provided*/
		echo "Gene ID provided was $id.<br> ";
	}
	echo "<br>";
	$gene = $_POST['gene'];
	$names = $_POST['names'];
	$info = $_POST['info'];
}

/*varaibles for connection*/
$server="localhost";
$username="mallorydickey";
$password="";
$database="mallorydickey";

/*database connection*/
$connect = mysqli_connect($server,$username,"",$database);

/*error*/
if($connect->connect_error)
{
	echo "Something has gone wrong";
	echo "Connection error: " .$connect->connect_error;
}

/*statements to run queries*/
$query = "";
if($gene == 'Yes' OR $gene == 'yes')
{
	$query = "SELECT gene_id,gene_sym,gene_status,gene_uniprot,gene_loc FROM gene_info WHERE gene_id ='$id';";

}
elseif($names == 'Yes' OR $names == 'yes')
{
	$query = "SELECT gene_id,alias FROM gene_alias WHERE gene_id ='$id';";
}
elseif($info == 'Yes' OR $info == 'yes')
{
	$query = "SELECT gene_id,gene_type,gene_sum FROM gene_desc WHERE gene_id = '$id';";
}
else {
	$query ="SELECT gen_id FROM gene_info;";
}


/*takes data and returns the results for each individual table*/
$result = mysqli_query($connect, $query)
	or trigger_error("Query Failed! SQL: $query - Error: "
	. mysqli_error($connect), E_USER_ERROR);

if($result = mysqli_query($connect, $query)){
	while ($row = mysqli_fetch_row($result)) {
		if($gene == 'Yes' OR $gene == 'yes')
		{
			printf("Gene Information Table results for gene %s: <br> Gene ID: %s | Gene Symbol: %s | Gene Status: %s | Gene UniProt ID: %s, | Gene Location: %s ", $id, $row[0], $row[1], $row[2], $row[3], $row[4]);
		}
		elseif($names == 'Yes' OR $names == 'yes')
		{
			printf("Gene_ID: %s | GeneAlias: %s <br>", $id, $row[1]);
		}
		elseif($info == 'Yes' OR $info == 'yes')
		{
			printf("Gene Description Table for gene %s: <br>  Gene_ID: %s | Gene Type: %s | Gene Summary: %s", $id, $row[0], $row[1], $row[2]);
		}
		else 
		{
			printf("No query given");
		}
		
	}
	mysqli_free_result($result);
}

else
{
	echo "<br>";
}


/*close connection*/
mysqli_close($connect);
?>
</body>
</html>
