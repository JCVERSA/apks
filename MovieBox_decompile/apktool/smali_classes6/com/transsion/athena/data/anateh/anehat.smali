.class public Lcom/transsion/athena/data/anateh/anehat;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/athena/data/anateh/anehat$athena;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/transsion/athena/data/anateh/anehat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/transsion/athena/data/anateh/athena;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/transsion/athena/data/anateh/anehat;->c:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/transsion/athena/data/anateh/athena;

    .line 7
    .line 8
    const-string v1, "athena.db"

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Lcom/transsion/athena/data/anateh/athena;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/anehat;
    .locals 3

    const-class v0, Lcom/transsion/athena/data/anateh/anehat;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/transsion/athena/data/anateh/anehat;->a:Lcom/transsion/athena/data/anateh/anehat;

    if-nez v1, :cond_1

    .line 2
    const-class v1, Lcom/transsion/athena/data/anateh/anehat;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v2, Lcom/transsion/athena/data/anateh/anehat;->a:Lcom/transsion/athena/data/anateh/anehat;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/transsion/athena/data/anateh/anehat;

    invoke-direct {v2, p0}, Lcom/transsion/athena/data/anateh/anehat;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/transsion/athena/data/anateh/anehat;->a:Lcom/transsion/athena/data/anateh/anehat;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 6
    :cond_1
    :goto_2
    sget-object p0, Lcom/transsion/athena/data/anateh/anehat;->a:Lcom/transsion/athena/data/anateh/anehat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private a(Landroid/database/sqlite/SQLiteException;)V
    .locals 0

    .line 385
    :try_start_0
    instance-of p1, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 388
    iget-object p1, p0, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/athena;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 389
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/anehat;->c:Landroid/content/Context;

    const-string v1, "athena.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method


# virtual methods
.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;ILcom/transsion/athena/data/anateh/enatha;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/anateh/anehat$athena;",
            "I",
            "Lcom/transsion/athena/data/anateh/enatha<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    .line 254
    const-string v0, "_id"

    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    .line 255
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x0

    .line 256
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 257
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT _id,tid FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ORDER BY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " LIMIT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 258
    invoke-virtual {v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    :goto_0
    const-string p2, "tid"

    if-eqz v2, :cond_1

    .line 259
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 260
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 261
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v5, v6, p2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v5, v6, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 262
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id<="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " AND CAST("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AS TEXT) NOT LIKE ?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "9999%"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p3, :cond_3

    .line 265
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 266
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/transsion/athena/data/anateh/enatha;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v2, :cond_4

    .line 267
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return p1

    .line 268
    :goto_1
    :try_start_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 269
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_5
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 271
    new-instance p2, Lcom/transsion/ga/anateh;

    const-string p3, "cleanupEvents_oom_sql"

    invoke-direct {p2, p3, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v2, :cond_6

    .line 272
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_6
    throw p1
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;Lcom/transsion/athena/data/Track;I)I
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    const/4 v3, 0x1

    .line 126
    const-string v5, "_eid"

    const-string v6, "There is not enough space left"

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v8

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v10

    .line 129
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v11

    invoke-virtual {v11}, Lcom/transsion/athena/aethna/athena;->d()Ljava/util/List;

    move-result-object v11

    .line 130
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v14, -0x1

    if-nez v13, :cond_1

    .line 131
    iget-object v0, v1, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/data/anateh/athena;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {v6}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    return v14

    :cond_1
    const-string v15, "pi"

    const-string v4, " WHERE "

    const-string v2, "et"

    const-string v14, "="

    const-string v12, "tid"

    move-object/from16 v16, v5

    const-string v5, "event"

    if-ne v0, v3, :cond_13

    .line 133
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v10

    const-string v10, "SELECT * FROM "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " AND "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    .line 134
    invoke-virtual {v13, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v10, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-eqz v3, :cond_11

    .line 135
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 136
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move-object/from16 v21, v10

    .line 137
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v22, v14

    const/4 v14, -0x1

    if-eq v0, v14, :cond_8

    if-eqz v0, :cond_3

    .line 138
    :try_start_3
    invoke-static {v11}, Lcom/transsion/athena/config/data/model/anehat;->b(Ljava/util/Collection;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_1

    :cond_2
    move-object v14, v10

    move-object/from16 v10, v21

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v12, v3

    move-object/from16 v23, v6

    goto/16 :goto_23

    :catch_0
    move-exception v0

    move-object v12, v3

    move-object/from16 v23, v6

    goto/16 :goto_21

    :catch_1
    move-exception v0

    move-object v12, v3

    move-object/from16 v23, v6

    goto/16 :goto_22

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 139
    sget-object v14, Lcom/transsion/athena/config/data/model/ehanat;->n:[B

    goto :goto_2

    :cond_4
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 140
    :goto_2
    invoke-static {v10, v14, v0}, Lcom/transsion/athena/anateh/anehat;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v28, v14

    move-object v14, v10

    move-object/from16 v10, v28

    :goto_3
    if-eqz v10, :cond_6

    if-nez v14, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v21, v11

    move-object/from16 v28, v14

    move-object v14, v10

    move-object/from16 v10, v28

    goto :goto_5

    .line 141
    :cond_6
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 142
    iget-object v0, v1, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/data/anateh/athena;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    invoke-static {v6}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_7
    const/4 v0, -0x1

    return v0

    :cond_8
    move-object/from16 v14, v21

    move-object/from16 v21, v11

    :goto_5
    const-string v11, "\"%s\":\"%s\""

    if-nez v19, :cond_9

    move-object/from16 v23, v6

    move-object/from16 v6, v18

    .line 144
    :try_start_4
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v24, v4

    const/4 v1, 0x2

    .line 145
    :try_start_5
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object v18, v4, v1

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    move-object/from16 v1, v19

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_7
    move-object/from16 v1, p0

    move-object v12, v3

    goto/16 :goto_23

    :catch_2
    move-object/from16 v24, v4

    :catch_3
    move-wide/from16 v26, v8

    move-object/from16 v25, v15

    move-object/from16 v15, v16

    const/4 v1, -0x1

    const/4 v4, 0x2

    move-object/from16 v16, v12

    goto/16 :goto_17

    :cond_9
    move-object/from16 v24, v4

    move-object/from16 v23, v6

    move-object/from16 v6, v18

    goto :goto_6

    .line 146
    :goto_8
    :try_start_6
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v18, v1

    const-string v1, "_eparam"

    move/from16 v19, v4

    if-eqz v4, :cond_c

    const-string v4, "ev_athena"

    move-object/from16 v25, v15

    .line 147
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v20, :cond_a

    .line 148
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v15, v16

    :try_start_8
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-wide/from16 v26, v8

    move-object/from16 v16, v12

    const/4 v12, 0x2

    .line 149
    :try_start_9
    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v8, v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v9, 0x1

    :try_start_a
    aput-object v4, v8, v9

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_9
    move-object/from16 v4, v20

    goto :goto_c

    :catch_4
    :goto_a
    const/4 v1, -0x1

    const/4 v4, 0x2

    goto/16 :goto_16

    :catch_5
    const/4 v9, 0x1

    goto :goto_a

    :catch_6
    move-wide/from16 v26, v8

    :goto_b
    move-object/from16 v16, v12

    goto :goto_a

    :catch_7
    move-wide/from16 v26, v8

    move-object/from16 v15, v16

    goto :goto_b

    :cond_a
    move-wide/from16 v26, v8

    move-object/from16 v15, v16

    const/4 v9, 0x1

    move-object/from16 v16, v12

    goto :goto_9

    .line 150
    :goto_c
    :try_start_b
    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v20, v4

    move v4, v8

    goto :goto_f

    :catch_8
    move-object/from16 v20, v4

    move-object/from16 v19, v18

    const/4 v1, -0x1

    const/4 v4, 0x2

    goto/16 :goto_17

    :cond_b
    move-wide/from16 v26, v8

    :goto_d
    move-object/from16 v15, v16

    const/4 v9, 0x1

    move-object/from16 v16, v12

    goto :goto_e

    :cond_c
    move-wide/from16 v26, v8

    move-object/from16 v25, v15

    goto :goto_d

    :goto_e
    move/from16 v4, v19

    :goto_f
    if-eqz v4, :cond_10

    :try_start_c
    const-string v4, "_id"

    .line 151
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 152
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/high16 v8, 0x20000

    const-string v9, "_id="

    if-ge v4, v8, :cond_f

    .line 153
    :try_start_d
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 154
    :try_start_e
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/transsion/athena/config/data/model/anehat;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 155
    :try_start_f
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/transsion/athena/anateh/anehat;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :catch_9
    move-exception v0

    :goto_10
    move-object/from16 v1, p0

    move-object v12, v3

    goto/16 :goto_21

    :catch_a
    move-exception v0

    :goto_11
    move-object/from16 v1, p0

    move-object v12, v3

    goto/16 :goto_22

    .line 156
    :cond_d
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_e

    .line 157
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 158
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v13, v7, v4, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_19

    :goto_13
    const/4 v4, 0x2

    goto :goto_14

    :cond_f
    const/4 v1, -0x1

    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x2

    .line 161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v13, v7, v0, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_18

    :catch_b
    :cond_10
    const/4 v1, -0x1

    goto :goto_13

    :goto_14
    move-object/from16 v1, p0

    move/from16 v0, p3

    move-object v10, v14

    move-object/from16 v12, v16

    move-object/from16 v19, v18

    move-object/from16 v11, v21

    move-object/from16 v14, v22

    move-object/from16 v4, v24

    move-wide/from16 v8, v26

    move-object/from16 v18, v6

    move-object/from16 v16, v15

    move-object/from16 v6, v23

    :goto_15
    move-object/from16 v15, v25

    goto/16 :goto_0

    :catch_c
    move-object/from16 v18, v1

    move-wide/from16 v26, v8

    move-object/from16 v25, v15

    move-object/from16 v15, v16

    const/4 v1, -0x1

    const/4 v4, 0x2

    move-object/from16 v16, v12

    :goto_16
    move-object/from16 v19, v18

    :goto_17
    move-object/from16 v1, p0

    move/from16 v0, p3

    move-object/from16 v18, v6

    move-object v10, v14

    move-object/from16 v12, v16

    move-object/from16 v11, v21

    move-object/from16 v14, v22

    move-object/from16 v6, v23

    move-object/from16 v4, v24

    move-wide/from16 v8, v26

    move-object/from16 v16, v15

    goto :goto_15

    :catchall_2
    move-exception v0

    move-object/from16 v23, v6

    goto/16 :goto_7

    :catch_d
    move-exception v0

    move-object/from16 v23, v6

    goto/16 :goto_10

    :catch_e
    move-exception v0

    move-object/from16 v23, v6

    goto/16 :goto_11

    :cond_11
    move-object/from16 v24, v4

    move-object/from16 v23, v6

    move-wide/from16 v26, v8

    move-object/from16 v16, v12

    move-object/from16 v22, v14

    move-object/from16 v25, v15

    move-object/from16 v6, v18

    const/4 v1, -0x1

    :goto_18
    const/16 v17, 0x1

    :goto_19
    if-eqz v3, :cond_12

    .line 163
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_12
    move-object v10, v3

    move/from16 v3, v17

    goto :goto_1d

    :catchall_3
    move-exception v0

    move-object/from16 v23, v6

    const/4 v12, 0x0

    :goto_1a
    move-object/from16 v1, p0

    goto/16 :goto_23

    :catch_f
    move-exception v0

    move-object/from16 v23, v6

    const/4 v12, 0x0

    :goto_1b
    move-object/from16 v1, p0

    goto/16 :goto_21

    :catch_10
    move-exception v0

    move-object/from16 v23, v6

    const/4 v12, 0x0

    :goto_1c
    move-object/from16 v1, p0

    goto/16 :goto_22

    :cond_13
    move-object/from16 v24, v4

    move-object/from16 v23, v6

    move-wide/from16 v26, v8

    move-object v6, v10

    move-object/from16 v16, v12

    move-object/from16 v22, v14

    move-object/from16 v25, v15

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v10, 0x0

    :goto_1d
    if-eqz v3, :cond_16

    .line 164
    :try_start_10
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/athena;->i()Landroid/util/Pair;

    move-result-object v0

    .line 165
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 166
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v4, v0}, Lcom/transsion/athena/anateh/anehat;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 167
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 168
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v8, v16

    invoke-virtual {v4, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v25

    .line 171
    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    const-string v0, "created_at"

    .line 172
    :try_start_11
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    invoke-static/range {v26 .. v27}, Lcom/transsion/athena/taaneh/anehat;->b(J)Z

    move-result v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-eqz v0, :cond_14

    const-string v0, "ext"

    .line 174
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    move-object v12, v10

    goto/16 :goto_23

    :catch_11
    move-exception v0

    move-object/from16 v1, p0

    move-object v12, v10

    goto/16 :goto_21

    :catch_12
    move-exception v0

    move-object/from16 v1, p0

    move-object v12, v10

    goto/16 :goto_22

    .line 175
    :cond_14
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getBootId()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v0, :cond_15

    const-string v0, "er_ts"

    .line 176
    :try_start_13
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getTrackErTs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_12
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    const-string v0, "boot_id"

    .line 177
    :try_start_14
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/athena/data/Track;->getBootId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/4 v2, 0x0

    .line 178
    invoke-virtual {v13, v7, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1f

    :cond_16
    move-object/from16 v8, v16

    .line 179
    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v26

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v13, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v12, :cond_17

    .line 180
    :try_start_15
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 181
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_14
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_20

    :catchall_5
    move-exception v0

    goto/16 :goto_1a

    :catch_13
    move-exception v0

    goto/16 :goto_1b

    :catch_14
    move-exception v0

    goto/16 :goto_1c

    :cond_17
    move v14, v1

    :goto_20
    if-eqz v12, :cond_18

    .line 182
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_18
    move-object/from16 v1, p0

    .line 183
    iget-object v0, v1, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/data/anateh/athena;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 184
    invoke-static/range {v23 .. v23}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const/4 v14, -0x2

    :cond_19
    return v14

    :catchall_6
    move-exception v0

    move-object/from16 v23, v6

    const/4 v2, 0x0

    move-object v12, v2

    goto :goto_23

    :catch_15
    move-exception v0

    move-object/from16 v23, v6

    const/4 v2, 0x0

    move-object v12, v2

    .line 185
    :goto_21
    :try_start_16
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 186
    new-instance v2, Lcom/transsion/ga/anateh;

    const-string v3, "addJSON"

    invoke-direct {v2, v3, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_7
    move-exception v0

    goto :goto_23

    :catch_16
    move-exception v0

    move-object/from16 v23, v6

    const/4 v2, 0x0

    move-object v12, v2

    .line 187
    :goto_22
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz v12, :cond_1a

    .line 188
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_1a
    invoke-direct {v1, v0}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 190
    new-instance v2, Lcom/transsion/ga/anateh;

    const-string v3, "addJSON_sql"

    invoke-direct {v2, v3, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :goto_23
    if-eqz v12, :cond_1b

    .line 191
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_1b
    iget-object v2, v1, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {v2}, Lcom/transsion/athena/data/anateh/athena;->b()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 193
    invoke-static/range {v23 .. v23}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 194
    :cond_1c
    throw v0
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;JJLjava/lang/String;II)Lcom/transsion/athena/data/anehat;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    move-wide/from16 v2, p2

    move/from16 v1, p8

    const-string v4, "_eparam"

    const-string v5, "net"

    const-string v6, "event"

    .line 336
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/athena;->d()Ljava/util/List;

    move-result-object v7

    .line 337
    invoke-static {v7}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    return-object v8

    .line 338
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v0

    .line 339
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    if-nez v9, :cond_1

    return-object v8

    .line 340
    :cond_1
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v11, "created_at"

    const-string v12, " AND "

    const-string v13, "="

    const-string v14, "tid"

    const-string v15, " WHERE "

    const-string v8, "SELECT * FROM "

    move-object/from16 v16, v4

    const-string v4, "_id"

    if-eqz v10, :cond_2

    .line 341
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ORDER BY "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " LIMIT "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v8, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v1, p0

    goto/16 :goto_16

    :catch_0
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_14

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_15

    .line 342
    :cond_2
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "uid"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' ORDER BY "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 343
    :goto_2
    :try_start_3
    invoke-virtual {v9, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v13, :cond_11

    .line 344
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_13

    .line 345
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 346
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v10, ""

    move-object/from16 v22, v10

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v23, 0x0

    .line 347
    :goto_3
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 348
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    const-string v12, "pi"

    .line 350
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v14, "et"

    .line 351
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v12, v15, :cond_4

    .line 352
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    invoke-static {v0, v15, v12}, Lcom/transsion/athena/anateh/anehat;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-wide/16 v29, 0x0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    move-object v8, v13

    goto/16 :goto_16

    :catch_2
    move-exception v0

    move-object v8, v13

    goto/16 :goto_14

    :catch_3
    move-exception v0

    move-object v8, v13

    goto/16 :goto_15

    :goto_4
    cmp-long v12, v17, v29

    if-nez v12, :cond_5

    .line 353
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    :cond_5
    if-eqz v0, :cond_c

    if-eqz v14, :cond_6

    const-string v12, "&add"

    .line 354
    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "&append"

    .line 355
    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 356
    :cond_6
    :try_start_6
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 358
    :try_start_7
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v15, :cond_7

    .line 359
    :try_start_8
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move/from16 v27, v15

    move-object/from16 v15, v16

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v3, p7

    move-object/from16 v31, v6

    move-object/from16 v22, v14

    :goto_5
    move-object/from16 v15, v16

    move-object/from16 v16, v5

    goto/16 :goto_d

    :cond_7
    move-object/from16 v15, v16

    const/16 v27, 0x0

    .line 360
    :goto_6
    :try_start_9
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 361
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    :goto_7
    move-object/from16 v2, v16

    goto :goto_9

    :catch_5
    move-exception v0

    move/from16 v3, p7

    move-object/from16 v16, v5

    move-object/from16 v31, v6

    :goto_8
    move-object/from16 v22, v14

    goto/16 :goto_d

    .line 362
    :cond_8
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    goto :goto_7

    .line 363
    :goto_9
    instance-of v3, v2, Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v3, :cond_a

    :try_start_a
    invoke-virtual {v12}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 364
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 365
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 366
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p4, v3

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v16, v5

    :try_start_b
    const-string v5, "_"

    .line 367
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 368
    move-object v5, v2

    check-cast v5, Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v31, v6

    :try_start_c
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, p4

    move-object/from16 v5, v16

    move-object/from16 v6, v31

    goto :goto_a

    :catch_6
    move-exception v0

    :goto_b
    move/from16 v3, p7

    goto :goto_8

    :catch_7
    move-exception v0

    :goto_c
    move-object/from16 v31, v6

    goto :goto_b

    :cond_9
    move-object/from16 v3, p4

    move-object/from16 v5, v16

    goto :goto_a

    :catch_8
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_c

    :cond_a
    move-object/from16 v16, v5

    move-object/from16 v31, v6

    .line 369
    new-instance v3, Lcom/transsion/athena/data/anehat$athena;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v23, v3

    move-object/from16 v24, v14

    invoke-direct/range {v23 .. v28}, Lcom/transsion/athena/data/anehat$athena;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    .line 370
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    add-int v2, v21, v0

    move/from16 v3, p7

    if-lt v2, v3, :cond_b

    .line 371
    :try_start_d
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v11, v2

    move-wide/from16 v23, v3

    move-object v4, v14

    move-wide/from16 v6, v17

    move/from16 v10, v20

    goto :goto_10

    :catch_9
    move-exception v0

    move/from16 v21, v2

    goto/16 :goto_8

    :cond_b
    move/from16 v21, v2

    move-object/from16 v22, v14

    goto :goto_f

    :catch_a
    move-exception v0

    move/from16 v3, p7

    move-object/from16 v31, v6

    move-object/from16 v15, v16

    move-object/from16 v16, v5

    goto/16 :goto_8

    :catch_b
    move-exception v0

    move/from16 v3, p7

    move-object/from16 v31, v6

    goto/16 :goto_5

    .line 372
    :goto_d
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    :cond_c
    move/from16 v3, p7

    move-object/from16 v31, v6

    move-object/from16 v15, v16

    move-object/from16 v16, v5

    :goto_e
    add-int/lit8 v19, v19, 0x1

    .line 373
    :goto_f
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-wide/from16 v2, p2

    move-object/from16 v5, v16

    move-object/from16 v6, v31

    move-object/from16 v16, v15

    goto/16 :goto_3

    :cond_d
    move-wide/from16 v6, v17

    move/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v4, v22

    .line 374
    :goto_10
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    if-lez v10, :cond_10

    add-int v0, v10, v19

    if-gt v8, v0, :cond_f

    if-ne v8, v1, :cond_e

    if-ne v8, v0, :cond_e

    goto :goto_11

    :cond_e
    const/4 v0, 0x1

    move v12, v0

    goto :goto_12

    :cond_f
    :goto_11
    const/4 v12, 0x0

    .line 375
    :goto_12
    new-instance v0, Lcom/transsion/athena/data/anehat;

    move-object v1, v0

    move-wide/from16 v2, p2

    move-object v5, v9

    move-wide/from16 v8, v23

    invoke-direct/range {v1 .. v12}, Lcom/transsion/athena/data/anehat;-><init>(JLjava/lang/String;Ljava/util/List;JJIIZ)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 376
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_10
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    return-object v1

    :cond_11
    :goto_13
    if-eqz v13, :cond_12

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_12
    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto/16 :goto_1

    :catch_c
    move-exception v0

    move-object v1, v8

    goto :goto_14

    :catch_d
    move-exception v0

    move-object v1, v8

    goto :goto_15

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    move-object v8, v1

    goto/16 :goto_1

    :catch_e
    move-exception v0

    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_14

    :catch_f
    move-exception v0

    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_15

    .line 377
    :goto_14
    :try_start_f
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 378
    new-instance v1, Lcom/transsion/ga/anateh;

    const-string v2, "queryEventList"

    invoke-direct {v1, v2, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_4
    move-exception v0

    goto/16 :goto_1

    .line 379
    :goto_15
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz v8, :cond_13

    .line 380
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_13
    move-object/from16 v1, p0

    .line 381
    :try_start_10
    invoke-direct {v1, v0}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 382
    new-instance v2, Lcom/transsion/ga/anateh;

    const-string v3, "queryEventList_sql"

    invoke-direct {v2, v3, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v0

    :goto_16
    if-eqz v8, :cond_14

    .line 383
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_14
    throw v0
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/anateh/anehat$athena;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    .line 91
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    new-instance p1, Lcom/transsion/athena/data/AppIdData;

    invoke-direct {p1}, Lcom/transsion/athena/data/AppIdData;-><init>()V

    const-string v2, "appid"

    .line 94
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/transsion/athena/data/AppIdData;->a:I

    const-string v2, "base"

    .line 95
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    const-string v2, "uid"

    .line 96
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    const-string v2, "try"

    .line 97
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcom/transsion/athena/data/AppIdData;->d:I

    .line 98
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 99
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    .line 100
    :goto_1
    :try_start_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 103
    new-instance v0, Lcom/transsion/ga/anateh;

    const-string v2, "getAppIdList_sql"

    invoke-direct {v0, v2, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_4

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_4
    throw p1
.end method

.method public a()V
    .locals 1

    const-string v0, "deleteDB"

    .line 333
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/data/anateh/athena;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;Lcom/transsion/athena/config/data/model/athena;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    .line 35
    const-string v0, "ext"

    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 39
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "cfg"

    .line 40
    :try_start_2
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/athena;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p3, :cond_6

    .line 42
    sget-object p1, Lcom/transsion/athena/data/anateh/anehat$athena;->c:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p3, "CAST(tid AS TEXT) LIKE ?"

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v2, p1, p3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/athena;->j()Ljava/util/List;

    move-result-object p1

    .line 46
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v5, "tid"

    if-eqz v4, :cond_3

    :try_start_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/config/data/model/TidConfigBean;

    .line 48
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v6

    .line 49
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 50
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v5, "ev"

    .line 51
    :try_start_5
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v5, "pt"

    .line 52
    :try_start_6
    invoke-virtual {v6}, Lcom/transsion/athena/config/data/model/aatnhe;->j()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v5, "cf"

    .line 53
    :try_start_7
    invoke-virtual {v6}, Lcom/transsion/athena/config/data/model/aatnhe;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v5, Lcom/transsion/athena/data/anateh/anehat$athena;->c:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v5}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 55
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 56
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    move-object p2, v1

    goto/16 :goto_3

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT DISTINCT ext FROM "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v4}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " WHERE "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 60
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 61
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 63
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 64
    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    sget-object v6, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v6}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_7

    :catch_1
    move-exception p2

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_7

    .line 66
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_6
    move-object p1, v1

    .line 67
    :cond_7
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p1, :cond_8

    .line 68
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_2
    move-exception p1

    move-object v2, v1

    goto :goto_7

    :catch_2
    move-exception p1

    move-object p2, v1

    move-object v2, p2

    .line 70
    :goto_3
    :try_start_9
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 71
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_3
    move-exception p1

    :goto_4
    move-object v1, p2

    goto :goto_7

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    .line 72
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :cond_a
    move-object v1, v2

    .line 73
    :goto_6
    :try_start_a
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 74
    new-instance p3, Lcom/transsion/ga/anateh;

    const-string v0, "updateAppConfig_sql"

    invoke-direct {p3, v0, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :goto_7
    if-eqz v1, :cond_b

    .line 75
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v2, :cond_c

    .line 76
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 77
    :cond_c
    throw p1
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;Lcom/transsion/athena/data/AppIdData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "appid"

    .line 81
    :try_start_1
    iget v3, p2, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "base"

    .line 82
    :try_start_2
    iget-object v3, p2, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    .line 84
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 85
    :goto_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 87
    new-instance p2, Lcom/transsion/ga/anateh;

    const-string v0, "addAppId_sql"

    invoke-direct {p2, v0, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    .line 228
    const-string v0, "boot_id"

    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 230
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "created_at"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "er_ts"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " + "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'\' WHERE "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 231
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 233
    new-instance p2, Lcom/transsion/ga/anateh;

    const-string p3, "updateEvents_sql"

    invoke-direct {p2, p3, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/anateh/anehat$athena;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void

    .line 110
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 111
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "uid"

    const-string v5, ""

    .line 112
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/AppIdData;

    .line 114
    sget-object v5, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v5}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "CAST(tid AS TEXT) LIKE ? AND uid=?"

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    iget v4, v4, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    const-string p2, "try"

    const/4 v4, 0x0

    .line 116
    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appid IN ("

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, v3, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, v1

    .line 120
    :goto_1
    :try_start_4
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 121
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 122
    :goto_2
    :try_start_5
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 123
    new-instance p2, Lcom/transsion/ga/anateh;

    const-string v0, "updateAppIdList_sql"

    invoke-direct {p2, v0, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 125
    :cond_4
    throw p1
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/anateh/anehat$athena;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/data/AppIdData;

    .line 198
    iget v2, v1, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 199
    iput p3, v1, Lcom/transsion/athena/data/AppIdData;->d:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 201
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "try"

    .line 202
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appid IN ("

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v1, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 204
    :goto_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 206
    new-instance p2, Lcom/transsion/ga/anateh;

    const-string p3, "updateEvents_sql"

    invoke-direct {p2, p3, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;JLjava/lang/String;Lcom/transsion/athena/data/anateh/enatha;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/anateh/anehat$athena;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/transsion/athena/data/anateh/enatha<",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/athena/data/enatha;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 274
    const-string v3, "_id"

    const-string v4, " AND "

    const-string v5, "tid="

    const-string v6, "appid"

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v7

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    const/4 v9, 0x0

    .line 277
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v11, :cond_0

    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/athena/data/AppIdData;

    .line 278
    iget v11, v11, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v1, p0

    move-object v10, v9

    goto/16 :goto_10

    :catch_0
    move-exception v0

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    goto/16 :goto_e

    .line 279
    :cond_0
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-nez v10, :cond_2

    if-eqz v10, :cond_1

    .line 280
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    return-void

    .line 281
    :cond_2
    :try_start_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 282
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT * FROM "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/transsion/athena/data/anateh/anehat$athena;->d:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v12}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " WHERE "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " IN ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {v10, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_3
    :goto_2
    const-string v0, "date"

    const-string v12, "ext"

    const-string v14, "cnt"

    if-eqz v11, :cond_6

    .line 284
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 285
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v13, 0x270f

    if-eq v15, v13, :cond_3

    const/16 v13, 0x407

    if-eq v15, v13, :cond_3

    const/16 v13, 0x411

    if-ne v15, v13, :cond_4

    goto :goto_2

    .line 286
    :cond_4
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 287
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 288
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v12, :cond_5

    .line 290
    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_3
    move-object v9, v11

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move-object v12, v0

    .line 291
    :try_start_6
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v12, v9

    goto/16 :goto_e

    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 292
    :goto_5
    new-instance v12, Lcom/transsion/athena/data/enatha;

    invoke-direct {v12, v15, v14, v13, v0}, Lcom/transsion/athena/data/enatha;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v8, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-eqz v11, :cond_7

    .line 293
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 294
    :cond_7
    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/transsion/athena/data/AppIdData;

    .line 295
    iget-object v15, v13, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v17, :cond_9

    :try_start_8
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Lcom/transsion/athena/data/anehat;

    move-object/from16 p2, v6

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    :try_start_9
    iget-wide v11, v9, Lcom/transsion/athena/data/anehat;->a:J

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ">="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v9, Lcom/transsion/athena/data/anehat;->d:J

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v9, Lcom/transsion/athena/data/anehat;->e:J

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 297
    iget-boolean v6, v9, Lcom/transsion/athena/data/anehat;->h:Z

    if-eqz v6, :cond_8

    .line 298
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-string v11, "pt"

    .line 299
    :try_start_a
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    sget-object v11, Lcom/transsion/athena/data/anateh/anehat$athena;->c:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v11}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    iget-wide v3, v9, Lcom/transsion/athena/data/anehat;->a:J

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v10, v11, v6, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_a

    :catchall_2
    move-exception v0

    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v9, v17

    goto/16 :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v11, v17

    :goto_9
    const/4 v12, 0x0

    goto/16 :goto_e

    :cond_8
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 301
    :goto_a
    iget v3, v9, Lcom/transsion/athena/data/anehat;->f:I
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    add-int v16, v16, v3

    move-object/from16 v6, p2

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    const/4 v9, 0x0

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v17, v11

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v17, v11

    goto :goto_9

    :cond_9
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 p2, v6

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    .line 302
    :try_start_b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 303
    iget v4, v13, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/enatha;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v4, :cond_e

    .line 304
    :try_start_c
    iget-object v6, v4, Lcom/transsion/athena/data/enatha;->b:Ljava/lang/String;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 305
    :cond_a
    iget v6, v13, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 306
    :cond_b
    iget-object v6, v4, Lcom/transsion/athena/data/enatha;->b:Ljava/lang/String;

    if-eqz v6, :cond_c

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    move-object/from16 v6, v18

    goto :goto_b

    .line 307
    :cond_d
    iget v6, v4, Lcom/transsion/athena/data/enatha;->c:I

    add-int v6, v6, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    iget v4, v4, Lcom/transsion/athena/data/enatha;->d:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, v18

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 309
    :goto_b
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "1"

    .line 311
    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_c

    :cond_e
    move-object/from16 v6, v18

    :goto_c
    :try_start_d
    const-string v4, "uid"

    const-string v9, ""

    .line 312
    invoke-virtual {v3, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const-string v4, "try"

    const/4 v9, 0x0

    .line 313
    :try_start_e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    sget-object v4, Lcom/transsion/athena/data/anateh/anehat$athena;->d:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v4}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v13, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/4 v12, 0x0

    :try_start_f
    invoke-virtual {v10, v4, v3, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v9, v12

    move-object/from16 v11, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object v12, v6

    move-object/from16 v6, p2

    goto/16 :goto_6

    :catch_5
    move-exception v0

    :goto_d
    move-object/from16 v11, v17

    goto :goto_e

    :catch_6
    move-exception v0

    const/4 v12, 0x0

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v12, v9

    move-object/from16 v17, v11

    goto :goto_e

    :cond_f
    move-object v12, v9

    move-object/from16 v17, v11

    .line 315
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    if-eqz v2, :cond_10

    .line 316
    invoke-interface {v2, v8}, Lcom/transsion/athena/data/anateh/enatha;->a(Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_10
    if-eqz v17, :cond_11

    .line 317
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_11
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_4
    move-exception v0

    move-object v12, v9

    move-object/from16 v1, p0

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v12, v9

    move-object v11, v12

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v12, v9

    goto/16 :goto_1

    :catch_9
    move-exception v0

    move-object v12, v9

    move-object v10, v12

    move-object v11, v10

    .line 319
    :goto_e
    :try_start_10
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz v11, :cond_12

    .line 320
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v10, :cond_13

    .line 321
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object/from16 v1, p0

    move-object v9, v12

    goto :goto_f

    :cond_13
    move-object/from16 v1, p0

    move-object v9, v10

    .line 322
    :goto_f
    :try_start_11
    invoke-direct {v1, v0}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 323
    new-instance v2, Lcom/transsion/ga/anateh;

    const-string v3, "cleanupEvents_sql"

    invoke-direct {v2, v3, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    move-object v10, v9

    goto/16 :goto_3

    :goto_10
    if-eqz v9, :cond_14

    .line 324
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_14
    if-eqz v10, :cond_15

    .line 325
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 326
    :cond_15
    throw v0
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;Lcom/transsion/athena/data/anateh/enatha;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/anateh/anehat$athena;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/transsion/athena/data/anateh/enatha<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    .line 234
    const-string v0, ")"

    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    .line 235
    invoke-static {p2, v1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 237
    :cond_0
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT tid FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "tid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-virtual {v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    if-eqz v4, :cond_1

    .line 240
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 241
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 242
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v5}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 243
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tid IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p3, :cond_3

    .line 245
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 246
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/transsion/athena/data/anateh/enatha;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v4, :cond_4

    .line 247
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 248
    :goto_1
    :try_start_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_5
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 251
    new-instance p2, Lcom/transsion/ga/anateh;

    const-string p3, "cleanupEvents_off_sql"

    invoke-direct {p2, p3, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v1, :cond_6

    .line 252
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_6
    throw p1
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/anateh/anehat$athena;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    .line 207
    const-string v0, "_id"

    const-string v1, " AND "

    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 209
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void

    .line 211
    :cond_1
    :try_start_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "uid"

    .line 212
    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 214
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/athena/data/AppIdData;

    .line 215
    iget-object v6, p3, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/athena/data/anehat;

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/transsion/athena/data/anehat;->a:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ">="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/transsion/athena/data/anehat;->d:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/transsion/athena/data/anehat;->e:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v5, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    .line 217
    :cond_2
    iget p3, p3, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const-string p1, "try"

    const/4 p2, 0x0

    .line 218
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    sget-object p1, Lcom/transsion/athena/data/anateh/anehat$athena;->d:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "appid IN ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, v5, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v4, v3

    .line 222
    :goto_2
    :try_start_3
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    .line 223
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_4
    move-object v3, v4

    .line 224
    :goto_3
    :try_start_4
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 225
    new-instance p2, Lcom/transsion/ga/anateh;

    const-string p3, "updateEvents_sql"

    invoke-direct {p2, p3, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz v3, :cond_5

    .line 226
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 227
    :cond_5
    throw p1
.end method

.method public a(Lcom/transsion/athena/data/anateh/enatha;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/anateh/enatha<",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    const-string v0, "SELECT * FROM "

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/transsion/athena/data/anateh/anehat$athena;->d:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v5}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 10
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "cfg"

    .line 11
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 13
    invoke-static {v5}, Lcom/transsion/athena/config/data/model/athena;->a(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "appid"

    .line 14
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/athena/config/data/model/athena;->a(I)V

    .line 15
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v6

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object v2, v4

    goto/16 :goto_2

    :cond_2
    if-eqz v4, :cond_3

    .line 16
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/athena/data/anateh/anehat$athena;->c:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 18
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "tid"

    .line 19
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v0, "ev"

    .line 20
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v5, Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-direct {v5}, Lcom/transsion/athena/config/data/model/aatnhe;-><init>()V

    const-string v6, "pt"

    .line 22
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/transsion/athena/config/data/model/aatnhe;->c(J)V

    const-string v6, "cf"

    .line 23
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/athena/config/data/model/aatnhe;->a(Ljava/lang/String;)V

    .line 24
    invoke-static {v3, v4}, Lcom/transsion/athena/taaneh/anehat;->a(J)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/athena/config/data/model/athena;

    if-eqz v6, :cond_4

    .line 25
    new-instance v7, Lcom/transsion/athena/config/data/model/TidConfigBean;

    invoke-direct {v7, v3, v4, v0, v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;-><init>(JLjava/lang/String;Lcom/transsion/athena/config/data/model/aatnhe;)V

    .line 26
    invoke-virtual {v6, v7}, Lcom/transsion/athena/config/data/model/athena;->a(Lcom/transsion/athena/config/data/model/TidConfigBean;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 27
    invoke-interface {p1, v1}, Lcom/transsion/athena/data/anateh/enatha;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    if-eqz v2, :cond_7

    .line 28
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void

    .line 29
    :goto_2
    :try_start_3
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_8

    .line 30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_8
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 32
    new-instance v0, Lcom/transsion/ga/anateh;

    const-string v1, "getAPPIDApp_sql"

    invoke-direct {v0, v1, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-eqz v2, :cond_9

    .line 33
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 34
    :cond_9
    throw p1
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 390
    :try_start_0
    iget-object p1, p0, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/transsion/athena/data/anateh/anehat$athena;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object p1

    .line 328
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v1, "CAST(tid AS TEXT) LIKE ?"

    .line 329
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 330
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 332
    new-instance p2, Lcom/transsion/ga/anateh;

    const-string v0, "cleanupEvents_del_sql"

    invoke-direct {p2, v0, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;Lcom/transsion/athena/data/anateh/enatha;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/anateh/anehat$athena;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/Track;",
            ">;",
            "Lcom/transsion/athena/data/anateh/enatha<",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/ga/anateh;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 5
    const-string v2, "There is not enough space left"

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/athena/data/anateh/anehat$athena;->a()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    .line 7
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/transsion/athena/data/anateh/anehat;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v7, 0x0

    if-nez v6, :cond_2

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 9
    :cond_0
    iget-object v0, v1, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/data/anateh/athena;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_1
    return v7

    .line 11
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 12
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 13
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "tid"

    if-eqz v10, :cond_5

    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/athena/data/Track;

    .line 14
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v12

    .line 15
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v13

    invoke-virtual {v13}, Lcom/transsion/athena/aethna/athena;->i()Landroid/util/Pair;

    move-result-object v13

    .line 16
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 17
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, [B

    invoke-static {v12, v13}, Lcom/transsion/athena/anateh/anehat;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 18
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 19
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "event"

    .line 20
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, "et"

    .line 21
    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v11, "pi"

    .line 22
    :try_start_4
    invoke-virtual {v8, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v11, "created_at"

    .line 23
    :try_start_5
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getBootId()Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_4

    const-string v11, "er_ts"

    .line 25
    :try_start_6
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getTrackErTs()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v11, "boot_id"

    .line 26
    :try_start_7
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getBootId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v3, v5

    goto/16 :goto_6

    .line 27
    :cond_4
    :goto_1
    invoke-virtual {v6, v3, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 28
    invoke-virtual {v10}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 29
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 30
    new-instance v8, Landroid/util/LongSparseArray;

    invoke-direct {v8}, Landroid/util/LongSparseArray;-><init>()V

    .line 31
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT tid,COUNT(*) FROM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IN ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 32
    invoke-static {v4, v3}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") GROUP BY "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v6, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v4, v7

    :goto_2
    if-eqz v3, :cond_6

    .line 34
    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 35
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_3
    move-object v5, v3

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v5, v3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_7

    .line 36
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 37
    invoke-interface {v0, v8}, Lcom/transsion/athena/data/anateh/enatha;->a(Ljava/lang/Object;)V

    :cond_7
    move v7, v4

    goto :goto_4

    :cond_8
    move-object v3, v5

    .line 38
    :goto_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_9

    .line 39
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_9
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 41
    iget-object v0, v1, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/data/anateh/athena;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const/4 v7, -0x2

    :cond_a
    return v7

    :catchall_2
    move-exception v0

    move-object v6, v5

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v6, v5

    .line 43
    :goto_5
    :try_start_9
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/transsion/ga/anateh;

    const-string v4, "addJSON"

    invoke-direct {v3, v4, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_5
    move-exception v0

    move-object v3, v5

    move-object v6, v3

    .line 45
    :goto_6
    :try_start_a
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    .line 46
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v6, :cond_c

    .line 47
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    :cond_c
    move-object v5, v6

    .line 48
    :goto_7
    :try_start_b
    invoke-direct {v1, v0}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 49
    new-instance v4, Lcom/transsion/ga/anateh;

    const-string v6, "addJSON_sql"

    invoke-direct {v4, v6, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    move-object v6, v5

    goto :goto_3

    :goto_8
    if-eqz v5, :cond_d

    .line 50
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v6, :cond_e

    .line 51
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 52
    :cond_e
    iget-object v3, v1, Lcom/transsion/athena/data/anateh/anehat;->b:Lcom/transsion/athena/data/anateh/athena;

    invoke-virtual {v3}, Lcom/transsion/athena/data/anateh/athena;->b()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 53
    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 54
    :cond_f
    throw v0
.end method
