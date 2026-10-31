.method public d(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v3, 0x0

    return-void

    :cond_0
    const/4 v3, 0x6

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const/4 v3, 0x4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "_kcmlsltceboh_"

    const-string v1, "tbl_slog_check"

    const/4 v3, 0x2

    const-string v2, "p?tho="

    const-string v2, "path=?"

    const/4 v3, 0x2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v3, 0x7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v3, 0x7

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v3, 0x4

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v3, 0x5

    return-void

    :goto_2
    const/4 v3, 0x2

    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method
