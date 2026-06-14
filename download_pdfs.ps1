$files = Get-ChildItem -Path "d:\Mahadev\Materials" -Recurse -Filter *.pdf
$count = 0
$total = 0
foreach ($file in $files) {
    if ($file.Length -lt 2000) { # Only check small files that might be shortcuts
        $content = Get-Content $file.FullName -Raw
        if ($content -match '\[InternetShortcut\]\s*URL=(.+)') {
            $url = $matches[1].Trim()
            $total++
            Write-Host "[$total] Downloading: $($file.Name) from $url"
            try {
                Invoke-WebRequest -Uri $url -OutFile $file.FullName -UseBasicParsing -TimeoutSec 30
                $count++
            } catch {
                Write-Host "Failed to download $url"
            }
        }
    }
}
Write-Host "Successfully downloaded $count out of $total shortcut files."
