# VM with Hyper-V GPU-PV

## Requirements

Enterprise, Pro, or Education editions of Windows 10 or 11.

## Enable Virtualization

Refer to your motherboard manual.

## Enable Hyper-V

1) Open a PowerShell console as Administrator
2) Run the following command:

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
```

3) Reboot

Cf. https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v

## Download Windows using Rufus

Download [Rufus](https://rufus.ie/en/).\
Change `SELECT` to `DOWNLOAD` using arrow then click on `DOWNLOAD` to choose the right ISO.\
Close Rufus.

## Allow PowerShell scripts execution

1) Open a PowerShell console as Administrator
2) Run the following command:

```powershell
Set-ExecutionPolicy unrestricted
```

## Hyper-V Network Switch

You might want to use Bridged network instead of NAT.\
To do so, open `Hyper-V Manager` then `Virtual Switch Manager`.\
If you want to customize the MAC address that will be assigned, change it in `MAC Address Range`.\
Create an external switch, you can name it `Bridge-MB_Manufacter-NetworkCard_Manufacter`, for example: `Bridge-MSI-Realtek`.\
Make sure the network is the network card you want.

## GPU Drivers

Make sure you have the latest NVIDIA/AMD/Intel GPU drivers installed on the host.

## Easy-GPU-PV

We will use [Easy-GPU-PV](https://github.com/jamesstringerparsec/Easy-GPU-PV) scripts for the VM setup. Follow instructions from the [ReadMe](https://github.com/jamesstringerparsec/Easy-GPU-PV#instructions).

Adjust the values how you want, here are my values with `blockhd mod`:

```powershell
VMName = "GenqilaVM"
SourcePath = "C:\Users\Genqila\Downloads\Win10_21H2_EnglishInternational_x64.iso"
SizeBytes = 80GB
MemoryAmount = 6GB
CPUCores = 4
NetworkSwitch = "Bridge-MSI-Realtek"
VHDPath = "C:\Users\Genqila\Documents\Virtual Machines\"
GPUName = "AUTO"
GPUResourceAllocationPercentage = 15
Username = "Genqila"
Password = "SOMETHING_CHANGE_THIS"
```

## Setup

When the RDC window open, before login to Parsec you can do a quick setup of the VM:

- Task Bar
- Network Sharing Options
- Keyboard Layout
- ...

We will use Parsec but through a Virtual Display Adapter so when we disconnect from Parsec (or Hyper-V RDP) we still have a monitor plugged.

- Quit Parsec and Open `C:\ProgramData\Parsec\config.txt`
- Remove `host_virtual_monitors = 1` and `host_privacy_mode = 1`
- Enable the "Microsoft Hyper-V Video" Display Adapter in the Device Manager
- Download `usbmidd_v2.zip` from https://www.amyuni.com/downloads/usbmmidd_v2.zip
- Extract and run `usbmidd.bat` as administrator
- Open `Display settings` (right-click on desktop) and change the resolution to what you want for the 2nd monitor. -ample: `1920x1080`
- Launch Parsec and log in then go to Settings
- On the `Host` tab, set the Resolution to `1920x1080` and the Bandwidth Limit to `50 Mbps`
- Shutdown the VM
- Edit Hyper-V VM Settings
- Remove the Media from the DVD Drive
- Define a Static MAC Address in the Network Adapter (Advanced Feature)
- Start the VM
- Connect using Parsec

## Windows Activation

Activate Windows.

## Disable Windows Defender Permanently

- Go to `Virus & threat protection settings` from Windows Security Center
- Disable `Real-time protection`, `Cloud-delivered protection`, `Automatic sample submission`, `Tamper protection`
- Open `Local Group Policy Editor`
- Go to `Computer Configuration > Adminisrtative Templates > Windows Components > Microsoft Defender Antivirus`
- Enable `Turn off Windows Defender Antivirus`
- Disable `Allow antimalware service to remain running always`
- Go to `Real-time Protection`
- Enable `Turn off real-time protection`
- Disable `Turn on behavior monitoring`
- Disable `Monitor file and program activity on your computer`

## Applications

Install Battle.net, D2R, Jieguan, etc...

## Update the Resource Allocation Percentage

If you need to adjust th Resource Allocation Percentage because you put a too low or too high value, here is how:

1) Shutdown the VM
2) Open a PowerShell console as Administrator
3) Run the following command:

```powershell
# Update those values to match your need
[string]$VMName = "GenqilaVM"
[decimal]$GPUResourceAllocationPercentage = 10

[float]$divider = [math]::round($(100 / $GPUResourceAllocationPercentage), 2)

Set-VMGpuPartitionAdapter -VMName $VMName -MinPartitionVRAM ([math]::round($(1000000000 / $divider))) -MaxPartitionVRAM ([math]::round($(1000000000 / $divider))) -OptimalPartitionVRAM ([math]::round($(1000000000 / $divider)))
Set-VMGpuPartitionAdapter -VMName $VMName -MinPartitionEncode ([math]::round($(18446744073709551615 / $divider))) -MaxPartitionEncode ([math]::round($(18446744073709551615 / $divider))) -OptimalPartitionEncode ([math]::round($(18446744073709551615 / $divider)))
Set-VMGpuPartitionAdapter -VMName $VMName -MinPartitionDecode ([math]::round($(1000000000 / $divider))) -MaxPartitionDecode ([math]::round($(1000000000 / $divider))) -OptimalPartitionDecode ([math]::round($(1000000000 / $divider)))
Set-VMGpuPartitionAdapter -VMName $VMName -MinPartitionCompute ([math]::round($(1000000000 / $divider))) -MaxPartitionCompute ([math]::round($(1000000000 / $divider))) -OptimalPartitionCompute ([math]::round($(1000000000 / $divider)))
```

4) You can check that everything was applied correctly by doing:

```powershell
Get-VMGpuPartitionAdapter -VMName $VMName -ErrorAction SilentlyContinue
```

## After GPU Drivers Update

If you updated your GPU drivers, you need to update them in the VM.

1) Shutdown the VM (and reboot the PC if it was not after drivers install)
2) Open a PowerShell console as Administrator
3) Run the following command:

```powershell
cd Easy-GPU-PV
./Update-VMGpuPartitionDriver.ps1 -VMName "GenqilaVM" -GPUName "AUTO"
```
