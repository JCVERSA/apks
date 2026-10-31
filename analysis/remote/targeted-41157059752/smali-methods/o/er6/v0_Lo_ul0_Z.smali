.method public v0(Lo/ul0;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v10, 0x5

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v10, 0x1

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v10, 0x6

    new-instance v2, Landroid/content/ContentValues;

    const/4 v10, 0x6

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v2}, Lo/ul0;->onAddToDatabase(Landroid/content/ContentValues;)V

    const/4 v10, 0x6

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v5, "tbl_slog_check"

    const/4 v10, 0x1

    const-string v6, "bd_?i"

    const-string v6, "_id=?"

    const/4 v10, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v10, 0x6

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x2

    invoke-virtual {p1}, Lo/kb1;->getId()J

    move-result-wide v8

    const/4 v10, 0x6

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x0

    invoke-virtual {v1, v5, v2, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v10, 0x3

    int-to-long v3, p1

    const/4 v10, 0x3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v10, 0x7

    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v10, 0x6

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 v10, 0x7

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const/4 v10, 0x2

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x4

    goto :goto_0

    :goto_1
    const-wide/16 v1, 0x1

    cmp-long p1, v3, v1

    const/4 v10, 0x7

    if-nez p1, :cond_1

    const/4 v10, 0x2

    const/4 v0, 0x1

    :cond_1
    const/4 v10, 0x3

    return v0

    :goto_2
    invoke-static {v1}, Lo/er6;->u0(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method
