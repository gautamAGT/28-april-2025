pageextension 50503 AGTCusotmField extends "Sales Order Subform"
{
    layout
    {
        // Add changes to page layout here
        addafter("Shipment Date")
        {
            field("Requested Delivery Date AGT"; Rec."Requested Delivery Date AGT")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}