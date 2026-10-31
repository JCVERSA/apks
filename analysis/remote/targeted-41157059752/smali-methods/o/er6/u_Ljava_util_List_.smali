.method public u()Ljava/util/List;
    .locals 11

    const-string v7, "dE_modCiStD e"

    const-string v7, "add_time DESC"

    const/4 v10, 0x3

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_0
    const/4 v10, 0x1

    const-string v1, "tbl_slog_report"

    const/4 v6, 0x0

    const/4 v10, 0x5

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v10, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 v10, 0x1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v10, 0x6

    if-eqz v1, :cond_0

    new-instance v1, Lo/vk6;

    invoke-direct {v1}, Lo/vk6;-><init>()V

    invoke-virtual {v1, v9}, Lo/vk6;->onReadFromDatabase(Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x6

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v10, 0x5

    goto :goto_1

    :cond_0
    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    const/4 v10, 0x3

    invoke-static {v0}, Lo/uu0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :goto_1
    const/4 v10, 0x5

    invoke-static {v9}, Lo/xe3;->a(Landroid/database/Cursor;)V

    const/4 v10, 0x5

    throw v0
.end method
