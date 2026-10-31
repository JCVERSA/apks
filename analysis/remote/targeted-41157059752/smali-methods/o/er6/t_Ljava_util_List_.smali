.method public declared-synchronized t()Ljava/util/List;
    .locals 11

    const/4 v10, 0x7

    monitor-enter p0

    :try_start_0
    const/4 v10, 0x2

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x7

    const/4 v9, 0x0

    :try_start_1
    const/4 v10, 0x2

    const-string v1, "lksso_lhcgebc_"

    const-string v1, "tbl_slog_check"

    const-string v3, "url is not null and path is not null"

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v10, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 v10, 0x5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v10, 0x4

    if-eqz v1, :cond_0

    const/4 v10, 0x7

    new-instance v1, Lo/ul0;

    const/4 v10, 0x6

    invoke-direct {v1}, Lo/ul0;-><init>()V

    invoke-virtual {v1, v9}, Lo/ul0;->onReadFromDatabase(Landroid/database/Cursor;)V

    const/4 v10, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x7

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v10, 0x3

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    invoke-static {v0}, Lo/uu0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v10, 0x2

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    const/4 v10, 0x3

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v10, 0x4

    throw v0
.end method
