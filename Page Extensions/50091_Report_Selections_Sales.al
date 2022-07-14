pageextension 50091 "Report_Selections_Sales" extends "Report Selection - Sales"

//  Params - Sales

{
    PromotedActionCategoriesML = DAN = 'Ny,Behandling,Rapporter,Opsætning',
                                 ENU = 'New,Process,Report,SetUp';

    actions
    {
        addfirst(Navigation)
        {
            action("Setup")
            {
                ApplicationArea = All;
                CaptionML = DAN = 'Opsætning',
                            ENU = 'Setup';
                Image = Setup;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    myInt: Integer;
                    ReportSelectionRec: Record "Report Selections";
                    ReportSelectionSetup: Page 50091;
                    EnumInteger: Integer;  //HBK - 210521
                    EnumOption: Option "S.Quote","S.Order","S.Invoice","S.Cr.Memo","S.Test","P.Quote","P.Order","P.Invoice","P.Cr.Memo","P.Receipt","P.Ret.Shpt.","P.Test","B.Stmt","B.Recon.Test","B.Check",Reminder,"Fin.Charge","Rem.Test","F.C.Test","Prod. Order","S.Blanket","P.Blanket",M1,M2,M3,M4,Inv1,Inv2,Inv3,"SM.Quote","SM.Order","SM.Invoice","SM.Credit Memo","SM.Contract Quote","SM.Contract","SM.Test","S.Return","P.Return","S.Shipment","S.Ret.Rcpt.","S.Work Order","Invt. Period Test","SM.Shipment","S.Test Prepmt.","P.Test Prepmt.","S.Arch. Quote","S.Arch. Order","P.Arch. Quote","P.Arch. Order","S. Arch. Return Order","P. Arch. Return Order","Asm. Order","P.Assembly Order","S.Order Pick Instruction",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"C.Statement","V.Remittance",JQ,"S.Invoice Draft","Pro Forma S. Invoice","S. Arch. Blanket Order","P. Arch. Blanket Order";  //HBK / 210521
                begin
                    Clear(ReportSelectionRec);
                    ReportSelectionRec.SetRange(usage, Rec.Usage);
                    ReportSelectionRec.SetRange("Report ID", Rec."Report ID");

                    Clear(ReportSelectionSetup);
                    ReportSelectionSetup.SetTableView(ReportSelectionRec);
                    ReportSelectionSetup.SetSales;

                    //-> HBK 210521
                    EnumInteger := rec.Usage.AsInteger();
                    EnumOption := EnumInteger;
                    ReportSelectionSetup.SetUsage(EnumOption);
                    // <- HBK 210521

                    //HBK / ITB - 210521 erstattet af ovenstående ReportSelectionSetup.SetUsage(Rec.Usage);

                    ReportSelectionSetup.RunModal;
                end;
            }

            action("Setup Bottom")
            {
                ApplicationArea = All;
                CaptionML = DAN = 'Opsætning bundlinjer',
                            ENU = 'Setup Bottom lines';
                Image = Setup;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    CompanyInformationRec: Record "Company Information";
                    CompanyInformationPage: Page 50090;
                begin
                    Clear(CompanyInformationRec);
                    CompanyInformationRec.SetRange("Primary Key", '');

                    Clear(CompanyInformationPage);
                    CompanyInformationPage.SetTableView(CompanyInformationRec);
                    CompanyInformationPage.RunModal;
                end;
            }
        }
    }

    var
        myInt: Integer;
        SetUpVisible: Boolean;

    trigger OnAfterGetRecord()
    begin
        SetUpVisible := false;
        If Rec."Do Not Delete" then
            SetUpVisible := true;
    end;
}