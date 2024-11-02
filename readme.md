## Instructions

To use the script, follow these steps:

1. **Open PowerShell as an Administrator**.
2. **Copy and Paste the Script**: Copy the provided script and paste it into PowerShell.
3. **Set the Path**: Replace `C:\Path\To\Your\Applications` with the actual path to your applications.
4. **Run the Script**: Execute the script by pressing Enter.

## Important Notes

- This script attempts to change the attributes of executables to remove the "Run as administrator" mode. 
- If the setting is being enforced by a compatibility option or group policy, you may need to adjust those settings manually.

### Manual Adjustment

If the issue persists, check the properties of individual applications:

1. Right-click the application executable.
2. Select **Properties**.
3. Go to the **Compatibility** tab.
4. Uncheck **Run this program as an administrator** if it's checked.

If you need more scripts like these, please reach out to me. I am also working on an all in one software good for Windows System Administration, it primarily focuses on security.
