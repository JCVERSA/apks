.method public i(Lo/vk6;)V
    .locals 7

    const/4 v6, 0x4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x5

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v6, 0x1

    const-string v1, "sesblp__gtlroot"

    const-string v1, "tbl_slog_report"

    const-string v2, "=_?md"

    const-string v2, "_id=?"

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lo/kb1;->getId()J

    move-result-wide v4

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v6, 0x7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v6, 0x3

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    return-void

    :goto_2
    invoke-static {v0}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v6, 0x3

    throw p1
.end method
