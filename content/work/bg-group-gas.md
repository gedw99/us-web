---
title: 'BG Group gas project'
date: 2018-11-18T12:33:46+10:00
draft: false
weight: 3
heroHeading: 'BG Group Project'
heroSubHeading: 'Real time system for Natural Gas production, tracking and trading.'
heroBackground: 'https://images.unsplash.com/photo-1523521916224-ab7bff303b1e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1600&h=400&fit=crop&ixid=eyJhcHBfaWQiOjF9'
thumbnail: 'https://images.unsplash.com/photo-1523521916224-ab7bff303b1e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=600&h=400&fit=crop&ixid=eyJhcHBfaWQiOjF9'
images: []
---

![alt text](https://upload.wikimedia.org/wikipedia/en/thumb/6/6a/BG_Group.svg/120px-BG_Group.svg.png "BG Group")

BG Group plc was a British multinational oil and gas company headquartered in Reading, United Kingdom, with operations in 25 countries across Africa, Asia, Australasia, Europe, North America and South America.

They required a real time Trading Portal for the spot price gas market with a back-office system to track the gas production sites and feed into their reporting division.

## Highlights

**GUI** 

- Trading portal with dynamic real time updates running on large format Screens in the Trading Hall.

- Desktop and Mobile Trading workstation GUI.

**Security**

- Security review of the system to access risks.

- Integration into the companies LDAP Security system.

**Per Site adapters** for each producers's own gas production system.

- A [SOAP] (<https://en.wikipedia.org/wiki/SOAP>) API allowed each country to easily connect their own bespoke system into the Backend API.

**Data Storage**

- An Oracle streaming database system utilising Change Data Capture ( CDC ) for real time updates to all systems in the HUB.

**Reporting**

- Integration into their internal Reporting systems with a Custom data mapper to bridge each sites data structures into the backend system.