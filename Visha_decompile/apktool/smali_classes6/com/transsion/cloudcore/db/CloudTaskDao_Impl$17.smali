.class Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->getAllDownloadedTaskLiveData()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$17;->this$0:Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;

    iput-object p2, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$17;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$17;->call()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/util/List;
    .locals 24
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$17;->this$0:Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;

    invoke-static {v1}, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;->a(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$17;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    :try_start_0
    const-string v0, "task_id"

    invoke-static {v1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 4
    const-string v4, "cloud_file_id"

    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 5
    const-string v5, "file_name"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 6
    const-string v6, "file_size"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 7
    const-string v7, "progress"

    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 8
    const-string v8, "local_file_id"

    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 9
    const-string v9, "local_file_path"

    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 10
    const-string v10, "task_type"

    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 11
    const-string v11, "task_status"

    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 12
    const-string v12, "file_type"

    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 13
    const-string v13, "mime_type"

    invoke-static {v1, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 14
    const-string v14, "create_time"

    invoke-static {v1, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 15
    const-string v15, "update_time"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 16
    const-string v2, "duration"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 17
    const-string v3, "download_source"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    .line 18
    const-string v3, "isCloudFileExist"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    .line 19
    const-string v3, "isLocalFileExist"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    .line 20
    const-string v3, "cover_img_url"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v20, v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 23
    new-instance v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v2}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    .line 24
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v21, v3

    const/4 v3, 0x0

    .line 25
    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v21, v3

    .line 26
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    .line 27
    :goto_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 28
    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    goto :goto_2

    .line 29
    :cond_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    .line 30
    :goto_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 31
    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    :goto_3
    move/from16 v22, v4

    goto :goto_4

    .line 32
    :cond_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    goto :goto_3

    .line 33
    :goto_4
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    .line 34
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    iput v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    .line 35
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    .line 36
    invoke-interface {v1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 37
    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    goto :goto_5

    .line 38
    :cond_3
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    .line 39
    :goto_5
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    .line 40
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    .line 41
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    .line 42
    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 43
    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    goto :goto_6

    .line 44
    :cond_4
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    .line 45
    :goto_6
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    .line 46
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    move/from16 v3, v20

    move/from16 v20, v5

    .line 47
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    move/from16 v4, v16

    .line 48
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    move/from16 v5, v17

    .line 49
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0x1

    if-eqz v16, :cond_5

    move/from16 v16, v0

    move/from16 v0, v17

    goto :goto_7

    :cond_5
    move/from16 v16, v0

    const/4 v0, 0x0

    .line 50
    :goto_7
    iput-boolean v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    move/from16 v0, v18

    .line 51
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_6

    move/from16 v18, v0

    move/from16 v0, v17

    goto :goto_8

    :cond_6
    move/from16 v18, v0

    const/4 v0, 0x0

    .line 52
    :goto_8
    iput-boolean v0, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    move/from16 v0, v19

    .line 53
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v17, v3

    const/4 v3, 0x0

    .line 54
    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    :goto_9
    move-object/from16 v3, v21

    goto :goto_a

    :cond_7
    move/from16 v17, v3

    .line 55
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    goto :goto_9

    .line 56
    :goto_a
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v16, v4

    move/from16 v4, v22

    move/from16 v23, v17

    move/from16 v17, v5

    move/from16 v5, v20

    move/from16 v20, v23

    goto/16 :goto_0

    .line 57
    :cond_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    :goto_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 58
    throw v0
.end method

.method public finalize()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$17;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
