.class public Ltg7$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltg7;->getAllLiveHistoryUserBeanNotDelete()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/room/RoomSQLiteQuery;

.field public final synthetic c:Ltg7;


# direct methods
.method public constructor <init>(Ltg7;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Ltg7$i;->c:Ltg7;

    iput-object p2, p0, Ltg7$i;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Ltg7$i;->c:Ltg7;

    invoke-static {v1}, Ltg7;->a(Ltg7;)Landroidx/room/RoomDatabase;

    move-result-object v1

    iget-object v0, v0, Ltg7$i;->b:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "is_uploaded"

    invoke-static {v1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "serialId"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "source_id"

    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "video_id"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "video_name"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "series_id"

    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "video_description"

    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "last_play_postion"

    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "duration"

    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "video_cover"

    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "last_watch_time"

    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_frame_img"

    invoke-static {v1, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "watch_progress"

    invoke-static {v1, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "update_progress"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "record_id"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "user_id"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "video_serial_name"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "video_link"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "source_type"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "pay_type"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "is_intact"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "is_youtube"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "channel_name"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "channel_cover"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "video_bean_json"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "play_let"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v28, v15

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_c

    new-instance v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-direct {v15}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;-><init>()V

    move-object/from16 v29, v3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    move v3, v13

    move/from16 v30, v14

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    iput-object v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    iput-object v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    :goto_2
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    iput-object v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    :goto_3
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    iput-object v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    :goto_4
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    iput-object v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    :goto_5
    move/from16 v13, v30

    goto :goto_6

    :cond_4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    iput-object v13, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    goto :goto_5

    :goto_6
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    iput v14, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    move/from16 v14, v28

    invoke-interface {v1, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_5

    move/from16 v28, v0

    const/4 v0, 0x0

    iput-object v0, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    :goto_7
    move/from16 v30, v3

    move/from16 v0, v16

    move/from16 v16, v2

    goto :goto_8

    :cond_5
    move/from16 v28, v0

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    goto :goto_7

    :goto_8
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    move/from16 v2, v17

    move/from16 v17, v4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    move/from16 v3, v18

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    iput-object v4, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    :goto_9
    move/from16 v4, v19

    goto :goto_a

    :cond_6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    goto :goto_9

    :goto_a
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v0

    const/4 v0, 0x0

    iput-object v0, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    :goto_b
    move/from16 v0, v20

    goto :goto_c

    :cond_7
    move/from16 v18, v0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    goto :goto_b

    :goto_c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_8

    move/from16 v19, v2

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    :goto_d
    move/from16 v20, v0

    move/from16 v2, v21

    goto :goto_e

    :cond_8
    move/from16 v19, v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    goto :goto_d

    :goto_e
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    move/from16 v21, v2

    move/from16 v0, v22

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    move/from16 v22, v0

    move/from16 v2, v23

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    move/from16 v0, v24

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_9

    move/from16 v23, v2

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    :goto_f
    move/from16 v2, v25

    goto :goto_10

    :cond_9
    move/from16 v23, v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    goto :goto_f

    :goto_10
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_a

    move/from16 v24, v0

    const/4 v0, 0x0

    iput-object v0, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    :goto_11
    move/from16 v0, v26

    goto :goto_12

    :cond_a
    move/from16 v24, v0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    goto :goto_11

    :goto_12
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_b

    move/from16 v25, v2

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    :goto_13
    move/from16 v26, v0

    move/from16 v2, v27

    goto :goto_14

    :cond_b
    move/from16 v25, v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    goto :goto_13

    :goto_14
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    move-object/from16 v0, v29

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v27, v2

    move/from16 v2, v16

    move/from16 v16, v18

    move/from16 v18, v3

    move-object v3, v0

    move/from16 v0, v28

    move/from16 v28, v14

    move v14, v13

    move/from16 v13, v30

    move/from16 v31, v19

    move/from16 v19, v4

    move/from16 v4, v17

    move/from16 v17, v31

    goto/16 :goto_0

    :cond_c
    move-object v0, v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_15
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ltg7$i;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public finalize()V
    .locals 0

    iget-object p0, p0, Ltg7$i;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
