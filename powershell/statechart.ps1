param (
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$States
)

# Collect output lines
$output = @()

# Start of output
$output += "var state_chart: StateChart = %StateChart"

foreach ($state in $States) {
    $lower = $state.ToLower()
    $output += "var ${lower}_state: AtomicState = %$state"
}
$output += ""

$output += "func _ready() -> void:"

foreach ($state in $States) {
    $lower = $state.ToLower()
    $output += "    ${lower}_state.state_physics_processing.connect(${lower}_physics_processing)"
    $output += "    ${lower}_state.state_entered.connect(${lower}_state_entered)"
    $output += "    ${lower}_state.state_exited.connect(${lower}_state_exited)"
    $output += ""
}

$output += ""

foreach ($state in $States) {
    $lower = $state.ToLower()

    # Comment header
    $output += "###"
    $output += "### $state"
    $output += "###"
    $output += ""

    # Functions
    $output += "func ${lower}_physics_processing(delta):"
    $output += "    pass"
    $output += ""
    $output += "func ${lower}_state_entered():"
    $output += "    pass"
    $output += ""
    $output += "func ${lower}_state_exited():"
    $output += "    pass"
    $output += ""
}

# Join everything into a single string
$finalOutput = $output -join "`n"

# Copy to clipboard
$finalOutput | Set-Clipboard

# Also print it to the console
Write-Output $finalOutput

# Success message
Write-Host ""
Write-Host "Code copied to clipboard"
