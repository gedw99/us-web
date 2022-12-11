---
title: 'Disease Tracking Project'
date: 2018-11-18T12:33:46+10:00
draft: false
weight: 2
heroHeading: 'Disease tracking'
heroSubHeading: 'Designing a new disease tracking system'
heroBackground: 'https://images.unsplash.com/photo-1486825586573-7131f7991bdd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1600&h=400&fit=crop&ixid=eyJhcHBfaWQiOjF9'
thumbnail: 'https://images.unsplash.com/photo-1486825586573-7131f7991bdd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=600&h=400&fit=crop&ixid=eyJhcHBfaWQiOjF9'
images: []
---
![alt text](https://upload.wikimedia.org/wikipedia/en/thumb/5/5d/ECDC_logo.svg/120px-ECDC_logo.svg.png "ECDC")

The European Centre for Disease Prevention and Control (ECDC) is an independent agency of the European Union (EU) whose mission is to strengthen Europe's defences against infectious diseases.

ECDC required a system for tracking disease reporting within the European Union, and to collaborate with the other CDC centers worldwide.

## Highlights

**Security**

- [LDAP] (<https://en.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol>) based integration into their existing Security systems.

- Security review of the system to access risks.

- Hardening against nonce replay attacks and signature forgery.

**Per Country adapters** for each country's own system

- A [GRPC] (<https://grpc.io/>) API allowed each country to easily connect their own bespoke system into the ECDC API.

**Data Storage**

- A [RDF triple store] (<https://en.wikipedia.org/wiki/Triplestore>) based storage so that he data can be leveraged for other query needs ongoing.

**Reporting**

- Integration into their internal Reporting systems.

**Alerting**

- Metrics, Logging and Alerting is fully integrated with all aspects at the User and Administration Level.
- For example, immunologists can be alerted when reported values go beyond nominal levels.
