# Syntax Support for Verse

[![Installs](https://img.shields.io/badge/installs-10.3K-brightgreen?style=flat-square)](https://marketplace.visualstudio.com/items?itemName=Worlds.verse)
[![Rating](https://img.shields.io/badge/rating-4.7%2F5-yellow?style=flat-square&logo=star)](https://marketplace.visualstudio.com/items?itemName=Worlds.verse)
[![Version](https://img.shields.io/badge/version-1.1.5-blue?style=flat-square)](https://marketplace.visualstudio.com/items?itemName=Worlds.verse)

This extension provides syntax support for Epic Games' Verse programming language.

Developed by [worlds.org](https://www.worlds.org/)

This is not an official Verse VS Code extension and is not affiliated with Epic Games in any way.

# Developer
To update to VSCode Marketplace, update version in package.json ie `"version": "1.1.6"`
```bash
vsce login Worlds
```
* Note: make sure you are logged into microsoft with account connected to Worlds Publisher. Should be able to access `https://marketplace.visualstudio.com/manage/publishers/Worlds`
```bash
vsce package 
```
```bash
vsce publish
```
