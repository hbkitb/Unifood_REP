page 50091 "Report Selections Setup ITB"
{


    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    PromotedActionCategoriesML = DAN = 'Ny,Process,Rapporter,Tekster', ENU = 'New,Process,Reports,Texts';
    SourceTable = "Report Selections";
    DataCaptionExpression = FORMAT(Rec."Report ID") + ' - ' + Rec."Report Caption";
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                CaptionML = DAN = 'Opsætning', ENU = 'Setup';

                group(Sales_Parameters)
                {
                    CaptionML = DAN = 'Parametre', ENU = 'Parameters';
                    Visible = ShowSales;

                    field(Param01; Rec.Param01)
                    {
                        ApplicationArea = All;
                    }
                    field(Param02; Rec.Param02)
                    {
                        ApplicationArea = All;
                    }
                    field(Param03; Rec.Param03)
                    {
                        ApplicationArea = All;
                    }
                    field(Param04; Rec.Param04)
                    {
                        ApplicationArea = All;
                    }
                    field(Param05; Rec.Param05)
                    {
                        ApplicationArea = All;
                    }
                    field(Param06; Rec.Param06)
                    {
                        ApplicationArea = All;
                    }
                    field(Param07; Rec.Param07)
                    {
                        ApplicationArea = All;
                    }
                    field(Param08; Rec.Param08)
                    {
                        ApplicationArea = All;
                    }
                    field(Param09; Rec.Param09)
                    {
                        ApplicationArea = All;
                    }
                    field(Param10; Rec.Param10)
                    {
                        ApplicationArea = All;
                    }
                    field(Param11; Rec.Param11)
                    {
                        ApplicationArea = All;
                    }
                    field(Param12; Rec.Param12)
                    {
                        ApplicationArea = All;
                    }
                    field(Param13; Rec.Param13)
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }
                    field(Param14; Rec.Param14)
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }
                    field(Param15; Rec.Param15)
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }
                }
                group(Purchase_Parameters)
                {
                    CaptionML = DAN = 'Parametre', ENU = 'Parameters';
                    Visible = ShowPurchase;
                    field(PParam01; Rec.PParam01)
                    {
                        ApplicationArea = All;

                    }
                    field(PParam02; Rec.PParam02)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam03; Rec.PParam03)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam04; Rec.PParam04)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam05; Rec.PParam05)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam06; Rec.PParam06)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam07; Rec.PParam07)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam08; Rec.PParam08)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam09; Rec.PParam09)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam10; Rec.PParam10)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam11; Rec.PParam11)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam12; Rec.PParam12)
                    {
                        ApplicationArea = All;
                    }
                    field(PParam13; Rec.PParam13)
                    {
                        ApplicationArea = All;
                        Visible = false;

                    }
                    field(PParam14; Rec.PParam14)
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }
                    field(PParam15; Rec.PParam15)
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }


                }
                group("Skjul")
                {
                    CaptionML = DAN = 'Skjul', ENU = 'Hides';
                    field("Drop Delivery Address"; Rec."Drop Delivery Address")
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Skjul leveringsadresse', ENU = 'Hide Delivery Address';
                    }
                    field("Drop Item No Column"; Rec."Drop Item No Column")
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Skjul kolonne varenummer', ENU = 'Hide Item No Column';
                        Visible = ShowSales;

                    }
                    field("Drop Bank Info at FIK"; Rec."Drop Bank Info at FIK")
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Skjul bankoplysninger ved FIK', ENU = 'Hide Bank Info at FIK';
                        Visible = ShowSales;

                    }
                    field("Drop Work Description"; Rec."Drop Work Description")
                    {
                        ApplicationArea = All;
                        CaptionML = DAN = 'Skjul arbejdsbeskrivelse', ENU = 'Hide Work Description';
                        Visible = ShowSales;
                    }
                }
                group("Item Line Options")
                {
                    CaptionML = DAN = 'Vare linje options', ENU = 'Item Line Options';
                    field("Show Customer Item No."; Rec."Show Customer Item No.")
                    {
                        ApplicationArea = All;
                        Visible = ShowSales;
                    }
                    field("Show Vendor Item No."; Rec."Show Vendor Item No.")
                    {
                        ApplicationArea = All;
                        Visible = ShowSales;
                    }
                    field("Show Barcode"; Rec."Show Barcode")
                    {
                        ApplicationArea = All;
                    }
                    field("Show Tariff. No"; Rec."Show Tariff. No")
                    {
                        ApplicationArea = All;
                        Visible = ShowSales;
                    }
                    field("Show Country of Origin"; Rec."Show Country of Origin")
                    {
                        ApplicationArea = All;
                        Visible = ShowSales;
                    }
                    field("Show Country Same Line"; Rec."Show Country Same Line")
                    {
                        ApplicationArea = All;
                        Visible = ShowSales;
                    }
                    field("Show Weight"; Rec."Show Weight")
                    {
                        ApplicationArea = All;
                        Visible = ShowWeightField;
                    }
                }

            }

        }
    }

    actions
    {
        area(processing)
        {
            action("Fixed Formular texts")
            {
                ApplicationArea = All;
                CaptionML = DAN = 'Faste formulartekster', ENU = 'Fixed Formular texts';
                Ellipsis = true;
                Image = Text;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;

                trigger OnAction()
                begin


                    // check if header exists
                    CLEAR(StandardText);
                    StandardText.SETRANGE(StandardText.Code, FORMAT(Rec."Report ID"));
                    IF NOT StandardText.FINDSET THEN BEGIN
                        StandardText.Code := FORMAT(Rec."Report ID");
                        CASE Rec."Report ID" OF
                            50020:
                                StandardText.Description := 'Faktura';
                            50021:
                                StandardText.Description := 'Kreditnota';
                            50022:
                                StandardText.Description := 'Tilbud';
                            50023:
                                StandardText.Description := 'Leverance';
                            50024:
                                StandardText.Description := 'Kontoudtog';
                            50025:
                                StandardText.Description := 'Rykker';
                            50026:
                                StandardText.Description := 'Salgsordre';
                            50027:
                                StandardText.Description := 'Proforma faktura';
                            50028:
                                StandardText.Description := 'Indkøbsordre';
                            50030:
                                StandardText.Description := 'Rentenota';
                        END;

                        StandardText.INSERT;
                    END;

                    // make fixed reports texts
                    LanguageCode := 'DAN';
                    CreateLanguageTexts;
                    LanguageCode := 'DEU';
                    CreateLanguageTexts;
                    LanguageCode := 'ENU';
                    CreateLanguageTexts;
                    COMMIT;

                    CLEAR(ExtendedTextHeader);
                    ExtendedTextHeader.SETRANGE(ExtendedTextHeader."Table Name", ExtendedTextHeader."Table Name"::"Standard Text");
                    ExtendedTextHeader.SETRANGE(ExtendedTextHeader."No.", StandardText.Code);

                    CLEAR(ExtendedTextList);
                    ExtendedTextList.SETTABLEVIEW(ExtendedTextHeader);
                    ExtendedTextList.RUNMODAL;

                end;
            }
        }
    }

    var
        myInt: Integer;

    trigger OnAfterGetRecord()
    begin
        Rec.CalcFields("Report Caption");

    end;

    var
        StandardText: Record "Standard Text";
        ExtendedTextHeader: Record "Extended Text Header";
        ExtendedTextList: Page "Extended Text List";
        LanguageCode: Code[10];
        ShowSales: Boolean;
        ShowPurchase: Boolean;
        ShowWeightField: Boolean;
        ThisUsage: Option "S.Quote","S.Order","S.Invoice","S.Cr.Memo","S.Test","P.Quote","P.Order","P.Invoice","P.Cr.Memo","P.Receipt","P.Ret.Shpt.","P.Test","B.Stmt","B.Recon.Test","B.Check",Reminder,"Fin.Charge","Rem.Test","F.C.Test","Prod. Order","S.Blanket","P.Blanket",M1,M2,M3,M4,Inv1,Inv2,Inv3,"SM.Quote","SM.Order","SM.Invoice","SM.Credit Memo","SM.Contract Quote","SM.Contract","SM.Test","S.Return","P.Return","S.Shipment","S.Ret.Rcpt.","S.Work Order","Invt. Period Test","SM.Shipment","S.Test Prepmt.","P.Test Prepmt.","S.Arch. Quote","S.Arch. Order","P.Arch. Quote","P.Arch. Order","S. Arch. Return Order","P. Arch. Return Order","Asm. Order","P.Assembly Order","S.Order Pick Instruction",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"C.Statement","V.Remittance",JQ,"S.Invoice Draft","Pro Forma S. Invoice","S. Arch. Blanket Order","P. Arch. Blanket Order";

    local procedure CreateLanguageTexts()
    begin
        CLEAR(ExtendedTextHeader);
        ExtendedTextHeader.SETRANGE(ExtendedTextHeader."Table Name", ExtendedTextHeader."Table Name"::"Standard Text");
        ExtendedTextHeader.SETRANGE(ExtendedTextHeader."No.", StandardText.Code);
        ExtendedTextHeader.SETRANGE(ExtendedTextHeader."Language Code", LanguageCode);
        IF NOT ExtendedTextHeader.FINDSET THEN BEGIN
            ExtendedTextHeader."Table Name" := ExtendedTextHeader."Table Name"::"Standard Text";
            ExtendedTextHeader."No." := StandardText.Code;
            ExtendedTextHeader."Language Code" := LanguageCode;
            ExtendedTextHeader.Description := StandardText.Description;
            ExtendedTextHeader."All Language Codes" := FALSE;
            ExtendedTextHeader.INSERT;

        END;
    end;

    procedure SetSales()
    begin
        ShowSales := TRUE;
    end;

    procedure SetPurchase()
    begin
        ShowPurchase := TRUE;
    end;

    procedure SetUsage(PassUsage: Option "S.Quote","S.Order","S.Invoice","S.Cr.Memo","S.Test","P.Quote","P.Order","P.Invoice","P.Cr.Memo","P.Receipt","P.Ret.Shpt.","P.Test","B.Stmt","B.Recon.Test","B.Check",Reminder,"Fin.Charge","Rem.Test","F.C.Test","Prod. Order","S.Blanket","P.Blanket",M1,M2,M3,M4,Inv1,Inv2,Inv3,"SM.Quote","SM.Order","SM.Invoice","SM.Credit Memo","SM.Contract Quote","SM.Contract","SM.Test","S.Return","P.Return","S.Shipment","S.Ret.Rcpt.","S.Work Order","Invt. Period Test","SM.Shipment","S.Test Prepmt.","P.Test Prepmt.","S.Arch. Quote","S.Arch. Order","P.Arch. Quote","P.Arch. Order","S. Arch. Return Order","P. Arch. Return Order","Asm. Order","P.Assembly Order","S.Order Pick Instruction",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"C.Statement","V.Remittance",JQ,"S.Invoice Draft","Pro Forma S. Invoice","S. Arch. Blanket Order","P. Arch. Blanket Order")
    begin

        ThisUsage := PassUsage;

        ShowWeightField := FALSE;
        IF (ThisUsage = ThisUsage::"S.Invoice") OR (ThisUsage = ThisUsage::"S.Shipment") THEN
            ShowWeightField := TRUE;
        CurrPage.UPDATE;

    end;

}