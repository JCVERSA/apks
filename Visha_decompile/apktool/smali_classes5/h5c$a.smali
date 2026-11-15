.class public Lh5c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh5c;->getAllVideoRecordList(I)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/room/RoomSQLiteQuery;

.field public final synthetic c:Lh5c;


# direct methods
.method public constructor <init>(Lh5c;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lh5c$a;->c:Lh5c;

    iput-object p2, p0, Lh5c$a;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lh5c$a;->c:Lh5c;

    invoke-static {v1}, Lh5c;->a(Lh5c;)Landroidx/room/RoomDatabase;

    move-result-object v1

    iget-object v0, v0, Lh5c$a;->b:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "_data"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "position"

    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "duration"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "isPlayCompleted"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "isVirtualFolder"

    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "virtualFolder_path"

    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "virtualFolder_matchName"

    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "bucket_id"

    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "_id"

    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "date_modified"

    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "record_date_modified"

    invoke-static {v1, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subtitle_index"

    invoke-static {v1, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "play_count"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v16, v15

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_3

    new-instance v15, Lcom/transsion/dbdata/database/VideoRecord;

    invoke-direct {v15}, Lcom/transsion/dbdata/database/VideoRecord;-><init>()V

    move-object/from16 v17, v3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->id:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->position:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->duration:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->isPlayCompleted:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->isVirtualFolder:I

    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->virtualFolder_path:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->virtualFolder_path:Ljava/lang/String;

    :goto_2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-object v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->virtualFolder_matchName:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->virtualFolder_matchName:Ljava/lang/String;

    :goto_3
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->bucket_id:I

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    move/from16 v18, v2

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/transsion/dbdata/database/VideoRecord;->date_modified:J

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/transsion/dbdata/database/VideoRecord;->record_date_modified:J

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v15, Lcom/transsion/dbdata/database/VideoRecord;->subtitle_index:I

    move/from16 v2, v16

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/transsion/dbdata/database/VideoRecord;->playCount:I

    move-object/from16 v3, v17

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v2

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lh5c$a;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public finalize()V
    .locals 0

    iget-object p0, p0, Lh5c$a;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
