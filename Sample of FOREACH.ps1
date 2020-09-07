### This powershell script is used to describe FOREACH ###
### Supported distribution/Software:    ###
### Maintainer: @ThiagoNosch - tnosch@hotmail.com ###

#Finding read only files in a folder
foreach ($arquivos in Get-ChildItem) {
    if ($arquivos.IsReadOnly) {
        Write-Host $arquivos.fullname
    }
}

#Finding and killing notepad process.
Get-Process Notepad | foreach kill
