.method public r0(Ljava/lang/String;)Lo/wu1;
    .locals 11

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v10, 0x6

    const/4 v9, 0x0

    :try_start_0
    const/4 v10, 0x5

    const-string v1, "olb_dbotw_sdgnall"

    const-string v1, "tbl_slog_download"

    const/4 v10, 0x6

    const-string v3, "blf?=e"

    const-string v3, "file=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x5

    const/4 v6, 0x0

    const/4 v10, 0x3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const/4 v10, 0x7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v10, 0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x5

    new-instance v9, Lo/wu1;

    const/4 v10, 0x7

    invoke-direct {v9}, Lo/wu1;-><init>()V

    const/4 v10, 0x7

    invoke-virtual {v9, p1}, Lo/wu1;->onReadFromDatabase(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, p1

    move-object v9, p1

    const/4 v10, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lo/xe3;->a(Landroid/database/Cursor;)V

    const/4 v10, 0x7

    return-object v9

    :catchall_1
    move-exception v0

    :goto_1
    const/4 v10, 0x3

    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    throw v0
.end method
