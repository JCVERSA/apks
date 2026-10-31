.method public f()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "tbl_slog_download"

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    const/4 v3, 0x5

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x6

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method
