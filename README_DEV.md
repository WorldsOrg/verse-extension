# Developer
To update to VSCode Marketplace, update version in package.json ie `"version": "1.1.6"`
```bash
vsce login Worlds
```
* Note: make sure you are logged into microsoft with account connected to Worlds Publisher. Should be able to access `https://marketplace.visualstudio.com/manage/publishers/Worlds`
* Note: get personal access token from dev.azure.com https://go.microsoft.com/fwlink/?LinkId=307137
```bash
vsce package 
```
```bash
vsce publish
```