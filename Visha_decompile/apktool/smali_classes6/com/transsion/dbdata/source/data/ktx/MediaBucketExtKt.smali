.class public final Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u001a3\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\'\u0010\r\u001a\u00020\n*\u00020\u00082\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a9\u0010\r\u001a\u0004\u0018\u00010\n*\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00042\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0000\u00a2\u0006\u0004\u0008\r\u0010\u0013\u001a\'\u0010\u0018\u001a\u00020\n*\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0000H\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a-\u0010\u0018\u001a\u0004\u0018\u00010\n*\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "",
        "parentPath",
        "bucketDisplayName",
        "relativePath",
        "",
        "isAudioBucket",
        "determineBucketParentName",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Lkotlin/Function1;",
        "Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "Lzfb;",
        "indexUpdate",
        "toVideoBucket",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "Landroid/database/Cursor;",
        "Landroid/net/Uri;",
        "uri",
        "checkSuffix",
        "(Landroid/database/Cursor;Landroid/net/Uri;ZLe74;)Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "",
        "childrenCount",
        "name",
        "toAudioBucket",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "dbUri",
        "fromMV",
        "needFilter",
        "(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaBucket;",
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
.method private static final determineBucketParentName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    sget-object v0, Luf1;->a:Luf1;

    invoke-virtual {v0}, Luf1;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Root"

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object p1, Lge6;->a:Lge6;

    invoke-virtual {p1, p0}, Lge6;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    return-object p1

    :cond_3
    const-string p0, "DCIM/Camera/"

    const/4 p3, 0x1

    invoke-static {p2, p0, p3}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (SD)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public static synthetic determineBucketParentName$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->determineBucketParentName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toAudioBucket(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbUri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 14
    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 15
    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudioBucket(Landroid/database/Cursor;)Z

    move-result p2

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudioMVBucket(Landroid/database/Cursor;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_2

    return-object v1

    .line 17
    :cond_2
    sget-object p2, Lge6;->a:Lge6;

    invoke-virtual {p2, v0}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_3

    .line 18
    sget-object p3, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-static {p3, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-object v1

    .line 19
    :cond_3
    invoke-virtual {p2, v0}, Lge6;->o(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    return-object v1

    :cond_4
    const/4 p2, 0x0

    .line 20
    invoke-static {p0, p2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_5
    const/4 p2, -0x1

    :goto_1
    const/4 p3, 0x2

    .line 21
    invoke-static {p0, p3}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0xd

    .line 22
    invoke-static {p0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_6
    const-wide/16 v3, -0x1

    :goto_2
    const/16 v1, 0xe

    .line 23
    invoke-static {p0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    .line 24
    invoke-static {p0, v5}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_3

    :cond_7
    const-wide/16 v5, 0x0

    .line 25
    :goto_3
    invoke-static {v0, p3}, Lge6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x1

    .line 26
    invoke-static {v2, v1, p0, p3}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->determineBucketParentName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 27
    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    .line 28
    invoke-virtual {v0, v3, v4}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    .line 29
    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setRelativePath(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v5, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setDateModified(J)V

    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    .line 33
    invoke-virtual {v0, p3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toAudioBucket(Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    .line 3
    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setDateModified(J)V

    .line 4
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    .line 5
    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Lcom/transsion/dbdata/source/data/ktx/UriKtxKt;->getAudioMediaUriWithAppendedPath(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setCount(I)V

    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    const-string p2, "parentPath"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    .line 11
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    const-string v1, "relativePath"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 12
    invoke-static {p1, p2, p0, v1}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->determineBucketParentName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public static synthetic toAudioBucket$default(Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->toAudioBucket(Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p0

    return-object p0
.end method

.method public static final toVideoBucket(Landroid/database/Cursor;Landroid/net/Uri;ZLe74;)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/net/Uri;",
            "Z",
            "Le74;",
            ")",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "indexUpdate"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 22
    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 23
    invoke-static {p1, v1, p2, v1}, Lcom/transsion/dbdata/source/data/ktx/FileValidExtKt;->isValidVideoFilePath(Ljava/lang/String;ZZZ)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const/4 p2, 0x0

    .line 24
    invoke-static {p0, p2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x2

    .line 25
    invoke-static {p0, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    .line 26
    invoke-static {p0, v3}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :cond_3
    const-wide/16 v3, -0x1

    :goto_1
    const/16 v5, 0xb

    .line 27
    invoke-static {p0, v5}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    .line 28
    invoke-static {p0, v6}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_4
    const-wide/16 v6, 0x0

    .line 29
    :goto_2
    sget-object p0, Lge6;->a:Lge6;

    invoke-virtual {p0, p1}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {p1, v2}, Lge6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    new-instance v8, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v8}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    .line 32
    invoke-virtual {v8, v3, v4}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    .line 33
    invoke-virtual {v8, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v8, p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setRelativePath(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v8, v6, v7}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setDateModified(J)V

    .line 36
    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/UriKtxKt;->getFileMediaUriWithAppendedPath(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    .line 37
    invoke-static {p0, v2, p2}, Lcom/transsion/dbdata/utils/FolderLabelUtils;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/FolderLabelItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 38
    iget-object p0, v0, Lcom/transsion/dbdata/beans/FolderLabelItem;->folderName:Ljava/lang/String;

    invoke-virtual {v8, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    .line 39
    iget p0, v0, Lcom/transsion/dbdata/beans/FolderLabelItem;->folderIndex:I

    invoke-virtual {v8, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setIndex(I)V

    .line 40
    invoke-virtual {v8, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setLabelFolder(Z)V

    goto :goto_3

    .line 41
    :cond_5
    invoke-static {p0, v5, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->determineBucketParentName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-virtual {v8, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    .line 43
    invoke-interface {p3, v8}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {v8, p2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setLabelFolder(Z)V

    :goto_3
    return-object v8
.end method

.method public static final toVideoBucket(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            "Le74;",
            ")",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexUpdate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    .line 4
    invoke-static {v2, v1}, Lge6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    const/4 v4, 0x0

    .line 6
    iput v4, v3, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    .line 7
    iget-wide v5, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    invoke-virtual {v3, v5, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    .line 8
    invoke-virtual {v3, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setRelativePath(Ljava/lang/String;)V

    .line 10
    iget-wide v5, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {v3, v5, v6}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setDateModified(J)V

    .line 11
    iget v5, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v5}, Lcom/transsion/dbdata/source/data/ktx/UriKtxKt;->getFileMediaUriWithAppendedPath(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    .line 12
    invoke-static {v0, v1, v4}, Lcom/transsion/dbdata/utils/FolderLabelUtils;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/FolderLabelItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    iget-object p0, v1, Lcom/transsion/dbdata/beans/FolderLabelItem;->folderName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    .line 14
    iget p0, v1, Lcom/transsion/dbdata/beans/FolderLabelItem;->folderIndex:I

    invoke-virtual {v3, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setIndex(I)V

    const/4 p0, 0x1

    .line 15
    invoke-virtual {v3, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setLabelFolder(Z)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    .line 17
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    .line 18
    invoke-static {v0, p0, v2, v4}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->determineBucketParentName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {v3, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1, v3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setLabelFolder(Z)V

    :goto_0
    return-object v3
.end method
