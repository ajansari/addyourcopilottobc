# addyourcopilottobc
Sample code to help you deploy your custom Copilot or Agent built in Copilot Studio inside Business Central

# details
In this repo, you will find sample code for deploying your custom Copilot or Agent in Business Central as an iframe in the following formats:
1. Card Page
2. CardPart (Page Page) + Adding the part to a Role Center as a Page Extension

While the examples show a Copilot / Agent built in Copilot Studio, technically this could be used to deploy a Web version of an Agent developed in any platform. Or even to deploy any HTML website inside a Card or CardPart page.

I have included some formatting like a border with rounded edges, page zoom, etc.

# authentication
At least for Copilot Studio, you will either need to disable authentication or set manual authentication for your agent. Copilots / Agents deployed with the "Authenticate with Microsoft" do not allow for deployment on a website, and therefore cannot be added into BC as a Card or CardPart. 

As of January 2025, there is no possibility to deploy your custom Agents built in Copilot Studio as a declarative agent or plugin for Business Central's own Copilot chat experience.
