.method public k(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x7

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "ostboropegl__tr"

    const-string v1, "tbl_slog_report"

    const/4 v3, 0x0

    const-string v2, "b=ga?"

    const-string v2, "tag=?"

    const/4 v3, 0x0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v3, 0x4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x4

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v3, 0x3

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x5

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    return-void

    :goto_2
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x5

    throw p1
.end method
