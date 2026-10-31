.method public t0(I)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Lo/er6;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v11, 0x4

    new-instance v9, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move v11, v10

    :try_start_0
    const-string v7, "addTime DESC"

    const/4 v11, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    const-string p1, ""

    const/4 v11, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v1, "nowm_ltdoosla_dlg"

    const-string v1, "tbl_slog_download"

    const/4 v5, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    shl-int/2addr v11, v6

    const/4 v2, 0x0

    move v11, v2

    const/4 v3, 0x0

    const/4 v11, 0x5

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :goto_0
    const/4 v11, 0x7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    const/4 v11, 0x1

    if-eqz p1, :cond_0

    const/4 v11, 0x0

    new-instance p1, Lo/wu1;

    invoke-direct {p1}, Lo/wu1;-><init>()V

    invoke-virtual {p1, v10}, Lo/wu1;->onReadFromDatabase(Landroid/database/Cursor;)V

    const/4 v11, 0x4

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x4

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v11, 0x5

    goto :goto_1

    :cond_0
    invoke-static {v10}, Lo/xe3;->a(Landroid/database/Cursor;)V

    return-object v9

    :goto_1
    const/4 v11, 0x7

    invoke-static {v10}, Lo/xe3;->a(Landroid/database/Cursor;)V

    throw p1
.end method
