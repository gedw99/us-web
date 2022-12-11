---
title: 'Syngenta agro-chemical project'
date: 2018-11-18T12:33:46+10:00
draft: false
weight: 3
heroHeading: 'Syngenta Project'
heroSubHeading: 'Research Corpus enabling teams to shine collaboratively.'
heroBackground: 'https://images.unsplash.com/35/Ov8Hg5LlQriTimkB3PEl_kreativgrund_Weizenfeld.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1600&h=400&fit=crop&ixid=eyJhcHBfaWQiOjF9'
thumbnail: 'https://images.unsplash.com/35/Ov8Hg5LlQriTimkB3PEl_kreativgrund_Weizenfeld.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=600&h=400&fit=crop&ixid=eyJhcHBfaWQiOjF9'
images: []
---

![alt text](https://upload.wikimedia.org/wikipedia/en/thumb/b/b1/Syngenta.svg/120px-Syngenta.svg.png "Syngenta")

Syngenta is a global business operating in the agro-chemical sector, with its
headquarters in Switzerland. It produces and sells crop protection products, seeds,
and products for lawn and gardens. It is active on a vertically-integrated basis in the
research, development, manufacture and marketing of a wide range of crop
protection products and seeds.

They required a system to track experimental research. This required bridging legacy and new systems in a continuous streaming platform whereby all systems push updates into the other systems. This allows systems to leverage other systems data and logic in a flexible "Hub and Spoke" flexible based approach.

## Highlights

**Per Country adapters** for each country's own system

- A [GRPC] (<https://grpc.io/>) API allowed each countries own systems to easily connect and stay up to date with the global HUB.
- Each stakeholder can retain all the logic and security aspects within their own fiefdom, independent of the global system allowing self autonomy and legal obligations to be respected.

**Ontology**

- A [RDF triple store] (<https://en.wikipedia.org/wiki/Triplestore>) based storage to provide a dynamically expanding ontology for the many types.
- Localised using open standards ( i18n and l10N ) to provide real time language translation.

**Data Storage**

- Global Indexing system indexing all sub systems data to allow global cross system searching.
- Global Blob storage allowing any binary data to be aggregated and adapted to the localisation needs with a SQL API.
- Global SQL streaming database based on CDC ( Change Data Capture) of the various Oracle systems.
