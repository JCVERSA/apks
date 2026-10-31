.method public final p(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, " bNmtlNdlGASo sCa Rp EIeosxDTr(t_Il(NIE g rXaEANgSEp;_UoXEEdR ONAiETERIaTIXmS 5aTOErSbdEa  ei md,EN, )R__ Nad,T_tIpPItpE_  _ NT_Tea(GrEtAETCgIEfiOYpAtxTCed e IAeItTbYTEtaITl  rtLA) OTSTi,isTiT)VtToEKalTe  N NOEDtgnx,eTgrMIaCF_2eltdN srsT_ SlXelt_lIT,AERORXEIMEo;e  _ dNmmXITEtBXSR)NF  GttH_5 Eu ;rER tFRt,CtA o_tmCX NiR(RdgYam"

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_slog_report (_id INTEGER PRIMARY KEY AUTOINCREMENT,file_name TEXT,tag VARCHAR(255),url TEXT,add_time INTEGER,last_attempt INTEGER,attempt TINYINT,extras TEXT);CREATE INDEX IF NOT EXISTS tag_idx ON tbl_slog_report( tag );CREATE INDEX IF NOT EXISTS add_time_idx ON tbl_slog_report( add_time ASC );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
