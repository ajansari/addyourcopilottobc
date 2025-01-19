page 80897 "BC Copilot"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            usercontrol(CopilotGuideFrame; "Microsoft.Dynamics.Nav.Client.WebPageViewer")
            {
                ApplicationArea = All;

                trigger ControlAddInReady(Content: Text)
                begin
                    CurrPage.CopilotGuideFrame.SetContent(GetHTMLContent());
                end;
            }
        }
    }

    local procedure GetHTMLContent() Content: Text
    begin
        Content := '<!DOCTYPE html>' +
                   '<html>' +
                   '<body>' +
                   '<style>' +
                   'iframe {' +
                   '    border: 2px solid #ccc;' +
                   '    border-radius: 12px;' +
                   '    zoom: 1.2;' +
                   '}' +
                   '</style>' +
                   '<center><iframe src="https://copilotstudio.preview.microsoft.com/environments/75f08cb7-7e0e-eb8e-8737-33b11299db04/bots/crb18_agentBc/webchat?__version__=2" ' +
                   'frameborder="0" ' +
                   'style="width: 98%; height: 98%;">' +
                   '</iframe></center>' +
                   '</body>' +
                   '</html>';
    end;
}