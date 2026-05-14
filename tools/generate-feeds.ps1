param(
    [string]$Root = (Resolve-Path "$PSScriptRoot\..").Path,
    [string]$OutputDir = ""
)

$sourcePath = Join-Path $Root "source\rules-source.csv"
$rulesDir = if ($OutputDir.Trim()) { $OutputDir } else { Join-Path $Root "generated-rules" }

if (-not (Test-Path $sourcePath)) {
    throw "Missing source CSV: $sourcePath"
}

New-Item -ItemType Directory -Force -Path $rulesDir | Out-Null

$rows = Import-Csv $sourcePath
$groups = $rows | Group-Object feed

foreach ($group in $groups) {
    $feed = $group.Name
    $path = Join-Path $rulesDir "$feed.txt"
    $header = @(
        "! Ad Filter Pro - generated feed: $feed",
        "! Generated from source/rules-source.csv",
        "! Do not add copied third-party filter-list content.",
        ""
    )
    $domains = $group.Group |
        Where-Object { $_.domain } |
        Sort-Object domain -Unique |
        ForEach-Object { $_.domain.Trim().ToLowerInvariant() }
    Set-Content -Path $path -Value ($header + $domains) -Encoding UTF8
}
