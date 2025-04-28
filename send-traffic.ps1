$rootUrl = "http://localhost:5000/"
$sleepUrl = "http://localhost:5000/sleep"

Write-Host "Starting traffic generation..."

for ($i = 0; $i -lt 100; $i++) {
    try {
        Invoke-WebRequest -Uri $rootUrl -Method GET -TimeoutSec 5 | Out-Null
        Write-Host "[$i] Root endpoint hit"
    }
    catch {
        Write-Host "[$i] Failed to hit Root endpoint"
    }

    Start-Sleep -Milliseconds (Get-Random -Minimum 200 -Maximum 1000)

    if ($i % 5 -eq 0) {
        try {
            Invoke-WebRequest -Uri $sleepUrl -Method GET -TimeoutSec 10 | Out-Null
            Write-Host "[$i] Sleep endpoint hit"
        }
        catch {
            Write-Host "[$i] Failed to hit Sleep endpoint"
        }
    }

    Start-Sleep -Milliseconds (Get-Random -Minimum 100 -Maximum 500)
}

Write-Host "Traffic generation completed."
