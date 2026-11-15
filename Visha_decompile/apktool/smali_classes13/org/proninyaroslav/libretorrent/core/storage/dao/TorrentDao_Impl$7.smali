.class Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->getTorrentByIdSingle(Ljava/lang/String;)Lxm9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroidx/room/RoomSQLiteQuery;

.field public final synthetic c:Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$7;->c:Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$7;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$7;->c:Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;->a(Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    iget-object v2, v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$7;->b:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "id"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v5, "name"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "downloadPath"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "dateAdded"

    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "error"

    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "manuallyPaused"

    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sequentialDownload"

    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "magnet"

    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "downloadingMetadata"

    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "visibility"

    invoke-static {v1, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "firstLastPiecePriority"

    invoke-static {v1, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v16, v4

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    :goto_0
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v19, v4

    goto :goto_1

    :cond_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    :goto_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_2

    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lorg/proninyaroslav/libretorrent/core/storage/converter/UriConverter;->toUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    move/from16 v20, v5

    goto :goto_3

    :cond_3
    move/from16 v20, v3

    :goto_3
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v23, v5

    goto :goto_4

    :cond_4
    move/from16 v23, v3

    :goto_4
    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v17, v4

    goto :goto_5

    :cond_5
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_5
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v24, v5

    goto :goto_6

    :cond_6
    move/from16 v24, v3

    :goto_6
    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-object v15, v2

    invoke-direct/range {v15 .. v24}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZJZZ)V

    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-object v4, v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    :goto_7
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_8

    move v3, v5

    :cond_8
    iput-boolean v3, v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->downloadingMetadata:Z

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->visibility:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    :cond_9
    if-eqz v4, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v4

    :cond_a
    :try_start_1
    new-instance v2, Landroidx/room/EmptyResultSetException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query returned empty result set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$7;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/room/EmptyResultSetException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$7;->a()Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object p0

    return-object p0
.end method

.method public finalize()V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao_Impl$7;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
