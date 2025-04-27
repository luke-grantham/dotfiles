param(
    [string]$SignalLine
)

if (-not $SignalLine) {
    $SignalLine = Read-Host "Enter signal line (example: button.pressed)"
}

# Split into node and signal
$parts = $SignalLine -split '\.'
if ($parts.Length -ne 2) {
    Write-Error "Input must be in the form 'node.signal'"
    exit 1
}

$node = $parts[0]
$signal = $parts[1]

# Create function name
$functionName = "on_${node}_${signal}"

# Build output
$output = @"
${node}.${signal}.connect(${functionName})

func ${functionName}():
    pass
"@

# Copy to clipboard and print
$output | Set-Clipboard
$output
