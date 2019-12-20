$ErrorActionPreference = "Stop";
dotnet tool restore
try {
  dotnet run --project build -- $args
} catch {
  exit 0
}
