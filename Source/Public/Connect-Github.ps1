Param(
    [Parameter(Mandatory=$true)]
    [securestring]$PatToken,
    
    [Parameter(Mandatory=$true)]
    [string]$ServerUrl = "https://api.github.com",

    [Parameter(Mandatory=$false)]
    [ValidateSet("2022-11-28")]
    $ApiVersion = "2022-11-28"
)