.class public Le68$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le68;->getAudioPlayRecordList(I)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/room/RoomSQLiteQuery;

.field public final synthetic c:Le68;


# direct methods
.method public constructor <init>(Le68;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Le68$d;->c:Le68;

    iput-object p2, p0, Le68$d;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 13

    iget-object v0, p0, Le68$d;->c:Le68;

    invoke-static {v0}, Le68;->a(Le68;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object p0, p0, Le68$d;->b:Landroidx/room/RoomSQLiteQuery;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p0, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "name"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "playlist_id"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "media_id"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "playlistFlag"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "play_count"

    invoke-static {p0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_time"

    invoke-static {p0, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "_data"

    invoke-static {p0, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Lcom/transsion/dbdata/database/PlayListMedia;

    invoke-direct {v10}, Lcom/transsion/dbdata/database/PlayListMedia;-><init>()V

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/transsion/dbdata/database/PlayListMedia;->id:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    iput-object v2, v10, Lcom/transsion/dbdata/database/PlayListMedia;->name:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/transsion/dbdata/database/PlayListMedia;->name:Ljava/lang/String;

    :goto_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/transsion/dbdata/database/PlayListMedia;->playlist_id:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/transsion/dbdata/database/PlayListMedia;->playlistFlag:I

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/transsion/dbdata/database/PlayListMedia;->play_count:I

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/transsion/dbdata/database/PlayListMedia;->record_time:J

    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    iput-object v2, v10, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/transsion/dbdata/database/PlayListMedia;->_data:Ljava/lang/String;

    :goto_2
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v9

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Le68$d;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public finalize()V
    .locals 0

    iget-object p0, p0, Le68$d;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
