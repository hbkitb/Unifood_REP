table 50090 ITBBlob
{

    Caption = 'ITBBlob';

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; Blob; BLOB)
        {
            Caption = 'Blob';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
        }
    }

    fieldgroups
    {
    }

    var
        GlobalInStream: InStream;
        GlobalOutStream: OutStream;
        ReadLinesInitialized: Boolean;
        WriteLinesInitialized: Boolean;
        NoContentErr: Label 'The BLOB field is empty.';
        UnknownImageTypeErr: Label 'Unknown image type.';
        XmlCannotBeLoadedErr: Label 'The XML cannot be loaded.';

    [Scope('Cloud')]
    procedure WriteAsText(Content: Text; Encoding: TextEncoding)
    var
        OutStr: OutStream;
    begin
        CLEAR(Blob);
        IF Content = '' THEN
            EXIT;
        Blob.CREATEOUTSTREAM(OutStr, Encoding);
        OutStr.WRITETEXT(Content);
    end;

    [Scope('Cloud')]
    procedure ReadAsText(LineSeparator: Text; Encoding: TextEncoding) Content: Text
    var
        InStream: InStream;
        ContentLine: Text;
    begin
        Blob.CREATEINSTREAM(InStream, Encoding);

        InStream.READTEXT(Content);
        WHILE NOT InStream.EOS DO BEGIN
            InStream.READTEXT(ContentLine);
            Content += LineSeparator + ContentLine;
        END;
    end;

    [Scope('Cloud')]
    procedure ReadAsTextWithCRLFLineSeparator(): Text
    var
        CRLF: Text[2];
    begin
        CRLF[1] := 13;
        CRLF[2] := 10;
        EXIT(ReadAsText(CRLF, TEXTENCODING::UTF8));
    end;

    [Scope('Cloud')]
    procedure StartReadingTextLines(Encoding: TextEncoding)
    begin
        Blob.CREATEINSTREAM(GlobalInStream, Encoding);
        ReadLinesInitialized := TRUE;
    end;

    [Scope('Cloud')]
    procedure StartWritingTextLines(Encoding: TextEncoding)
    begin
        CLEAR(Blob);
        Blob.CREATEOUTSTREAM(GlobalOutStream, Encoding);
        WriteLinesInitialized := TRUE;
    end;

    [Scope('Cloud')]
    procedure MoreTextLines(): Boolean
    begin
        IF NOT ReadLinesInitialized THEN
            StartReadingTextLines(TEXTENCODING::Windows);
        EXIT(NOT GlobalInStream.EOS);
    end;

    [Scope('Cloud')]
    procedure ReadTextLine(): Text
    var
        ContentLine: Text;
    begin
        IF NOT MoreTextLines THEN
            EXIT('');
        GlobalInStream.READTEXT(ContentLine);
        EXIT(ContentLine);
    end;

    [Scope('Cloud')]
    procedure WriteTextLine(Content: Text)
    begin
        IF NOT WriteLinesInitialized THEN
            StartWritingTextLines(TEXTENCODING::Windows);
        GlobalOutStream.WRITETEXT(Content);
    end;


}

