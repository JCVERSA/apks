.class public final Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;
.super Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertionAdapter;

.field public final c:Landroidx/room/EntityInsertionAdapter;

.field public final d:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field public final e:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field public final f:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field public final g:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$1;-><init>(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->b:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$2;-><init>(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->c:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$3;-><init>(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->d:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$4;-><init>(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->e:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$5;-><init>(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->f:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$6;-><init>(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->g:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static bridge synthetic a(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method public static synthetic b(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;->replaceTags(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public addTag(Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->c:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public addTags(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->c:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public delete(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->d:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteTag(Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->e:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteTagsByTorrentId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public getAllTorrents()Ljava/util/List;
    .locals 27

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM Torrent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v3, v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "name"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "downloadPath"

    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "dateAdded"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "error"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "manuallyPaused"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sequentialDownload"

    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "magnet"

    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "downloadingMetadata"

    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "visibility"

    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "firstLastPiecePriority"

    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v17, v3

    goto :goto_1

    :cond_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v20, v3

    goto :goto_2

    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    :goto_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_3

    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Lorg/proninyaroslav/libretorrent/core/storage/converter/UriConverter;->toUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v26, 0x1

    if-eqz v2, :cond_3

    move/from16 v21, v26

    goto :goto_4

    :cond_3
    const/16 v21, 0x0

    :goto_4
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v24, v26

    goto :goto_5

    :cond_4
    const/16 v24, 0x0

    :goto_5
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v18, v3

    goto :goto_6

    :cond_5
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    :goto_6
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v25, v26

    goto :goto_7

    :cond_6
    const/16 v25, 0x0

    :goto_7
    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v25}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZJZZ)V

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_7

    iput-object v3, v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_7
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    :goto_8
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_8

    move/from16 v3, v26

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    iput-boolean v3, v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->downloadingMetadata:Z

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->visibility:I

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v15

    :goto_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getTorrentById(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM Torrent WHERE id = ?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object v1, v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "name"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "downloadPath"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "dateAdded"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "error"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "manuallyPaused"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sequentialDownload"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "magnet"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "downloadingMetadata"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "visibility"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "firstLastPiecePriority"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v17, v4

    goto :goto_1

    :cond_1
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v20, v4

    goto :goto_2

    :cond_2
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    :goto_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v4

    goto :goto_3

    :cond_3
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/storage/converter/UriConverter;->toUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move/from16 v21, v3

    goto :goto_4

    :cond_4
    move/from16 v21, v1

    :goto_4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v24, v3

    goto :goto_5

    :cond_5
    move/from16 v24, v1

    :goto_5
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v18, v4

    goto :goto_6

    :cond_6
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    :goto_6
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v25, v3

    goto :goto_7

    :cond_7
    move/from16 v25, v1

    :goto_7
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v25}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZJZZ)V

    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iput-object v4, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_8
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    :goto_8
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_9

    :cond_9
    move v3, v1

    :goto_9
    iput-boolean v3, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->downloadingMetadata:Z

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->visibility:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    :cond_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :goto_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getTorrentByIdSingle(Ljava/lang/String;)Lxm9;
    .locals 2

    const-string v0, "SELECT * FROM Torrent WHERE id = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$7;

    invoke-direct {p1, p0, v0}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$7;-><init>(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1}, Landroidx/room/RxRoom;->createSingle(Ljava/util/concurrent/Callable;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public observeTorrentById(Ljava/lang/String;)Lr14;
    .locals 3

    const-string v0, "SELECT * FROM Torrent WHERE id = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    const-string v1, "Torrent"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$8;

    invoke-direct {v2, p0, v0}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$8;-><init>(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p0, 0x0

    invoke-static {p1, p0, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public replaceTags(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->b(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public update(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->f:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
