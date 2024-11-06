Connect-MSGraph
$devices = Get-IntuneManagedDevice

foreach ($device in $devices) {
    $newName = "CR-" + $device.SerialNumber
    Update-IntuneDevice -DeviceId $device.Id -Name $newName
}
