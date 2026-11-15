.class public final Lcom/transsion/dbdata/beans/ext/MediaExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "toLocalMediaLoadInfo",
        "Lcom/transsion/glide/load/model/LocalMediaLoadInfo;",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "Lcom/transsion/dbdata/database/VideoPlayList;",
        "Ljava/io/File;",
        "dbdata_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    invoke-static {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri(IZ)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 4
    :goto_1
    new-instance v0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    .line 5
    iget v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 6
    iget-object v4, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getOrientation()I

    move-result v5

    .line 8
    iget-wide v6, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    .line 9
    iget-object v8, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    .line 10
    iget-boolean v9, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v9}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;-><init>(ILandroid/net/Uri;Ljava/lang/String;IJLjava/lang/String;Z)V

    return-object v0
.end method

.method public static final toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    .line 19
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    .line 20
    iget-wide v5, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->dateModified:J

    const/4 v3, 0x0

    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public static final toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    .line 13
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 14
    :goto_1
    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getOrientation()I

    move-result v4

    .line 16
    iget-wide v5, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    move-object v1, v0

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public static final toLocalMediaLoadInfo(Lcom/transsion/dbdata/database/VideoPlayList;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    .line 23
    iget-object v2, p0, Lcom/transsion/dbdata/database/VideoPlayList;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public static final toLocalMediaLoadInfo(Ljava/io/File;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    .line 26
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const/4 v3, 0x0

    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;IJ)V

    return-object v0
.end method
