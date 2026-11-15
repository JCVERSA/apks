.class public abstract Lt6c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lt6c;->g(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lt6c;->h(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/transsion/dbdata/beans/media/MediaItem;)J
    .locals 6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    invoke-static {v5, v1, v2, v3, v4}, Lrv8;->d(ILjava/lang/String;IJ)Lcom/transsion/dbdata/database/VideoPlayListMedia;

    move-result-object v1

    invoke-interface {v0, v1}, Livb;->insertPlayListMedia(Lcom/transsion/dbdata/database/VideoPlayListMedia;)J

    move-result-wide v0

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p0}, Ldp3;->b(ZLcom/transsion/dbdata/beans/media/MediaItem;)V

    return-wide v0
.end method

.method public static d(ILjava/lang/String;Ljava/util/ArrayList;)[J
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v5, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lrv8;->e(ILjava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/dbdata/database/VideoPlayListMedia;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object p0

    invoke-interface {p0, v0}, Livb;->insertPlayListMedia(Ljava/util/List;)[J

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 6

    invoke-static {}, Lykc;->a()Lykc;

    move-result-object v0

    invoke-virtual {v0}, Lykc;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v1, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "VideoRoomDatabaseHelper"

    const-string p1, "deleteVideoStatesInDb error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    long-to-int v2, v2

    invoke-interface {p0, v1, v2}, Lg5c;->getVideoRecordByMediaIdAndBuickId(II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p0, v1, p1}, Lg5c;->deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public static synthetic g(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static i(I)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v1

    invoke-interface {v1, p0}, Livb;->getPlayListMediaIdByPlayListFlag(I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lt6c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lqpb;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v2

    invoke-interface {v2, p0}, Livb;->getPlayListMediaByPlaylistFlag(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lqpb;->X(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lruc;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lye6;->b(Ljava/util/List;)V

    invoke-static {}, Lns9;->o()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lns9;->sortMediaItem(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Lqpb;->k0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Lns9;->sortMediaItem(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static j(I)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v1

    invoke-interface {v1, p0}, Livb;->getPlayListMediaIdByPlayListId(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lqpb;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lqpb;->X(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {}, Lns9;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lqpb;->k0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static k(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v3

    iget v4, v2, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    invoke-interface {v3, v4}, Livb;->getPlayListMediaIdByPlayListId(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lqpb;->X(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, v3, v5}, Lt6c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, v2, Lcom/transsion/dbdata/database/VideoPlayList;->count:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    :goto_1
    iput-object v5, v2, Lcom/transsion/dbdata/database/VideoPlayList;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Ls6c;

    invoke-direct {v4}, Ls6c;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v4}, Livb;->deletePlayListMediaByMediaId(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static l(Landroid/content/Context;IZ)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lt6c;->m(Landroid/content/Context;IZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/Context;IZZ)Ljava/util/ArrayList;
    .locals 18

    const-string v1, "VideoRoomDatabaseHelper"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object v0

    invoke-interface {v0}, Lg5c;->getAllRecordOrderRecordDate()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Loa1;->e()I

    move-result v4

    invoke-interface {v0, v4}, Lg5c;->getRecordMediaIdsOrderRecordDate(I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lqpb;->X(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v2, v4, v7}, Lt6c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryAllVideoStates recordList count:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/database/VideoRecord;

    iget-object v8, v4, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    iget v9, v4, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    iget v10, v4, Lcom/transsion/dbdata/database/VideoRecord;->position:I

    iget v11, v4, Lcom/transsion/dbdata/database/VideoRecord;->isPlayCompleted:I

    if-ne v11, v7, :cond_0

    move v11, v7

    goto :goto_1

    :cond_0
    move v11, v6

    :goto_1
    iget v12, v4, Lcom/transsion/dbdata/database/VideoRecord;->isVirtualFolder:I

    if-ne v12, v7, :cond_1

    move v12, v7

    goto :goto_2

    :cond_1
    move v12, v6

    :goto_2
    iget-object v13, v4, Lcom/transsion/dbdata/database/VideoRecord;->virtualFolder_matchName:Ljava/lang/String;

    iget v14, v4, Lcom/transsion/dbdata/database/VideoRecord;->subtitle_index:I

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v15

    new-instance v6, Lr6c;

    invoke-direct {v6, v8}, Lr6c;-><init>(Ljava/lang/String;)V

    invoke-interface {v15, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/media/MediaItem;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    const/4 v6, 0x0

    :goto_3
    const-wide/16 v16, 0x3e8

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryAllVideoStates have duplicate:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_2
    invoke-virtual {v6, v12}, Lcom/transsion/dbdata/beans/media/MediaItem;->setVirtualFolder(Z)V

    invoke-virtual {v6, v13}, Lcom/transsion/dbdata/beans/media/MediaItem;->setVirtualFolderMatchName(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    iput-boolean v11, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    invoke-virtual {v6, v14}, Lcom/transsion/dbdata/beans/media/MediaItem;->setSubtitleIndex(I)V

    iget-wide v8, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v8, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iget-wide v8, v4, Lcom/transsion/dbdata/database/VideoRecord;->record_date_modified:J

    div-long v8, v8, v16

    iput-wide v8, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iget v4, v4, Lcom/transsion/dbdata/database/VideoRecord;->duration:I

    int-to-long v8, v4

    iput-wide v8, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    if-nez p3, :cond_6

    invoke-static {v8}, Lruc;->a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_5

    iput-boolean v11, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    invoke-virtual {v6, v10}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    iget-wide v8, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v8, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iget-wide v8, v4, Lcom/transsion/dbdata/database/VideoRecord;->record_date_modified:J

    div-long v8, v8, v16

    iput-wide v8, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v4

    iget-object v8, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v4, v8}, Livb;->getFavoriteItem(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoPlayListMedia;

    move-result-object v4

    if-eqz v4, :cond_4

    move v4, v7

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v0, v8, v9}, Lg5c;->deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I

    :cond_6
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v6, p1

    if-le v4, v6, :cond_7

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAllVideoStates "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static n(Landroid/content/Context;ZIZ)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p2, p3}, Lt6c;->l(Landroid/content/Context;IZ)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lye6;->b(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-static {p0}, Lqpb;->k0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static o(I)Lcom/transsion/dbdata/database/AudioTrack;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->g()Lq10;

    move-result-object v0

    invoke-interface {v0, p0}, Lq10;->getAudioTrack(I)Lcom/transsion/dbdata/database/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method public static p(ILcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v1

    invoke-interface {v1, p0}, Livb;->getPlayListMediaIdByPlayListId(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lqpb;->c(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-static {p0}, Lruc;->a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static q(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)V
    .locals 10

    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object p0

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-interface {p0, v1}, Lg5c;->getTheVideoRecordMediaCountByData(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget v4, p3, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget v5, p3, Lcom/transsion/dbdata/beans/PlayerStates;->state:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const-string p0, "VideoRoomDatabaseHelper"

    const-string p2, "not recordVideoStates the video can\'t play"

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lg5c;->deleteVideoRecordByData(Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget v5, p3, Lcom/transsion/dbdata/beans/PlayerStates;->state:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_4

    int-to-long v4, v4

    iget-wide v6, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    if-nez v3, :cond_6

    new-instance p0, Lcom/transsion/dbdata/database/VideoRecord;

    invoke-direct {p0}, Lcom/transsion/dbdata/database/VideoRecord;-><init>()V

    :cond_6
    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-wide v4, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    long-to-int v2, v4

    goto :goto_2

    :cond_7
    iget v2, p3, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    :goto_2
    iput v2, p0, Lcom/transsion/dbdata/database/VideoRecord;->position:I

    iget-wide v4, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    long-to-int v2, v4

    iput v2, p0, Lcom/transsion/dbdata/database/VideoRecord;->duration:I

    iput v1, p0, Lcom/transsion/dbdata/database/VideoRecord;->isPlayCompleted:I

    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iput v1, p0, Lcom/transsion/dbdata/database/VideoRecord;->isVirtualFolder:I

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    iput-object p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->virtualFolder_matchName:Ljava/lang/String;

    iget-wide v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    long-to-int p1, v1

    iput p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->bucket_id:I

    iget p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->record_date_modified:J

    iget p1, p3, Lcom/transsion/dbdata/beans/PlayerStates;->subtitleIndex:I

    iput p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->subtitle_index:I

    if-eqz v3, :cond_9

    invoke-interface {v0, p0}, Lg5c;->updateVideoRecord(Lcom/transsion/dbdata/database/VideoRecord;)I

    goto :goto_3

    :cond_9
    invoke-interface {v0, p0}, Lg5c;->insertVideoRecord(Lcom/transsion/dbdata/database/VideoRecord;)J

    :cond_a
    :goto_3
    return-void
.end method

.method public static r(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)V
    .locals 10

    const-string v0, "recordVideoStates "

    const-string v1, "VideoRoomDatabaseHelper"

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v2, :cond_0

    invoke-static {p0, p1, p2, p3}, Lt6c;->q(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    iget v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "recordVideoStates not isLegalID"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object v2

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object p0

    iget v3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p0, v3}, Lg5c;->getTheVideoRecordMediaCountById(I)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    iget v6, p3, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    const/16 v7, 0x3e8

    if-le v6, v7, :cond_3

    goto :goto_1

    :cond_3
    iget v7, p3, Lcom/transsion/dbdata/beans/PlayerStates;->state:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    const-string p0, "not recordVideoStates the video can\'t play"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v2, p0, p1}, Lg5c;->deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I

    :cond_4
    return-void

    :cond_5
    :goto_1
    iget v7, p3, Lcom/transsion/dbdata/beans/PlayerStates;->state:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_6

    int-to-long v6, v6

    iget-wide v8, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    if-nez v5, :cond_8

    new-instance p0, Lcom/transsion/dbdata/database/VideoRecord;

    invoke-direct {p0}, Lcom/transsion/dbdata/database/VideoRecord;-><init>()V

    :cond_8
    iget-object v4, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v4, p0, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    iget v4, p3, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    iput v4, p0, Lcom/transsion/dbdata/database/VideoRecord;->position:I

    iget-wide v6, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    long-to-int v4, v6

    iput v4, p0, Lcom/transsion/dbdata/database/VideoRecord;->duration:I

    iput v3, p0, Lcom/transsion/dbdata/database/VideoRecord;->isPlayCompleted:I

    iget-boolean v3, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iput v3, p0, Lcom/transsion/dbdata/database/VideoRecord;->isVirtualFolder:I

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    if-nez p1, :cond_9

    const-string p1, ""

    :cond_9
    iput-object p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->virtualFolder_matchName:Ljava/lang/String;

    iget-wide v3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    long-to-int p1, v3

    iput p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->bucket_id:I

    iget p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->record_date_modified:J

    iget p1, p3, Lcom/transsion/dbdata/beans/PlayerStates;->subtitleIndex:I

    iput p1, p0, Lcom/transsion/dbdata/database/VideoRecord;->subtitle_index:I

    if-eqz v5, :cond_a

    invoke-interface {v2, p0}, Lg5c;->updateVideoRecord(Lcom/transsion/dbdata/database/VideoRecord;)I

    goto :goto_2

    :cond_a
    invoke-interface {v2, p0}, Lg5c;->insertVideoRecord(Lcom/transsion/dbdata/database/VideoRecord;)J

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    const-string p0, "recordVideoStates null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public static s(Lcom/transsion/dbdata/beans/media/MediaItem;)J
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v0, p0}, Livb;->deleteFavoriteListMedia(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static t(ILjava/util/ArrayList;)[J
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v2, p0, v3}, Livb;->deletePlayListMedia(II)I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
