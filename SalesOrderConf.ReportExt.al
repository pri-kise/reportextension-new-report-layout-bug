reportextension 50900 "PTE Sales - Order Conf." extends "Standard Sales - Order Conf."
{
    dataset
    {
        add(Header)
        {
            column(PTE_Dummy; 'Dummy')
            { }
        }
        addafter(LetterText)
        {
            dataitem(LeftHeader_PTE; "Name/Value Buffer")
            {
                DataItemTableView = sorting(ID);
                UseTemporary = true;

                column(LeftHeaderID_PTE; ID)
                {
                }
                column(LeftHeaderName_PTE; Name)
                {
                }
                column(LeftHeaderValue_PTE; Value)
                {
                }
            }
            dataitem(RightHeader_PTE; "Name/Value Buffer")
            {
                DataItemTableView = sorting(ID);
                UseTemporary = true;

                column(RightHeaderID_PTE; ID)
                {
                }
                column(RightHeaderName_PTE; Name)
                {
                }
                column(RightHeaderValue_PTE; Value)
                {
                }
            }
        }
    }
    rendering
    {
        layout("PTE Sales Order Conf.")
        {
            LayoutFile = './SalesOrderConf.rdlc';
            Type = RDLC;
        }
    }
}