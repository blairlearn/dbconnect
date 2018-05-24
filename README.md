# Database Connection test tool.

Tests whether a Microsoft SQL Server instance can be accessed. Depending on the results,
the script will produce one of two messages:
* "Database connection succeeded."
* "Database connection failed."

## Run the Script

**Pre-requisites:** In `dbConnect.ps1`, replace the text `"CONNECTION STRING GOES HERE"` with the actual connection string.

**Example:**
```
$conn.ConnectionString = "Server=localhost; User Id=MyUserid; Password=MyPassword"
```

The script may be executed by running the `dbConnect.bat` script, or from the
command line by running the command:
```
powershell .\dbConnect.ps1
```