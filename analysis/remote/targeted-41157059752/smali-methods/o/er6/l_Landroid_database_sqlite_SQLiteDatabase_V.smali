.method public final l(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "REE)u_bX_Sg ;EdlEFCV  NRFcT ORT,P)8tM(e ITXpTC,tA_acRE5C,N0 O2CSN H2T Bh TAa ITtxTN T_AAma TRcONTK (SU(TCtAEERI iYeITk_gERGhRSIgIihOEdtnx_XX,e_TERsblaHA)IsEkr TttcEgAMihIY N,(GxIEacE te_  lg4N  etN,oEdlbAVT;RdloArDLIa  sceNEX  GEERkRE)"

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_slog_check (_id INTEGER PRIMARY KEY AUTOINCREMENT,tag VARCHAR(255),url TEXT,add_time INTEGER,path VARCHAR(2048),next_check INTEGER,extras TEXT);CREATE INDEX IF NOT EXISTS tag_idx ON tbl_slog_check( tag );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
