page 50090 "Company Info Bottom ITB"
{
    PageType = Card;
    //ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = "Company Information";
    CaptionML = DAN = 'Virksomhedsoplysninger bundtekster - for alle raporter', ENU = 'Company Info Bottom - for alle reports';
    InsertAllowed = false;
    DeleteAllowed = false;

    //bottom lines 4 to 5 fields

    layout
    {
        area(Content)
        {
            group("Opsætning af bundlinjer")
            {

                group("Linje 1")
                {
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

                    field(Param09; Rec.Param09)
                    {
                        ApplicationArea = All;
                    }
                }
                group("Linje 2")
                {
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

                    field(Param10; Rec.Param10)
                    {
                        ApplicationArea = All;
                    }
                }

            }
            group(ReportEncoding)
            {
                CaptionML = DAN = 'Report Encoding - udpakning af danske æøå', ENU = 'Report EWndocing';
                field("Report Encoding"; Rec."Report Encoding")
                {
                    ApplicationArea = All;
                }
            }
        }
    }


    var
        myInt: Integer;

}