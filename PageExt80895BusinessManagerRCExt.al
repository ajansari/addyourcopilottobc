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