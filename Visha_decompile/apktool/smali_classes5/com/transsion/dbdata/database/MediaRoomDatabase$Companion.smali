.class public final Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/database/MediaRoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->e()V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->c(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public static final e()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final c(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 12

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->d()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p0, v3, v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    filled-new-array {p0, v3, v5, v6}, [[Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    aget-object v6, p0, v5

    aget-object v7, v6, v3

    aget-object v8, v6, v2

    aget-object v6, v6, v4

    const-string v9, "INSERT INTO playlist_item (name, category, create_type, create_time, update_time) VALUES (?, ?, ?, ?, ?)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v7, v8, v6, v10, v11}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v9, v6}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    goto :goto_3

    :goto_2
    :try_start_1
    const-string v0, "MediaRoomDatabase"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default playlist create failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public final d()Lcom/transsion/dbdata/database/MediaRoomDatabase;
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/transsion/dbdata/database/MediaRoomDatabase;

    const-string v2, "media.db"

    invoke-static {v0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->b()Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$MIGRATION_1_2$1;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/room/migration/Migration;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$getInstance$1$1;

    invoke-direct {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$getInstance$1$1;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/dbdata/database/MediaRoomDatabase;

    invoke-static {v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->e(Lcom/transsion/dbdata/database/MediaRoomDatabase;)V

    new-instance v2, Lel6;

    invoke-direct {v2}, Lel6;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    check-cast v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final f(Landroid/content/Context;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/migration/MigrationExecutor;->c:Lcom/transsion/dbdata/migration/MigrationExecutor$a;

    invoke-virtual {p0}, Lcom/transsion/dbdata/migration/MigrationExecutor$a;->a()Lcom/transsion/dbdata/migration/MigrationExecutor;

    move-result-object p0

    new-instance v0, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$a;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/migration/MigrationExecutor;->c(Landroid/content/Context;Lcom/transsion/dbdata/migration/MigrationExecutor$b;)V

    return-void
.end method
