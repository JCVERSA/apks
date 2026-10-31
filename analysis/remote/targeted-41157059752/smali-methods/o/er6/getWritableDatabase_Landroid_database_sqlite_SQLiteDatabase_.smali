.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    :try_start_0
    const/4 v3, 0x6

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x5

    return-object v0

    :catch_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x6

    const-string v1, "bltdgo."

    const-string v1, "slog.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/16 v2, 0x10

    const/4 v3, 0x6

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x2

    return-object v0
.end method
