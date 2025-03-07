while ($true) {
    # Navigate to the repository directory
    Set-Location -Path "c:/Users/CY/AppData/Local/SplitFiction"

    # Add all changes to the staging area
    git add .

    # Commit the changes with a timestamp
    $commitMessage = "Auto commit on $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git commit -m $commitMessage

    # Push the changes to the remote repository
    git push

    # Wait for 5 minutes (300 seconds)
    Start-Sleep -Seconds 300
}