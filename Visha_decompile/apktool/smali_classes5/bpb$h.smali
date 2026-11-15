.class public Lbpb$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpb;->getVideoCloudLiveData()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/room/RoomSQLiteQuery;

.field public final synthetic c:Lbpb;


# direct methods
.method public constructor <init>(Lbpb;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lbpb$h;->c:Lbpb;

    iput-object p2, p0, Lbpb$h;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lbpb$h;->c:Lbpb;

    invoke-static {v1}, Lbpb;->a(Lbpb;)Landroidx/room/RoomDatabase;

    move-result-object v1

    iget-object v0, v0, Lbpb$h;->b:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "mId"

    invoke-static {v1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "file_id"

    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "file_name"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "size"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "duration"

    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "height"

    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "width"

    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "watch_status"

    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "create_at"

    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "sharer_nickname"

    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "play_duration"

    invoke-static {v1, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "file_cover_path"

    invoke-static {v1, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "preview_url"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "parent_file_id"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "is_exit_local"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "cache_time"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "is_recent_data"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "data_type"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "mediaLibrary_id"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "cover"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v22, v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Lcom/transsion/dbdata/beans/VideoCloudCache;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/VideoCloudCache;-><init>()V

    move/from16 v23, v14

    move/from16 v24, v15

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setId(J)V

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_1
    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setFileId(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setFileName(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_3
    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setSize(Ljava/lang/Long;)V

    invoke-interface {v1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    goto :goto_4

    :cond_3
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_4
    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setDuration(Ljava/lang/Long;)V

    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    goto :goto_5

    :cond_4
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_5
    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setHeight(Ljava/lang/Long;)V

    invoke-interface {v1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x0

    goto :goto_6

    :cond_5
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_6
    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setWidth(Ljava/lang/Long;)V

    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    goto :goto_7

    :cond_6
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_7
    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setWatchStatus(Ljava/lang/Integer;)V

    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    goto :goto_8

    :cond_7
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_8
    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setCreateAt(Ljava/lang/String;)V

    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    goto :goto_9

    :cond_8
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_9
    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setSharerNickname(Ljava/lang/String;)V

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_a

    :cond_9
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_a
    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setPlayDuration(Ljava/lang/Long;)V

    move/from16 v14, v23

    invoke-interface {v1, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_b

    :cond_a
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_b
    invoke-virtual {v2, v15}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setFileCoverPath(Ljava/lang/String;)V

    move/from16 v15, v24

    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_b

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v0

    move-object/from16 v0, v23

    :goto_c
    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setPreviewUrl(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_c

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v23, v0

    move-object/from16 v0, v22

    :goto_d
    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setParentFileId(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x0

    goto :goto_e

    :cond_d
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :goto_e
    const/16 v22, 0x1

    if-nez v16, :cond_e

    move/from16 v25, v0

    const/4 v0, 0x0

    goto :goto_10

    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-eqz v16, :cond_f

    move/from16 v16, v22

    goto :goto_f

    :cond_f
    const/16 v16, 0x0

    :goto_f
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move/from16 v25, v0

    move-object/from16 v0, v16

    :goto_10
    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setIsExitLocal(Ljava/lang/Boolean;)V

    move/from16 v16, v4

    move/from16 v0, v17

    move/from16 v17, v5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setCacheTime(J)V

    move/from16 v4, v18

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    goto :goto_11

    :cond_10
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_11
    if-nez v5, :cond_11

    const/4 v5, 0x0

    goto :goto_13

    :cond_11
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_12

    :cond_12
    const/16 v22, 0x0

    :goto_12
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_13
    invoke-virtual {v2, v5}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setIsRecentData(Ljava/lang/Boolean;)V

    move/from16 v18, v0

    move/from16 v5, v19

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setDataType(I)V

    move/from16 v0, v20

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_13

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v20, v0

    move-object/from16 v0, v19

    :goto_14
    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setMediaLibraryId(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_14

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v21, v0

    move-object/from16 v0, v19

    :goto_15
    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setCover(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v19, v5

    move/from16 v5, v17

    move/from16 v17, v18

    move/from16 v22, v23

    move/from16 v0, v24

    move/from16 v18, v4

    move/from16 v4, v16

    move/from16 v16, v25

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_16

    :cond_15
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    :goto_16
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lbpb$h;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public finalize()V
    .locals 0

    iget-object p0, p0, Lbpb$h;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
