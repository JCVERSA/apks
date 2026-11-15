.class public final Ltg7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsg7;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertionAdapter;

.field public final c:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field public final d:Landroidx/room/SharedSQLiteStatement;

.field public final e:Landroidx/room/SharedSQLiteStatement;

.field public final f:Landroidx/room/SharedSQLiteStatement;

.field public final g:Landroidx/room/SharedSQLiteStatement;

.field public final h:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Ltg7$a;

    invoke-direct {v0, p0, p1}, Ltg7$a;-><init>(Ltg7;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltg7;->b:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Ltg7$b;

    invoke-direct {v0, p0, p1}, Ltg7$b;-><init>(Ltg7;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltg7;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Ltg7$c;

    invoke-direct {v0, p0, p1}, Ltg7$c;-><init>(Ltg7;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltg7;->d:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Ltg7$d;

    invoke-direct {v0, p0, p1}, Ltg7$d;-><init>(Ltg7;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltg7;->e:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Ltg7$e;

    invoke-direct {v0, p0, p1}, Ltg7$e;-><init>(Ltg7;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltg7;->f:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Ltg7$f;

    invoke-direct {v0, p0, p1}, Ltg7$f;-><init>(Ltg7;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltg7;->g:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Ltg7$g;

    invoke-direct {v0, p0, p1}, Ltg7$g;-><init>(Ltg7;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ltg7;->h:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static bridge synthetic a(Ltg7;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method public static b()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeAllUploadStatus()V
    .locals 3

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ltg7;->h:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Ltg7;->h:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Ltg7;->h:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public deleteAll()I
    .locals 3

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ltg7;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    iget-object v2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Ltg7;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Ltg7;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public deleteHistories(Ljava/util/List;)I
    .locals 1

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Ltg7;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)I
    .locals 1

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Ltg7;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteSyncUserHistory()I
    .locals 3

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ltg7;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    iget-object v2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Ltg7;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Ltg7;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public deleteUserHistory(J)I
    .locals 2

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ltg7;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object p2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Ltg7;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Ltg7;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteUserHistoryVideo(J)I
    .locals 2

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ltg7;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object p2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Ltg7;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Ltg7;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public getAllHistoryByVideoId(J)Ljava/util/List;
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM online_user_history  where video_id=? ORDER BY last_watch_time DESC"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    move-wide/from16 v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v2, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "is_uploaded"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "serialId"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "source_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "video_id"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "video_name"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "series_id"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "video_description"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_play_postion"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "duration"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "video_cover"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_watch_time"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_frame_img"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "watch_progress"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "update_progress"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "record_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "user_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p2, v1

    const-string v1, "video_serial_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "video_link"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "source_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "pay_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "is_intact"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "is_youtube"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "channel_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "channel_cover"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "video_bean_json"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "play_let"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v27, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;-><init>()V

    move-object/from16 v28, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    move/from16 v29, v0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_4
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_5

    :cond_4
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_5
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_6
    move/from16 v1, p1

    move/from16 p1, v4

    move/from16 v27, v5

    goto :goto_7

    :cond_5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_6

    :goto_7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    move/from16 v4, p2

    move v5, v0

    move/from16 p2, v1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_8
    move/from16 v1, v18

    goto :goto_9

    :cond_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_8

    :goto_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v17, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_a
    move/from16 v0, v19

    goto :goto_b

    :cond_7
    move/from16 v17, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_a

    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_c
    move/from16 v19, v0

    move/from16 v1, v20

    goto :goto_d

    :cond_8
    move/from16 v18, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_c

    :goto_d
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    move/from16 v20, v1

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    move/from16 v21, v0

    move/from16 v1, v22

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_9

    move/from16 v22, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_e
    move/from16 v1, v24

    goto :goto_f

    :cond_9
    move/from16 v22, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_e

    :goto_f
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_a

    move/from16 v23, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_10
    move/from16 v0, v25

    goto :goto_11

    :cond_a
    move/from16 v23, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_10

    :goto_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_b

    move/from16 v24, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_12
    move/from16 v25, v0

    move/from16 v1, v26

    goto :goto_13

    :cond_b
    move/from16 v24, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_12

    :goto_13
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v26, v1

    move-object v1, v0

    move/from16 v0, v29

    move/from16 v30, v4

    move/from16 v4, p1

    move/from16 p1, p2

    move/from16 p2, v30

    move/from16 v31, v27

    move/from16 v27, v5

    move/from16 v5, v31

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllHistoryUserBean()Ljava/util/List;
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM online_user_history ORDER BY last_watch_time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v3, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "is_uploaded"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "serialId"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "source_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "video_id"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "video_name"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "series_id"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "video_description"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_play_postion"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "duration"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "video_cover"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_watch_time"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_frame_img"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "watch_progress"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "update_progress"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "record_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "user_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "video_serial_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "video_link"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "source_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "pay_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "is_intact"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "is_youtube"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "channel_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "channel_cover"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "video_bean_json"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "play_let"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v29, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;-><init>()V

    move-object/from16 v30, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    move/from16 v31, v0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_4
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_5

    :cond_4
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_5
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    move/from16 v0, v29

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_6
    move/from16 v29, v5

    move/from16 v1, v17

    move/from16 v17, v4

    goto :goto_7

    :cond_5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_6

    :goto_7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    move v5, v0

    move/from16 v4, v18

    move/from16 v18, v1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_8
    move/from16 v1, v20

    goto :goto_9

    :cond_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_8

    :goto_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_7

    move/from16 v19, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_a
    move/from16 v0, v21

    goto :goto_b

    :cond_7
    move/from16 v19, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_a

    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_8

    move/from16 v20, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_c
    move/from16 v21, v0

    move/from16 v1, v22

    goto :goto_d

    :cond_8
    move/from16 v20, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_c

    :goto_d
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    move/from16 v22, v1

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    move/from16 v23, v0

    move/from16 v1, v24

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_9

    move/from16 v24, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_e
    move/from16 v1, v26

    goto :goto_f

    :cond_9
    move/from16 v24, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_e

    :goto_f
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_a

    move/from16 v25, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_10
    move/from16 v0, v27

    goto :goto_11

    :cond_a
    move/from16 v25, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_10

    :goto_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_b

    move/from16 v26, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_12
    move/from16 v27, v0

    move/from16 v1, v28

    goto :goto_13

    :cond_b
    move/from16 v26, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_12

    :goto_13
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v28, v1

    move-object v1, v0

    move/from16 v0, v31

    move/from16 v32, v18

    move/from16 v18, v4

    move/from16 v4, v17

    move/from16 v17, v32

    move/from16 v33, v29

    move/from16 v29, v5

    move/from16 v5, v33

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllHistoryUserBeanByUserId(J)Ljava/util/List;
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM online_user_history where user_id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    move-wide/from16 v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v2, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "is_uploaded"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "serialId"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "source_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "video_id"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "video_name"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "series_id"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "video_description"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_play_postion"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "duration"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "video_cover"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_watch_time"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_frame_img"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "watch_progress"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "update_progress"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "record_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "user_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p2, v1

    const-string v1, "video_serial_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "video_link"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "source_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "pay_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "is_intact"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "is_youtube"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "channel_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "channel_cover"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "video_bean_json"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "play_let"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v27, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;-><init>()V

    move-object/from16 v28, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    move/from16 v29, v0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_4
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_5

    :cond_4
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_5
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_6
    move/from16 v1, p1

    move/from16 p1, v4

    move/from16 v27, v5

    goto :goto_7

    :cond_5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_6

    :goto_7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    move/from16 v4, p2

    move v5, v0

    move/from16 p2, v1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_8
    move/from16 v1, v18

    goto :goto_9

    :cond_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_8

    :goto_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v17, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_a
    move/from16 v0, v19

    goto :goto_b

    :cond_7
    move/from16 v17, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_a

    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_c
    move/from16 v19, v0

    move/from16 v1, v20

    goto :goto_d

    :cond_8
    move/from16 v18, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_c

    :goto_d
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    move/from16 v20, v1

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    move/from16 v21, v0

    move/from16 v1, v22

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_9

    move/from16 v22, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_e
    move/from16 v1, v24

    goto :goto_f

    :cond_9
    move/from16 v22, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_e

    :goto_f
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_a

    move/from16 v23, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_10
    move/from16 v0, v25

    goto :goto_11

    :cond_a
    move/from16 v23, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_10

    :goto_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_b

    move/from16 v24, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_12
    move/from16 v25, v0

    move/from16 v1, v26

    goto :goto_13

    :cond_b
    move/from16 v24, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_12

    :goto_13
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v26, v1

    move-object v1, v0

    move/from16 v0, v29

    move/from16 v30, v4

    move/from16 v4, p1

    move/from16 p1, p2

    move/from16 p2, v30

    move/from16 v31, v27

    move/from16 v27, v5

    move/from16 v5, v31

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllHistoryUserBeanData()Ljava/util/List;
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM online_user_history ORDER BY last_watch_time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v3, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "is_uploaded"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "serialId"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "source_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "video_id"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "video_name"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "series_id"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "video_description"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_play_postion"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "duration"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "video_cover"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_watch_time"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_frame_img"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "watch_progress"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "update_progress"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "record_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "user_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "video_serial_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "video_link"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "source_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "pay_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "is_intact"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "is_youtube"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "channel_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "channel_cover"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "video_bean_json"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "play_let"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v29, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;-><init>()V

    move-object/from16 v30, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    move/from16 v31, v0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_4
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_5

    :cond_4
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_5
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    move/from16 v0, v29

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_6
    move/from16 v29, v5

    move/from16 v1, v17

    move/from16 v17, v4

    goto :goto_7

    :cond_5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_6

    :goto_7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    move v5, v0

    move/from16 v4, v18

    move/from16 v18, v1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_8
    move/from16 v1, v20

    goto :goto_9

    :cond_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_8

    :goto_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_7

    move/from16 v19, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_a
    move/from16 v0, v21

    goto :goto_b

    :cond_7
    move/from16 v19, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_a

    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_8

    move/from16 v20, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_c
    move/from16 v21, v0

    move/from16 v1, v22

    goto :goto_d

    :cond_8
    move/from16 v20, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_c

    :goto_d
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    move/from16 v22, v1

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    move/from16 v23, v0

    move/from16 v1, v24

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_9

    move/from16 v24, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_e
    move/from16 v1, v26

    goto :goto_f

    :cond_9
    move/from16 v24, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_e

    :goto_f
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_a

    move/from16 v25, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_10
    move/from16 v0, v27

    goto :goto_11

    :cond_a
    move/from16 v25, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_10

    :goto_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_b

    move/from16 v26, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_12
    move/from16 v27, v0

    move/from16 v1, v28

    goto :goto_13

    :cond_b
    move/from16 v26, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_12

    :goto_13
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v28, v1

    move-object v1, v0

    move/from16 v0, v31

    move/from16 v32, v18

    move/from16 v18, v4

    move/from16 v4, v17

    move/from16 v17, v32

    move/from16 v33, v29

    move/from16 v29, v5

    move/from16 v5, v33

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllLiveHistoryUserBean()Landroidx/lifecycle/LiveData;
    .locals 5

    const-string v0, "SELECT * FROM online_user_history ORDER BY last_watch_time DESC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "online_user_history"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltg7$h;

    invoke-direct {v4, p0, v0}, Ltg7$h;-><init>(Ltg7;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllLiveHistoryUserBeanList()Ljava/util/List;
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM online_user_history ORDER BY last_watch_time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v3, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "is_uploaded"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "serialId"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "source_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "video_id"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "video_name"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "series_id"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "video_description"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_play_postion"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "duration"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "video_cover"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_watch_time"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_frame_img"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "watch_progress"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "update_progress"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "record_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "user_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "video_serial_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "video_link"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "source_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "pay_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "is_intact"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "is_youtube"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "channel_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "channel_cover"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "video_bean_json"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "play_let"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v29, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;-><init>()V

    move-object/from16 v30, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    move/from16 v31, v0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_4
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_5

    :cond_4
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_5
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    move/from16 v0, v29

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_6
    move/from16 v29, v5

    move/from16 v1, v17

    move/from16 v17, v4

    goto :goto_7

    :cond_5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_6

    :goto_7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    move v5, v0

    move/from16 v4, v18

    move/from16 v18, v1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_8
    move/from16 v1, v20

    goto :goto_9

    :cond_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_8

    :goto_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_7

    move/from16 v19, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_a
    move/from16 v0, v21

    goto :goto_b

    :cond_7
    move/from16 v19, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_a

    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_8

    move/from16 v20, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_c
    move/from16 v21, v0

    move/from16 v1, v22

    goto :goto_d

    :cond_8
    move/from16 v20, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_c

    :goto_d
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    move/from16 v22, v1

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    move/from16 v23, v0

    move/from16 v1, v24

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_9

    move/from16 v24, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_e
    move/from16 v1, v26

    goto :goto_f

    :cond_9
    move/from16 v24, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_e

    :goto_f
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_a

    move/from16 v25, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_10
    move/from16 v0, v27

    goto :goto_11

    :cond_a
    move/from16 v25, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_10

    :goto_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_b

    move/from16 v26, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_12
    move/from16 v27, v0

    move/from16 v1, v28

    goto :goto_13

    :cond_b
    move/from16 v26, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_12

    :goto_13
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v28, v1

    move-object v1, v0

    move/from16 v0, v31

    move/from16 v32, v18

    move/from16 v18, v4

    move/from16 v4, v17

    move/from16 v17, v32

    move/from16 v33, v29

    move/from16 v29, v5

    move/from16 v5, v33

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllLiveHistoryUserBeanNotDelete()Landroidx/lifecycle/LiveData;
    .locals 5

    const-string v0, "SELECT * FROM online_user_history where is_uploaded <= 1  ORDER BY last_watch_time DESC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string v3, "online_user_history"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltg7$i;

    invoke-direct {v4, p0, v0}, Ltg7$i;-><init>(Ltg7;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getHistoryUserBean(J)Ljava/util/List;
    .locals 6

    const-string v0, "SELECT `serialId`, `source_id`, `video_id`, `video_name`, `series_id`, `video_description`, `last_play_postion`, `duration`, `video_cover`, `last_watch_time`, `last_frame_img`, `watch_progress`, `update_progress`, `record_id`, `user_id`, `video_serial_name`, `video_link`, `source_type`, `pay_type`, `is_intact`, `is_youtube`, `channel_name`, `channel_cover`, `video_bean_json`, `play_let` FROM (SELECT * FROM online_user_history where serialId=?)"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_1
    const/4 v4, 0x2

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_2
    const/4 v4, 0x4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    const/4 v4, 0x5

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_3
    const/4 v4, 0x6

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    const/4 v4, 0x7

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    const/16 v4, 0x8

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_4
    const/16 v4, 0x9

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    const/16 v4, 0xa

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_5

    :cond_4
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_5
    const/16 v4, 0xb

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    const/16 v4, 0xc

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_6

    :cond_5
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_6
    const/16 v4, 0xd

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    const/16 v4, 0xe

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    const/16 v4, 0xf

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_7

    :cond_6
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_7
    const/16 v4, 0x10

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_8

    :cond_7
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_8
    const/16 v4, 0x11

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_9

    :cond_8
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_9
    const/16 v4, 0x12

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    const/16 v4, 0x13

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    const/16 v4, 0x14

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    const/16 v4, 0x15

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_a
    const/16 v4, 0x16

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_b

    :cond_a
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_b
    const/16 v4, 0x17

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_b

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_c

    :cond_b
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_c
    const/16 v4, 0x18

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :goto_d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public getHistoryUserBeanBySourceId(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const-string v0, "SELECT `serialId`, `source_id`, `video_id`, `video_name`, `series_id`, `video_description`, `last_play_postion`, `duration`, `video_cover`, `last_watch_time`, `last_frame_img`, `watch_progress`, `update_progress`, `record_id`, `user_id`, `video_serial_name`, `video_link`, `source_type`, `pay_type`, `is_intact`, `is_youtube`, `channel_name`, `channel_cover`, `video_bean_json`, `play_let` FROM (SELECT * FROM online_user_history where source_id=?)"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-direct {v4}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_e

    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_2
    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    const/4 v5, 0x3

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_3
    const/4 v5, 0x4

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    const/4 v5, 0x5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_4
    const/4 v5, 0x6

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    const/4 v5, 0x7

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    const/16 v5, 0x8

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_5

    :cond_4
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_5
    const/16 v5, 0x9

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    const/16 v5, 0xa

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_6

    :cond_5
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_6
    const/16 v5, 0xb

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    iput v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    const/16 v5, 0xc

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_7

    :cond_6
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_7
    const/16 v5, 0xd

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    const/16 v5, 0xe

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    const/16 v5, 0xf

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_8

    :cond_7
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_8
    const/16 v5, 0x10

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_9

    :cond_8
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_9
    const/16 v5, 0x11

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_a

    :cond_9
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_a
    const/16 v5, 0x12

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    const/16 v5, 0x13

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    const/16 v5, 0x14

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    const/16 v5, 0x15

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_a

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_b

    :cond_a
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_b
    const/16 v5, 0x16

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_b

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_c

    :cond_b
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_c
    const/16 v5, 0x17

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_c

    iput-object v2, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_d

    :cond_c
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_d
    const/16 v5, 0x18

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :cond_d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :goto_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public getHistoryUserBeanByVideoId(J)Ljava/util/List;
    .locals 6

    const-string v0, "SELECT `serialId`, `source_id`, `video_id`, `video_name`, `series_id`, `video_description`, `last_play_postion`, `duration`, `video_cover`, `last_watch_time`, `last_frame_img`, `watch_progress`, `update_progress`, `record_id`, `user_id`, `video_serial_name`, `video_link`, `source_type`, `pay_type`, `is_intact`, `is_youtube`, `channel_name`, `channel_cover`, `video_bean_json`, `play_let` FROM (SELECT * FROM online_user_history where video_id=?)"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_1
    const/4 v4, 0x2

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_2
    const/4 v4, 0x4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    const/4 v4, 0x5

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_3
    const/4 v4, 0x6

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    const/4 v4, 0x7

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    const/16 v4, 0x8

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_4
    const/16 v4, 0x9

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    const/16 v4, 0xa

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_5

    :cond_4
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_5
    const/16 v4, 0xb

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    const/16 v4, 0xc

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_6

    :cond_5
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_6
    const/16 v4, 0xd

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    const/16 v4, 0xe

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    const/16 v4, 0xf

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_7

    :cond_6
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_7
    const/16 v4, 0x10

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_8

    :cond_7
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_8
    const/16 v4, 0x11

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_9

    :cond_8
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_9
    const/16 v4, 0x12

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    const/16 v4, 0x13

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    const/16 v4, 0x14

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    const/16 v4, 0x15

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_a
    const/16 v4, 0x16

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_b

    :cond_a
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_b
    const/16 v4, 0x17

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_b

    iput-object p2, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_c

    :cond_b
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_c
    const/16 v4, 0x18

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :goto_d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public getHistoryUserBeanByVideoIdIntact(J)Ljava/util/List;
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM online_user_history where video_id=? and is_intact == 1"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    move-wide/from16 v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v2, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "is_uploaded"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "serialId"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "source_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "video_id"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "video_name"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "series_id"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "video_description"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_play_postion"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "duration"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "video_cover"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_watch_time"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_frame_img"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "watch_progress"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "update_progress"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "record_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "user_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p2, v1

    const-string v1, "video_serial_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "video_link"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "source_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "pay_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "is_intact"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "is_youtube"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "channel_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "channel_cover"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "video_bean_json"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "play_let"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v27, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;-><init>()V

    move-object/from16 v28, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    move/from16 v29, v0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_4
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_5

    :cond_4
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_5
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_6
    move/from16 v1, p1

    move/from16 p1, v4

    move/from16 v27, v5

    goto :goto_7

    :cond_5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_6

    :goto_7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    move/from16 v4, p2

    move v5, v0

    move/from16 p2, v1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_8
    move/from16 v1, v18

    goto :goto_9

    :cond_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_8

    :goto_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v17, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_a
    move/from16 v0, v19

    goto :goto_b

    :cond_7
    move/from16 v17, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_a

    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_c
    move/from16 v19, v0

    move/from16 v1, v20

    goto :goto_d

    :cond_8
    move/from16 v18, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_c

    :goto_d
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    move/from16 v20, v1

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    move/from16 v21, v0

    move/from16 v1, v22

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_9

    move/from16 v22, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_e
    move/from16 v1, v24

    goto :goto_f

    :cond_9
    move/from16 v22, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_e

    :goto_f
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_a

    move/from16 v23, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_10
    move/from16 v0, v25

    goto :goto_11

    :cond_a
    move/from16 v23, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_10

    :goto_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_b

    move/from16 v24, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_12
    move/from16 v25, v0

    move/from16 v1, v26

    goto :goto_13

    :cond_b
    move/from16 v24, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_12

    :goto_13
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v26, v1

    move-object v1, v0

    move/from16 v0, v29

    move/from16 v30, v4

    move/from16 v4, p1

    move/from16 p1, p2

    move/from16 p2, v30

    move/from16 v31, v27

    move/from16 v27, v5

    move/from16 v5, v31

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getHistoryUserBeanCount(I)Ljava/util/List;
    .locals 33

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM online_user_history ORDER BY last_watch_time DESC LIMIT?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v2, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ltg7;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "is_uploaded"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "serialId"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "source_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "video_id"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "video_name"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "series_id"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "video_description"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_play_postion"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "duration"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "video_cover"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_watch_time"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_frame_img"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "watch_progress"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "update_progress"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "record_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "user_id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "video_serial_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "video_link"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "source_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "pay_type"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "is_intact"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "is_youtube"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "channel_name"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "channel_cover"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "video_bean_json"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "play_let"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v28, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;-><init>()V

    move-object/from16 v29, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    move/from16 v30, v0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_4
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_5

    :cond_4
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_5
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    move/from16 v0, v28

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_6
    move/from16 v1, p1

    move/from16 p1, v4

    move/from16 v28, v5

    goto :goto_7

    :cond_5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_6

    :goto_7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    move v5, v0

    move/from16 v4, v17

    move/from16 v17, v1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_8
    move/from16 v1, v19

    goto :goto_9

    :cond_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_8

    :goto_9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_a
    move/from16 v0, v20

    goto :goto_b

    :cond_7
    move/from16 v18, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_a

    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_8

    move/from16 v19, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_c
    move/from16 v20, v0

    move/from16 v1, v21

    goto :goto_d

    :cond_8
    move/from16 v19, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_c

    :goto_d
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    move/from16 v21, v1

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    move/from16 v22, v0

    move/from16 v1, v23

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_9

    move/from16 v23, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_e
    move/from16 v1, v25

    goto :goto_f

    :cond_9
    move/from16 v23, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_e

    :goto_f
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_a

    move/from16 v24, v0

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_10
    move/from16 v0, v26

    goto :goto_11

    :cond_a
    move/from16 v24, v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_10

    :goto_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_b

    move/from16 v25, v1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_12
    move/from16 v26, v0

    move/from16 v1, v27

    goto :goto_13

    :cond_b
    move/from16 v25, v1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_12

    :goto_13
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v27, v1

    move-object v1, v0

    move/from16 v0, v30

    move/from16 v31, v4

    move/from16 v4, p1

    move/from16 p1, v17

    move/from16 v17, v31

    move/from16 v32, v28

    move/from16 v28, v5

    move/from16 v5, v32

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public insertHistories(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Ltg7;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public insertHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)J
    .locals 2

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Ltg7;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ltg7;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
