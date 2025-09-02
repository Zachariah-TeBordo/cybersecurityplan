param(
  [string]$LogDir = "C:\Logs",
  [string]$Pattern = "ERROR|WARN"
)

foreach ($f in Get-ChildItem $LogDir -Filter *.log) {
    $count = (Select-String -Path $f.FullName -Pattern $Pattern | Measure-Object).Count
    "$($f.Name) : $count"
}
