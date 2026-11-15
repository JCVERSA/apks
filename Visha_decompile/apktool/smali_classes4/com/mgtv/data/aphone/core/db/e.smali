.class public Lcom/mgtv/data/aphone/core/db/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/EventBean;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter v0

    .line 25
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v2, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 27
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    if-nez v2, :cond_0

    .line 28
    monitor-exit v0

    return-object v1

    .line 29
    :cond_0
    :try_start_3
    const-string v5, " create_time > date(?,?,?)"

    const-string p0, "now"

    const-string v3, "start of day"

    const-string v4, "-3 day"

    filled-new-array {p0, v3, v4}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "eventId"

    const-string v9, "bid  DESC "

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 30
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 31
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    :cond_1
    new-instance p1, Lcom/mgtv/data/aphone/core/bean/EventBean;

    invoke-direct {p1}, Lcom/mgtv/data/aphone/core/bean/EventBean;-><init>()V

    .line 33
    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->url:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->url:Ljava/lang/String;

    .line 34
    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->eventId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->eventId:Ljava/lang/String;

    .line 35
    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->bid:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    .line 36
    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->params:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    .line 37
    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->method:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->method:Ljava/lang/String;

    .line 38
    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->status:I

    .line 39
    sget-object v2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->create_time:Ljava/lang/String;

    .line 40
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 42
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    :cond_3
    monitor-exit v0

    return-object v1

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/b;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter v0

    .line 56
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 57
    :try_start_1
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    .line 58
    monitor-exit v0

    return-object v1

    .line 59
    :cond_0
    :try_start_2
    invoke-static {p2}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    const-string v6, " taskId = ?  "

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, " taskId,zip_path "

    const-string v10, " idx "

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 61
    :cond_1
    const-string v8, " taskId,zip_path "

    const-string v10, " idx "

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 62
    :goto_1
    const-string p2, "big_data_sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#################### getTraceTaskZipInfo()  tableName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   sql:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/mgtv/data/aphone/core/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 63
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 64
    :goto_2
    new-instance p2, Lcom/mgtv/data/aphone/core/bean/b;

    invoke-direct {p2}, Lcom/mgtv/data/aphone/core/bean/b;-><init>()V

    .line 65
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->reportUrl:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->c:Ljava/lang/String;

    .line 66
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->taskId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->a:Ljava/lang/String;

    .line 67
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->netStatus:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->d:I

    .line 68
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->localLog:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->e:I

    .line 69
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->logs:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->b:Ljava/lang/String;

    .line 70
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->f:I

    .line 71
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->upCount:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->g:I

    .line 72
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->idx:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->h:I

    .line 73
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->sum:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->i:I

    .line 74
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->log_path:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->k:Ljava/lang/String;

    .line 75
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->zip_path:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->j:Ljava/lang/String;

    .line 76
    sget-object v3, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;->create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskZipColumn;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/mgtv/data/aphone/core/bean/b;->l:Ljava/lang/String;

    .line 77
    const-string v3, "big_data_sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#################### getTraceTaskZipInfo()  tableName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p0, 0x1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/mgtv/data/aphone/core/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    move p0, v5

    goto/16 :goto_2

    .line 80
    :cond_3
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz v2, :cond_7

    .line 81
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_7

    .line 82
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_0
    if-eqz v2, :cond_6

    .line 83
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_6

    .line 84
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :goto_5
    if-eqz v2, :cond_5

    .line 85
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 86
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p0, :cond_7

    goto :goto_4

    .line 88
    :cond_7
    :goto_7
    monitor-exit v0

    return-object v1

    :goto_8
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/EventBean;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v2, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    .line 6
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    if-nez v2, :cond_0

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    :try_start_3
    invoke-static {p2}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    const-string v5, " bid = ? and create_time > date(?,?,?) "

    const-string p0, "now"

    const-string p3, "start of day"

    const-string v3, "-3 day"

    filled-new-array {p2, p0, p3, v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v9, " create_time "

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_2

    .line 10
    :cond_1
    const-string v5, " eventId = ? and create_time > date(?,?,?)  "

    const-string p0, "now"

    const-string p2, "start of day"

    const-string v3, "-3 day"

    filled-new-array {p3, p0, p2, v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v9, " create_time "

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_4

    .line 11
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 12
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    :cond_2
    new-instance p1, Lcom/mgtv/data/aphone/core/bean/EventBean;

    invoke-direct {p1}, Lcom/mgtv/data/aphone/core/bean/EventBean;-><init>()V

    .line 14
    sget-object p2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->url:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->url:Ljava/lang/String;

    .line 15
    sget-object p2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->eventId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->eventId:Ljava/lang/String;

    .line 16
    sget-object p2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->bid:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    .line 17
    sget-object p2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->params:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    .line 18
    sget-object p2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->method:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->method:Ljava/lang/String;

    .line 19
    sget-object p2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->status:I

    .line 20
    sget-object p2, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;->create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTaskColumn;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mgtv/data/aphone/core/bean/EventBean;->create_time:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_2

    .line 23
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :cond_4
    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3

    const-class p5, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter p5

    .line 89
    :try_start_0
    const-string v0, "big_data_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####################  upDateTraceTaskByTaskId() tableName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  zipPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    .line 91
    monitor-exit p5

    return-void

    .line 92
    :cond_0
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    const-string v1, "upConut"

    add-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string p4, " taskId = ? and zip_path = ? "

    filled-new-array {p3, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p4, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 96
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :cond_1
    :goto_0
    monitor-exit p5

    return-void

    :goto_1
    :try_start_4
    monitor-exit p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-class p4, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter p4

    .line 98
    :try_start_0
    const-string v0, "big_data_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####################  deleteTraceTaskByZipPath() tableName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  zipPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " taskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :try_start_1
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    .line 100
    monitor-exit p4

    return-void

    .line 101
    :cond_0
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string v0, "   zip_path = ?  and taskId = ?  "

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 103
    invoke-virtual {p0, p1, p2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 104
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :goto_1
    monitor-exit p4

    return-void

    :goto_2
    :try_start_4
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-class p3, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter p3

    .line 48
    :try_start_0
    const-string v0, "big_data_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####################  deleteTraceTaskByTaskId() tableName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  taskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    .line 50
    monitor-exit p3

    return-void

    .line 51
    :cond_0
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, " taskId = ? "

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p1, p2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 54
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    :goto_1
    monitor-exit p3

    return-void

    :goto_2
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    const-class v0, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter v0

    .line 44
    :try_start_0
    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bds database delete() tableName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    .line 46
    new-instance v1, Lcom/mgtv/data/aphone/core/db/e$2;

    invoke-direct {v1, p1}, Lcom/mgtv/data/aphone/core/db/e$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/mgtv/data/aphone/core/db/f;->a(Lcom/mgtv/data/aphone/core/db/h;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/EventBean;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    const-class v0, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/mgtv/data/aphone/core/db/e$1;

    invoke-direct {v1, p3, p2, p1}, Lcom/mgtv/data/aphone/core/db/e$1;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1, p4}, Lcom/mgtv/data/aphone/core/db/f;->a(Lcom/mgtv/data/aphone/core/db/h;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter v0

    .line 31
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 32
    :try_start_1
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 33
    monitor-exit v0

    return-object v1

    .line 34
    :cond_0
    :try_start_2
    invoke-static {p2}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 35
    const-string v6, " taskId = ?  "

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, " taskId,logs "

    const-string v10, " create_time "

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    move-object v2, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 36
    :cond_1
    const-string v8, " taskId,logs "

    const-string v10, " create_time "

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_4

    .line 37
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 38
    :cond_2
    new-instance p0, Lcom/mgtv/data/aphone/core/bean/a;

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/bean/a;-><init>()V

    .line 39
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->reportUrl:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/a;->c:Ljava/lang/String;

    .line 40
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->taskId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/a;->a:Ljava/lang/String;

    .line 41
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->netStatus:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/mgtv/data/aphone/core/bean/a;->d:I

    .line 42
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->localLog:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/mgtv/data/aphone/core/bean/a;->e:I

    .line 43
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->logs:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/a;->b:Ljava/lang/String;

    .line 44
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/mgtv/data/aphone/core/bean/a;->f:I

    .line 45
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;->create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpTraceTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/a;->g:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-nez p0, :cond_2

    .line 48
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz v2, :cond_7

    .line 49
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_7

    .line 50
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_0
    if-eqz v2, :cond_6

    .line 51
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_6

    .line 52
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_3
    if-eqz v2, :cond_5

    .line 53
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 55
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p0, :cond_7

    goto :goto_2

    .line 56
    :cond_7
    :goto_5
    monitor-exit v0

    return-object v1

    :goto_6
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/OffLineHbBean;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 2
    :try_start_1
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    :try_start_2
    invoke-static {p2}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p3}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 5
    const-string v6, " suuid = ? and eventId = ? "

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object v7

    const-string v10, " create_time "

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    move-object v2, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 6
    :cond_1
    const-string v10, " create_time "

    const-string v11, "200"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_4

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    :cond_2
    new-instance p0, Lcom/mgtv/data/aphone/core/bean/OffLineHbBean;

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/bean/OffLineHbBean;-><init>()V

    .line 9
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;->url:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->url:Ljava/lang/String;

    .line 10
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;->eventId:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->eventId:Ljava/lang/String;

    .line 11
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;->bid:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/OffLineHbBean;->bid:Ljava/lang/String;

    .line 12
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;->params:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    .line 13
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;->method:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->method:Ljava/lang/String;

    .line 14
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;->status:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->status:I

    .line 15
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;->suuid:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/OffLineHbBean;->suuid:Ljava/lang/String;

    .line 16
    sget-object p1, Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;->create_time:Lcom/mgtv/data/aphone/core/db/SDKResumeHttpOflHbTaskColumn;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->create_time:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-nez p0, :cond_2

    .line 19
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz v2, :cond_7

    .line 20
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_7

    .line 21
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_0
    if-eqz v2, :cond_6

    .line 22
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_6

    .line 23
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_3
    if-eqz v2, :cond_5

    .line 24
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 26
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p0, :cond_7

    goto :goto_2

    .line 27
    :cond_7
    :goto_5
    monitor-exit v0

    return-object v1

    :goto_6
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/a;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    const-class p3, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter p3

    .line 28
    :try_start_0
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    .line 29
    new-instance v0, Lcom/mgtv/data/aphone/core/db/e$3;

    invoke-direct {v0, p2, p1}, Lcom/mgtv/data/aphone/core/db/e$3;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0, p4}, Lcom/mgtv/data/aphone/core/db/f;->a(Lcom/mgtv/data/aphone/core/db/h;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/b;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    const-class p3, Lcom/mgtv/data/aphone/core/db/e;

    monitor-enter p3

    :try_start_0
    invoke-static {p0}, Lcom/mgtv/data/aphone/core/db/f;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/db/f;

    move-result-object p0

    new-instance v0, Lcom/mgtv/data/aphone/core/db/e$4;

    invoke-direct {v0, p2, p1}, Lcom/mgtv/data/aphone/core/db/e$4;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0, p4}, Lcom/mgtv/data/aphone/core/db/f;->a(Lcom/mgtv/data/aphone/core/db/h;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
