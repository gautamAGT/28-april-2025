tableextension 50502 CustomFieldValue extends "Sales Line"
{
    fields
    {

        field(50551; "Requested Delivery Date AGT"; Date)
        {

            trigger OnValidate()
            var
                ErrorMessage: Code[30];
                CurrDate: Date;
                UpdatedDate: Date;
            begin
                CurrDate := Today;

                if "Requested Delivery Date AGT" <= CurrDate then
                    Error('This Date should be later than Today Date');

                UpdatedDate := "Requested Delivery Date AGT" - 2;
                Message(Format(UpdatedDate));
                "Shipment Date" := UpdatedDate;
            end;

        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}