.method public declared-synchronized d0()Lo/ul0;
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x4

    const/4 v9, 0x0

    :try_start_1
    const/4 v10, 0x5

    const-string v1, "tbl_slog_check"

    const-string v3, " oli butrlls ansunlonn n  tdhp aluti"

    const-string v3, "url is not null and path is not null"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const/4 v10, 0x7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v10, 0x2

    if-eqz v1, :cond_0

    new-instance v9, Lo/ul0;

    invoke-direct {v9}, Lo/ul0;-><init>()V

    invoke-virtual {v9, v0}, Lo/ul0;->onReadFromDatabase(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v9, v0

    const/4 v10, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    const/4 v10, 0x5

    invoke-static {v0}, Lo/xe3;->a(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v9

    :catchall_1
    move-exception v0

    const/4 v10, 0x4

    goto :goto_2

    :catchall_2
    move-exception v1

    :goto_1
    :try_start_4
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    throw v1

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
