#ping sweep L
param($ip)
if(!$ip){
    Write-Output "usage .\pingsweep.ps1 [xxx.xxx.x]"
}else{
    foreach($ips in 0..254){
        if($(ping -n 1 "$ip.$ips " | select-string "bytes=32")){
        Write-Output "$ip.$ips esta online"
        }
    }
}