$ErrorActionPreference = "Stop";
dotnet tool restore

try {
   dotnet run --project build -- $args
}
catch {
  $ErrorMessage = $_.Exception.Message
  Write-Host "Error Message"
  Write-Host $ErrorMessage
  $FailedItem = $_.Exception.ItemName
  Write-Host "Failed Item"
  Write-Host $FailedItem
}
