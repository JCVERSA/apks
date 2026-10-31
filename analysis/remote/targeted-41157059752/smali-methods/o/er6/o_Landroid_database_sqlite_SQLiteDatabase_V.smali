.method public final o(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v1, 0x7

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_slog_download (_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,source TEXT,file TEXT,downloadUrl TEXT,addTime INTEGER);"

    const/4 v1, 0x3

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x1

    return-void
.end method
