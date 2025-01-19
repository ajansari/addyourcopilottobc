// This shows an example of your custom copilot / agent deployed into a blank Card Page
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
                   '<center><iframe src="<replace this with your custom copilot / agent URL" ' +
                   'frameborder="0" ' +
                   'style="width: 98%; height: 98%;">' +
                   '</iframe></center>' +
                   '</body>' +
                   '</html>';
    end;
    // When you deploy an agent from Copilot Studio for a website, you will receive an embed code chunk similar to this:
    // <!DOCTYPE html><html><body><iframe src="https://copilotstudio.preview.microsoft.com/environments/###################/bots/crb18_######/webchat?__version__=2" frameborder="0" style="width: 100%; height: 100%;"></iframe></body></html>
    // Simply copy the URL portion with all the parameters from the above embed code (everything appearing between the two double quotes) and paste them in the placeholder inside the procedure.
}
