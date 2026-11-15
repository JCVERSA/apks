.class public Lkic$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkic;->getAllWebPreviewRecordDESC()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/room/RoomSQLiteQuery;

.field public final synthetic c:Lkic;


# direct methods
.method public constructor <init>(Lkic;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Lkic$e;->c:Lkic;

    iput-object p2, p0, Lkic$e;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lkic$e;->c:Lkic;

    invoke-static {v0}, Lkic;->a(Lkic;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object p0, p0, Lkic$e;->b:Landroidx/room/RoomSQLiteQuery;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p0, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "title"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "icon"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "previewBitmap"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "webUrl"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    invoke-direct {v7}, Lcom/transsion/sniffer_load/data/WebPreviewRecord;-><init>()V

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->id:J

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iput-object v2, v7, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->title:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->title:Ljava/lang/String;

    :goto_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iput-object v2, v7, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->icon:[B

    goto :goto_2

    :cond_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    iput-object v8, v7, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->icon:[B

    :goto_2
    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-object v2, v7, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->previewBitmap:[B

    goto :goto_3

    :cond_2
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    iput-object v8, v7, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->previewBitmap:[B

    :goto_3
    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    iput-object v2, v7, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->webUrl:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->webUrl:Ljava/lang/String;

    :goto_4
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v6

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkic$e;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public finalize()V
    .locals 0

    iget-object p0, p0, Lkic$e;->b:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
