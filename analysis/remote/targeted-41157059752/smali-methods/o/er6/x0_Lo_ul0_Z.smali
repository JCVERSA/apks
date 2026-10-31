.method public x0(Lo/ul0;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v7, 0x4

    return v0

    :cond_0
    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v7, 0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v2}, Lo/ul0;->onAddToDatabase(Landroid/content/ContentValues;)V

    const/4 v7, 0x4

    const-wide/16 v3, 0x0

    :try_start_0
    const/4 v7, 0x4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p1, "stogkhbl_tclc_"

    const-string p1, "tbl_slog_check"

    const-string v5, "ats=g"

    const-string v5, "tag=?"

    const/4 v7, 0x3

    const-string v6, "logcat"

    const/4 v7, 0x4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, p1, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v7, 0x6

    int-to-long v3, p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v7, 0x4

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v7, 0x6

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x7

    const-wide/16 v1, 0x1

    const-wide/16 v1, 0x1

    const/4 v7, 0x7

    cmp-long p1, v3, v1

    const/4 v7, 0x1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :goto_2
    const/4 v7, 0x6

    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v7, 0x7

    throw p1
.end method
