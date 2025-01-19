//This shows how you can add your CardPart Page to a Role Center as a Page Extension
pageextension 80895 "Business Manager RC Ext" extends "Business Manager Role Center"
{
    layout
    {
        addlast(rolecenter)
        {
            part(CopilotGuidePart; "Copilot Guide Part")
            {
                ApplicationArea = All;
            }
        }
    }
}
