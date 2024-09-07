Param(
    [Parameter(Mandatory=$true)]
    [securestring]$PatToken,
    
    [Parameter(Mandatory=$false)]
    [string]$ServerUrl = "https://api.github.com",

    [Parameter(Mandatory=$false)]
    [ValidateSet("2022-11-28")]
    $ApiVersion = "2022-11-28"
)

$GetHeaders = @{
    "Authorization" = "Bearer $($PatToken | ConvertFrom-SecureString -AsPlainText)"
    "X-GitHub-Api-Version" = "$ApiVersion"
}

$Script = Invoke-WebRequest -Method Get -Uri $ServerUrl -Headers $GetHeaders

Write-Host $Script