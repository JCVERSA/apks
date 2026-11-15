.class Lcom/mbridge/msdk/tracker/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/tracker/b;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mbridge/msdk/tracker/c;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/mbridge/msdk/tracker/c;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 108
    invoke-static {p0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "TrackManager"

    const-string v1, "beginTransaction: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 51
    invoke-static {p0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_1

    .line 54
    const-string v0, "TrackManager"

    const-string v1, "endTransaction: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v0, "TrackManager"

    .line 18
    .line 19
    const-string v1, "transactionSuccess: "

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 90
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    :try_start_2
    sget-boolean v3, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v3, :cond_1

    .line 92
    const-string v3, "TrackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteInvalidEvents getWritableDatabase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .line 93
    :goto_0
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    .line 95
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    const-string v3, "state = ? OR state = ?"

    .line 97
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 98
    iget-object v5, p0, Lcom/mbridge/msdk/tracker/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 99
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :try_start_4
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v3

    .line 101
    :try_start_5
    sget-boolean v4, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v4, :cond_3

    .line 102
    const-string v4, "TrackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteInvalidEvents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    :cond_3
    :try_start_6
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    :goto_1
    monitor-exit v0

    return v2

    .line 105
    :goto_2
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    throw v2

    .line 107
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public a(Lcom/mbridge/msdk/tracker/i;)J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_1
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 5
    :try_start_2
    sget-boolean v5, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v5, :cond_1

    .line 6
    const-string v5, "TrackManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert getWritableDatabase: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v1

    .line 7
    :goto_0
    invoke-static {v4}, Lcom/mbridge/msdk/tracker/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-wide v2

    .line 9
    :cond_2
    :try_start_3
    invoke-static {v4}, Lcom/mbridge/msdk/tracker/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 10
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 11
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/i;->a()Lcom/mbridge/msdk/tracker/e;

    move-result-object v6

    .line 12
    const-string v7, "name"

    invoke-virtual {v6}, Lcom/mbridge/msdk/tracker/e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v7, "type"

    invoke-virtual {v6}, Lcom/mbridge/msdk/tracker/e;->h()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    const-string v7, "time_stamp"

    invoke-virtual {v6}, Lcom/mbridge/msdk/tracker/e;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    const-string v7, "properties"

    invoke-virtual {v6}, Lcom/mbridge/msdk/tracker/e;->d()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v7, "priority"

    invoke-virtual {v6}, Lcom/mbridge/msdk/tracker/e;->c()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    const-string v7, "state"

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/i;->e()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    const-string v7, "report_count"

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/i;->c()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    const-string v7, "uuid"

    invoke-virtual {v6}, Lcom/mbridge/msdk/tracker/e;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v7, "ignore_max_timeout"

    invoke-virtual {v6}, Lcom/mbridge/msdk/tracker/e;->k()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    const-string v7, "ignore_max_retry_times"

    invoke-virtual {v6}, Lcom/mbridge/msdk/tracker/e;->j()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    const-string v6, "invalid_time"

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/i;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    iget-object p1, p0, Lcom/mbridge/msdk/tracker/c;->b:Ljava/lang/String;

    invoke-virtual {v4, p1, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 24
    invoke-static {v4}, Lcom/mbridge/msdk/tracker/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    :try_start_4
    invoke-static {v4}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 26
    :try_start_5
    sget-boolean v1, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v1, :cond_3

    .line 27
    const-string v1, "TrackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 28
    :cond_3
    :try_start_6
    invoke-static {v4}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 29
    :goto_1
    monitor-exit v0

    return-wide v2

    .line 30
    :goto_2
    invoke-static {v4}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    throw p1

    .line 32
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public a(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/i;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 36
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 37
    :try_start_2
    sget-boolean v3, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v3, :cond_1

    .line 38
    const-string v3, "TrackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailable getWritableDatabase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v2

    .line 39
    :goto_0
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 41
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 42
    const-string v6, "state = ? OR state = ?"

    const/4 v3, 0x0

    .line 43
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 44
    const-string v10, "priority DESC"

    .line 45
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/c;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 46
    :try_start_4
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 47
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    :try_start_5
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->a(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v12, v2

    move-object v2, p1

    move-object p1, v12

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v12, v2

    move-object v2, p1

    move-object p1, v12

    goto :goto_3

    :catch_2
    move-exception v3

    move-object p1, v2

    .line 50
    :goto_1
    :try_start_6
    sget-boolean v4, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v4, :cond_3

    .line 51
    const-string v4, "TrackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 52
    :cond_3
    :try_start_7
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    invoke-static {v2}, Lcom/mbridge/msdk/tracker/y;->a(Landroid/database/Cursor;)V

    move-object v2, p1

    .line 54
    :goto_2
    monitor-exit v0

    return-object v2

    .line 55
    :goto_3
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->a(Landroid/database/Cursor;)V

    .line 57
    throw v2

    .line 58
    :goto_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/i;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 61
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception v1

    .line 62
    :try_start_2
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_1

    .line 63
    const-string v2, "TrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReportStateFailed getWritableDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .line 64
    :goto_0
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 66
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/tracker/i;

    .line 68
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 69
    const-string v4, "state"

    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/i;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v4, "report_count"

    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/i;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/i;->d()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 73
    const-string v5, "report_error_message"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_3

    .line 74
    :cond_3
    :goto_2
    const-string v4, "uuid = ?"

    .line 75
    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/i;->f()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 76
    iget-object v5, p0, Lcom/mbridge/msdk/tracker/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 77
    :cond_4
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :try_start_4
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 79
    :goto_3
    :try_start_5
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_5

    .line 80
    const-string v2, "TrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReportStateFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 81
    :cond_5
    :try_start_6
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    :goto_4
    monitor-exit v0

    return-void

    .line 83
    :goto_5
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    throw p1

    .line 85
    :cond_6
    :goto_6
    monitor-exit v0

    return-void

    .line 86
    :goto_7
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public b()I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_1
    iget-object v3, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    :try_start_2
    sget-boolean v4, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v4, :cond_1

    .line 6
    const-string v4, "TrackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableCount getWritableDatabase: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v12, v1

    .line 7
    :goto_0
    invoke-static {v12}, Lcom/mbridge/msdk/tracker/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    .line 9
    :cond_2
    :try_start_3
    invoke-static {v12}, Lcom/mbridge/msdk/tracker/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 10
    const-string v6, "state = ? OR state = ?"

    const/4 v3, 0x3

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 12
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/c;->b:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v12

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_2

    .line 15
    :cond_3
    :goto_1
    invoke-static {v12}, Lcom/mbridge/msdk/tracker/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16
    :try_start_4
    invoke-static {v12}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 17
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->a(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 18
    :goto_2
    :try_start_5
    sget-boolean v4, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v4, :cond_4

    .line 19
    const-string v4, "TrackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 20
    :cond_4
    :try_start_6
    invoke-static {v12}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 21
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->a(Landroid/database/Cursor;)V

    .line 22
    :goto_3
    monitor-exit v0

    return v2

    .line 23
    :goto_4
    invoke-static {v12}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 24
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->a(Landroid/database/Cursor;)V

    .line 25
    throw v2

    .line 26
    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/i;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 29
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    .line 30
    :try_start_2
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_1

    .line 31
    const-string v2, "TrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReportStateReporting getWritableDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 34
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/tracker/i;

    .line 36
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 37
    const-string v4, "state"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    const-string v4, "uuid = ?"

    .line 39
    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/i;->f()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 40
    iget-object v5, p0, Lcom/mbridge/msdk/tracker/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_2

    .line 41
    :cond_3
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :try_start_4
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 43
    :goto_2
    :try_start_5
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_4

    .line 44
    const-string v2, "TrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReportStateReporting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 45
    :cond_4
    :try_start_6
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    :goto_3
    monitor-exit v0

    return-void

    .line 47
    :goto_4
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    throw p1

    .line 49
    :cond_5
    :goto_5
    monitor-exit v0

    return-void

    .line 50
    :goto_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 6

    .line 26
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 29
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 30
    :try_start_2
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_1

    .line 31
    const-string v2, "TrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReportStateForReporting getWritableDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 34
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 36
    const-string v3, "state"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    const-string v3, "report_error_message"

    const-string v4, "update from reporting"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v3, "state = ?"

    const/4 v4, 0x1

    .line 39
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/mbridge/msdk/tracker/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :try_start_4
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 43
    :try_start_5
    sget-boolean v3, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v3, :cond_3

    .line 44
    const-string v3, "TrackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateReportStateForReporting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 45
    :cond_3
    :try_start_6
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    :goto_1
    monitor-exit v0

    return-void

    .line 47
    :goto_2
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    throw v2

    .line 49
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/i;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/c;->a:Lcom/mbridge/msdk/tracker/b;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_1

    .line 6
    const-string v2, "TrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReportStateSuccess getWritableDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->c(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 9
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/tracker/i;

    .line 11
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 12
    const-string v4, "state"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    const-string v4, "uuid = ?"

    .line 14
    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/i;->f()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v5, p0, Lcom/mbridge/msdk/tracker/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :try_start_4
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 18
    :goto_2
    :try_start_5
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_4

    .line 19
    const-string v2, "TrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReportStateSuccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 20
    :cond_4
    :try_start_6
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 21
    :goto_3
    monitor-exit v0

    return-void

    .line 22
    :goto_4
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    throw p1

    .line 24
    :cond_5
    :goto_5
    monitor-exit v0

    return-void

    .line 25
    :goto_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method
