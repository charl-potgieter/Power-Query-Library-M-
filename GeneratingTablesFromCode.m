/*-------------------------------------------------------------------------------------------------------------------------
        Different options to generate a table from code
-------------------------------------------------------------------------------------------------------------------------*/



let

    tbl_Simple = #table({"header1", "header2"}, {{1,2}, {3,4}}),

    tbl_FromRecords = Table.FromRecords({[Header1=1, Header2=2, Header3=3], [Header1=2, Header2=5, Header3=7]})

in
    tbl_FromRecords