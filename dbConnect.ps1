$conn = New-Object System.Data.SqlClient.SqlConnection
$conn.ConnectionString = "CONNECTION STRING GOES HERE"

Try {
	$conn.Open()
	$sql = "select DB_NAME() as name"
	$cmd = New-Object System.Data.SqlClient.SqlCommand($sql,$conn)
	$rdr = $cmd.ExecuteReader()
	$test = @()
	while($rdr.Read())
	{
		$test += ($rdr["name"].ToString())
	}
	
	Write-Host "Database connection succeeded."
}
Catch {
	Write-Host "Database connection failed."
}