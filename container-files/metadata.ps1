$CONTAINER_DIR = "/opt/metadata-editor/container-files"

[System.Reflection.Assembly]::LoadFrom((Resolve-Path "$CONTAINER_DIR/TagLibSharp.dll"))

$FILES_DIR = "/videos"

foreach ($file in $(Get-Childitem -Path "$FILES_DIR"))
{
    $video = $video = [TagLib.File]::Create((Resolve-Path ./video.mkv))

    # $video.Tag.Title = "my video"
    # $video.Tag.Year = 2020
    # $video.Tag.Comment = "a comment"
    # $video.Tag.Publisher = "a publisher"
    # $video.Tag.Description = "a description"

    # $video.Save()
}

