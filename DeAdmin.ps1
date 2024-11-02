# Set the path to the directory where your applications are installed
$appsPath = "C:\Path\To\Your\Applications"

# Get all .exe files in the specified directory
$exeFiles = Get-ChildItem -Path $appsPath -Recurse -Include *.exe

foreach ($exe in $exeFiles) {
    # Get the current file's properties
    $shell = New-Object -ComObject Shell.Application
    $folder = $shell.Namespace($exe.DirectoryName)
    $file = $folder.Items().Item($exe.Name)

    # Check if the file has a "Run as administrator" flag set
    if ($file.InvokeVerb("Properties")) {
        $prop = $folder.GetDetailsOf($file, 0)
        if ($prop -like "*Run as administrator*") {
            # Clear the "Run as administrator" flag
            $exeAttributes = [System.Diagnostics.FileVersionInfo]::GetVersionInfo($exe.FullName)
            $exeAttributes.SetAttributes("Normal")
            Write-Host "Updated: $($exe.FullName)"
        }
    }
}

Write-Host "Done!"
