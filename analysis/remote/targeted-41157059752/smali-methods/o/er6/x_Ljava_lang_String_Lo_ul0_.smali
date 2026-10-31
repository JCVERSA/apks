.method public declared-synchronized x(Ljava/lang/String;)Lo/ul0;
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x7

    const/4 v9, 0x0

    :try_start_1
    const-string v1, "bsh_ltlopc_gce"

    const-string v1, "tbl_slog_check"

    const-string v3, "tag=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    xor-int/2addr v10, v6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const/4 v10, 0x7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x6

    new-instance v9, Lo/ul0;

    const/4 v10, 0x4

    invoke-direct {v9}, Lo/ul0;-><init>()V

    const/4 v10, 0x2

    invoke-virtual {v9, p1}, Lo/ul0;->onReadFromDatabase(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, p1

    const/4 v10, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-static {p1}, Lo/xe3;->a(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    const/4 v10, 0x1

    return-object v9

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_1
    :try_start_4
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    const/4 v10, 0x3

    throw v0

    :goto_2
    const/4 v10, 0x2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v10, 0x2

    throw p1
.end method
