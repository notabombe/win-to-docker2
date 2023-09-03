# escape=`
FROM mcr.microsoft.com/windows:20H2

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

# Install Windows 11
RUN Invoke-WebRequest -Uri https://aka.ms/windows11download -OutFile C:\Windows11.iso; `
    Mount-DiskImage -ImagePath C:\Windows11.iso; `
    $driveLetter = (Get-DiskImage -ImagePath C:\Windows11.iso | Get-Volume).DriveLetter; `
    Start-Process -FilePath "$($driveLetter):\setup.exe" -ArgumentList '/auto upgrade /quiet /noreboot' -Wait; `
    Dismount-DiskImage -ImagePath C:\Windows11.iso; `
    Remove-Item C:\Windows11.iso

# Set up Docker Container Name
ENV DOCKER_CONTAINER_NAME windows11_container

CMD ["cmd.exe"]