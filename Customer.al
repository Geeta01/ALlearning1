table 50111 EmployeeNew
{
    Caption = 'Employee';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "emp code"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "emp name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; salary; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; DOJ; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; City; Option)
        {
            OptionMembers = Chennai,Delhi,Dehradun,Bangalore;
            DataClassification = ToBeClassified;
        }
        field(6; gender; Option)
        {
            OptionMembers = M,F,O;
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "emp code")
        {
            Clustered = true;
        }
        key(sk; "City")
        {

        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        Message('Data inserted');
    end;

    trigger OnModify()
    begin
        Message('Data modified');
    end;

    trigger OnDelete()
    begin
        Message('Data deleted');
    end;

    trigger OnRename()
    begin
        Message('Data renamed');
    end;

}