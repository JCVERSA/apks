.class public final Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u001f\u001aN\u0010\u000b\u001a\u0004\u0018\u00010\u0008*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u001a\u0008\u0004\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0006H\u0082\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a+\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a1\u0010\u0012\u001a\u0004\u0018\u00010\u0008*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a1\u0010\u0014\u001a\u0004\u0018\u00010\u0008*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0013\u001a;\u0010\u0016\u001a\u0004\u0018\u00010\u0008*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0003H\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u0018*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001aG\u0010\u001f\u001a\u0004\u0018\u00010\u0018*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a\u0013\u0010\"\u001a\u00020!*\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\"\u0010#\u001a\u0013\u0010%\u001a\u00020\u000f*\u00020$H\u0002\u00a2\u0006\u0004\u0008%\u0010&\u001a\u0019\u0010)\u001a\u00020(*\u00020\u00082\u0006\u0010\'\u001a\u00020\u000f\u00a2\u0006\u0004\u0008)\u0010*\u001a%\u0010)\u001a\u0008\u0012\u0004\u0012\u00020(0+*\u0008\u0012\u0004\u0012\u00020\u00080+2\u0006\u0010\'\u001a\u00020\u000f\u00a2\u0006\u0004\u0008)\u0010,\u001a\u0019\u0010.\u001a\u00020$*\u00020\u00082\u0006\u0010-\u001a\u00020!\u00a2\u0006\u0004\u0008.\u0010/\u001a%\u00100\u001a\u0008\u0012\u0004\u0012\u00020$0+*\u0008\u0012\u0004\u0012\u00020\u00080+2\u0006\u0010-\u001a\u00020!\u00a2\u0006\u0004\u00080\u00101\u001a\u0019\u0010.\u001a\u00020$*\u00020\u00182\u0006\u0010-\u001a\u00020!\u00a2\u0006\u0004\u0008.\u00102\u001a%\u00103\u001a\u0008\u0012\u0004\u0012\u00020$0+*\u0008\u0012\u0004\u0012\u00020\u00180+2\u0006\u0010-\u001a\u00020!\u00a2\u0006\u0004\u00083\u00101\u001a\u0011\u00104\u001a\u00020\u0008*\u00020\u0008\u00a2\u0006\u0004\u00084\u00105\u001a\u0011\u00106\u001a\u00020\u0018*\u00020$\u00a2\u0006\u0004\u00086\u00107\u001a\u001d\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00180+*\u0008\u0012\u0004\u0012\u00020$0+\u00a2\u0006\u0004\u00088\u00109\u001a\u0011\u0010:\u001a\u00020\u0008*\u00020$\u00a2\u0006\u0004\u0008:\u0010;\u001a\u001d\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00080+*\u0008\u0012\u0004\u0012\u00020$0+\u00a2\u0006\u0004\u0008<\u00109\"\u0014\u0010=\u001a\u00020\u00078\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008=\u0010>\"\u0014\u0010?\u001a\u00020!8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008?\u0010@\"\u0014\u0010A\u001a\u00020\u000f8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\"\u0014\u0010C\u001a\u00020\u000f8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008C\u0010B\"\u0014\u0010D\u001a\u00020\u000f8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008D\u0010B\"\u0014\u0010E\u001a\u00020\u000f8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008E\u0010B\"\u0014\u0010F\u001a\u00020!8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008F\u0010@\"\u0014\u0010G\u001a\u00020!8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008G\u0010@\"\u0014\u0010H\u001a\u00020!8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008H\u0010@\"\u0014\u0010I\u001a\u00020!8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008I\u0010@\u00a8\u0006J"
    }
    d2 = {
        "Landroid/database/Cursor;",
        "Landroid/net/Uri;",
        "dbUri",
        "",
        "checkFileSuffix",
        "checkHlsVideo",
        "Lkotlin/Function2;",
        "",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Lzfb;",
        "extendHandle",
        "buildBaseMediaItem",
        "(Landroid/database/Cursor;Landroid/net/Uri;ZZLs74;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "filePath",
        "Lkotlin/Triple;",
        "",
        "processHlsVideo",
        "(Ljava/lang/String;)Lkotlin/Triple;",
        "buildVideoMediaItem",
        "(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "buildFileMediaItem",
        "fromFileTable",
        "buildMediaItem",
        "(Landroid/database/Cursor;Landroid/net/Uri;ZZZ)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "buildAudioItem",
        "(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;",
        "preloadedFilePath",
        "parentPath",
        "preloadedSize",
        "preloadedDuration",
        "buildAudioItemInternal",
        "(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/transsion/dbdata/beans/media/AudioItem;",
        "",
        "toSafeDbSizeInt",
        "(J)I",
        "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
        "resolveSafeSize",
        "(Lcom/transsion/dbdata/database/MediaDataMissingItem;)J",
        "playListId",
        "Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "toPlayListMediaItem",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;J)Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "",
        "(Ljava/util/List;J)Ljava/util/List;",
        "mediaType",
        "toMediaDataMissingItem",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;I)Lcom/transsion/dbdata/database/MediaDataMissingItem;",
        "mToMediaDataMissingItem",
        "(Ljava/util/List;I)Ljava/util/List;",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;I)Lcom/transsion/dbdata/database/MediaDataMissingItem;",
        "aToMediaDataMissingItem",
        "createGroupHeaderItem",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "toAudioItem",
        "(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/beans/media/AudioItem;",
        "toAudioItems",
        "(Ljava/util/List;)Ljava/util/List;",
        "toMediaItem",
        "(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "toMediaItems",
        "TAG",
        "Ljava/lang/String;",
        "DEFAULT_INVALID_ID",
        "I",
        "DEFAULT_INVALID_BUCKET_ID",
        "J",
        "DEFAULT_DATE",
        "DEFAULT_DURATION",
        "DEFAULT_SIZE",
        "DEFAULT_YEAR",
        "DEFAULT_TRACK_NUMBER",
        "DEFAULT_ORIENTATION",
        "DEFAULT_DIMENSION",
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


# static fields
.field private static final DEFAULT_DATE:J = 0x0L

.field private static final DEFAULT_DIMENSION:I = 0x0

.field private static final DEFAULT_DURATION:J = 0x0L

.field private static final DEFAULT_INVALID_BUCKET_ID:J = -0x1L

.field private static final DEFAULT_INVALID_ID:I = -0x1

.field private static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DEFAULT_SIZE:J = 0x0L

.field private static final DEFAULT_TRACK_NUMBER:I = 0x0

.field private static final DEFAULT_YEAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaDataExt"


# direct methods
.method public static final aToMediaDataMissingItem(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v1, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toMediaDataMissingItem(Lcom/transsion/dbdata/beans/media/AudioItem;I)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$processHlsVideo(Ljava/lang/String;)Lkotlin/Triple;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->processHlsVideo(Ljava/lang/String;)Lkotlin/Triple;

    move-result-object p0

    return-object p0
.end method

.method public static final buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbUri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v10}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItemInternal$default(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static final buildAudioItemInternal(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ", path="

    const-string v4, "MediaDataExt"

    const-string v0, "<this>"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbUri"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x6

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_32

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_24

    :cond_1
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v9, v0

    goto :goto_1

    :cond_2
    const/4 v9, -0x1

    :goto_1
    const/4 v10, 0x1

    :try_start_0
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMissingItemByPath(Ljava/lang/String;)Lqe6;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_3
    move-object v0, v6

    :goto_2
    if-nez v0, :cond_4

    sget-object v11, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v11}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v11

    invoke-virtual {v11, v9, v7}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMissingItemById(IZ)Lqe6;

    move-result-object v11

    goto :goto_3

    :cond_4
    move-object v11, v0

    :goto_3
    if-eqz v11, :cond_6

    if-eqz v0, :cond_5

    move v0, v10

    goto :goto_4

    :cond_5
    move v0, v7

    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cache hit for audio: mediaId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", byPath="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get missing data from cache for audio: mediaId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v6

    :cond_6
    :goto_6
    if-nez p3, :cond_7

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0, v5}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_7
    move-object/from16 v0, p3

    :goto_7
    sget-object v3, Lge6;->a:Lge6;

    invoke-virtual {v3, v5}, Lge6;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1d

    if-le v4, v12, :cond_8

    move v4, v10

    goto :goto_8

    :cond_8
    move v4, v7

    :goto_8
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lqe6;->e()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_9

    goto :goto_9

    :cond_9
    move-object v12, v6

    :goto_9
    invoke-static {v1, v10}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v13

    if-nez v12, :cond_a

    move-object v14, v13

    goto :goto_a

    :cond_a
    move-object v14, v12

    :goto_a
    if-eqz v13, :cond_c

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_b

    goto :goto_b

    :cond_b
    invoke-static {v13}, Lav3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_c

    :cond_c
    :goto_b
    const-string v15, ""

    :goto_c
    invoke-static {v3}, Lav3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v12, :cond_15

    invoke-static {v15}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_d

    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_d

    invoke-static {v15, v7, v10}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_d

    :cond_d
    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_e

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_e

    invoke-static {v15, v7, v10}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_f

    :cond_e
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_f

    :goto_d
    move-object v12, v15

    goto :goto_10

    :cond_f
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_10

    goto :goto_f

    :cond_10
    const/4 v12, 0x2

    invoke-static {v1, v12}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_11

    goto :goto_e

    :cond_11
    move-object v12, v6

    :goto_e
    if-eqz v12, :cond_12

    invoke-static {v12}, Lav3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_10

    :cond_12
    if-eqz v13, :cond_14

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_13

    goto :goto_f

    :cond_13
    invoke-static {v13}, Lav3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_10

    :cond_14
    :goto_f
    move-object v12, v7

    :cond_15
    :goto_10
    new-instance v7, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v7}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput v9, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput-object v14, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v12, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-static {v1, v9}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    const/4 v9, 0x4

    invoke-static {v1, v9}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v13, 0x0

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide v8, v15

    goto :goto_11

    :cond_16
    move-wide v8, v13

    :goto_11
    iput-wide v8, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    const/4 v8, 0x5

    invoke-static {v1, v8}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_12

    :cond_17
    move-wide v8, v13

    :goto_12
    iput-wide v8, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v8, p6, v13

    if-lez v8, :cond_18

    move-wide/from16 v8, p6

    goto :goto_13

    :cond_18
    const/4 v8, 0x7

    invoke-static {v1, v8}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_19

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_13

    :cond_19
    move-wide v8, v13

    :goto_13
    iput-wide v8, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v8, p4, v13

    if-lez v8, :cond_1a

    move-wide/from16 v8, p4

    goto :goto_14

    :cond_1a
    const/16 v8, 0x8

    invoke-static {v1, v8}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_1b

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_14

    :cond_1b
    move-wide v8, v13

    :goto_14
    iput-wide v8, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget v8, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-static {v5, v12}, Lge6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    iput-object v5, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_15

    :cond_1c
    const/4 v0, -0x1

    :goto_15
    iput v0, v7, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    if-eqz v11, :cond_1f

    invoke-virtual {v11}, Lqe6;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1d

    move v2, v10

    goto :goto_16

    :cond_1d
    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_1e

    goto :goto_17

    :cond_1e
    move-object v0, v6

    :goto_17
    if-nez v0, :cond_20

    :cond_1f
    const/16 v0, 0xa

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    :cond_20
    iput-object v0, v7, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_18

    :cond_21
    const/4 v8, -0x1

    :goto_18
    iput v8, v7, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    if-eqz v11, :cond_24

    invoke-virtual {v11}, Lqe6;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_22

    move v2, v10

    goto :goto_19

    :cond_22
    const/4 v2, 0x0

    :goto_19
    if-eqz v2, :cond_23

    goto :goto_1a

    :cond_23
    move-object v0, v6

    :goto_1a
    if-nez v0, :cond_25

    :cond_24
    const/16 v0, 0xc

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    :cond_25
    iput-object v0, v7, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1b

    :cond_26
    const-wide/16 v8, -0x1

    :goto_1b
    iput-wide v8, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    const/16 v0, 0xe

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_27

    goto :goto_1c

    :cond_27
    const/4 v2, 0x0

    goto :goto_1d

    :cond_28
    :goto_1c
    move v2, v10

    :goto_1d
    if-nez v2, :cond_29

    goto :goto_1e

    :cond_29
    move-object v0, v6

    :goto_1e
    if-nez v0, :cond_2a

    goto :goto_1f

    :cond_2a
    move-object v3, v0

    :goto_1f
    iput-object v3, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    if-eqz v11, :cond_2d

    invoke-virtual {v11}, Lqe6;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2b

    goto :goto_20

    :cond_2b
    const/4 v10, 0x0

    :goto_20
    if-eqz v10, :cond_2c

    goto :goto_21

    :cond_2c
    move-object v0, v6

    :goto_21
    if-nez v0, :cond_2f

    :cond_2d
    const/16 v0, 0xf

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_22

    :cond_2e
    const/4 v0, 0x0

    :goto_22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    iput-object v0, v7, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    if-eqz v4, :cond_30

    const/16 v0, 0x10

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_23

    :cond_30
    const/4 v0, 0x0

    :goto_23
    iput v0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->num:I

    if-eqz v11, :cond_31

    invoke-virtual {v11}, Lqe6;->d()Ljava/lang/String;

    move-result-object v6

    :cond_31
    iput-object v6, v7, Lcom/transsion/dbdata/beans/media/AudioItem;->mCustomCoverPath:Ljava/lang/String;

    return-object v7

    :cond_32
    :goto_24
    return-object v6
.end method

.method public static synthetic buildAudioItemInternal$default(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    move-wide v5, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    move-wide v7, v1

    goto :goto_2

    :cond_2
    move-wide v7, p6

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItemInternal(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    return-object v0
.end method

.method private static final buildBaseMediaItem(Landroid/database/Cursor;Landroid/net/Uri;ZZLs74;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ls74;",
            ")",
            "Lcom/transsion/dbdata/beans/media/MediaItem;"
        }
    .end annotation

    const-string v0, ", path="

    const-string v1, "MediaDataExt"

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    invoke-static {v2, v4, p2, v4}, Lcom/transsion/dbdata/source/data/ktx/FileValidExtKt;->isValidVideoFilePath(Ljava/lang/String;ZZZ)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v3

    :cond_1
    sget-object p2, Lge6;->a:Lge6;

    invoke-virtual {p2, v2}, Lge6;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v4}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_0
    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_3

    sget-object v6, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v6}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMissingItemByPath(Ljava/lang/String;)Lqe6;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v6}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMissingItemById(IZ)Lqe6;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cache hit for audio: mediaId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get missing data from cache for audio: mediaId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v3

    :cond_4
    :goto_3
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lqe6;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_7

    :cond_6
    invoke-static {p0, v5}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lqe6;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_8

    move-object v3, v1

    :cond_8
    if-nez v3, :cond_b

    :cond_9
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v3, p2

    goto :goto_5

    :cond_a
    move-object v3, v1

    :cond_b
    :goto_5
    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v1, v2}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>(Ljava/lang/String;)V

    iput v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput-object v0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-static {v2, v3}, Lge6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0, v2}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_6

    :cond_c
    move-wide v7, v5

    :goto_6
    iput-wide v7, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_7

    :cond_d
    move-wide v7, v5

    :goto_7
    iput-wide v7, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    const/4 p1, 0x7

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_8

    :cond_e
    move-wide v3, v5

    :goto_8
    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_f
    if-eqz p3, :cond_10

    invoke-static {v2}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->access$processHlsVideo(Ljava/lang/String;)Lkotlin/Triple;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {p0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    :cond_10
    iput-wide v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v5, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-interface {p4, p2, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static synthetic buildBaseMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZLs74;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string p6, ", path="

    const-string v0, "MediaDataExt"

    and-int/lit8 v1, p5, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move p2, v2

    :cond_0
    const/4 v1, 0x4

    and-int/2addr p5, v1

    const/4 v3, 0x1

    if-eqz p5, :cond_1

    move p3, v3

    :cond_1
    const/4 p5, 0x6

    invoke-static {p0, p5}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p5

    const/4 v4, 0x0

    if-nez p5, :cond_2

    return-object v4

    :cond_2
    invoke-static {p5, v2, p2, v2}, Lcom/transsion/dbdata/source/data/ktx/FileValidExtKt;->isValidVideoFilePath(Ljava/lang/String;ZZZ)Z

    move-result p2

    if-nez p2, :cond_3

    return-object v4

    :cond_3
    sget-object p2, Lge6;->a:Lge6;

    invoke-virtual {p2, p5}, Lge6;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    :goto_0
    :try_start_0
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    sget-object v5, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v5}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v5

    invoke-virtual {v5, p5}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMissingItemByPath(Ljava/lang/String;)Lqe6;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_5
    sget-object v5, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v5}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMissingItemById(IZ)Lqe6;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cache hit for audio: mediaId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get missing data from cache for audio: mediaId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v0, p6, v5}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v4

    :cond_6
    :goto_3
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lqe6;->e()Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_8

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_7

    goto :goto_4

    :cond_7
    move-object p6, v4

    :goto_4
    if-nez p6, :cond_9

    :cond_8
    invoke-static {p0, v3}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p6

    :cond_9
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lqe6;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_a

    move-object v4, v0

    :cond_a
    if-nez v4, :cond_d

    :cond_b
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move-object v4, p2

    goto :goto_5

    :cond_c
    move-object v4, v0

    :cond_d
    :goto_5
    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0, p5}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>(Ljava/lang/String;)V

    iput v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput-object p6, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const/4 p6, 0x3

    invoke-static {p0, p6}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p6

    iput-object p6, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-static {p5, v4}, Lge6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    iput-object p6, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    sget-object p6, Lge6;->a:Lge6;

    invoke-virtual {p6, p5}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    iput-object p6, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p6

    const-wide/16 v3, 0x0

    if-eqz p6, :cond_e

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_6

    :cond_e
    move-wide v5, v3

    :goto_6
    iput-wide v5, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    const/4 p6, 0x5

    invoke-static {p0, p6}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p6

    if-eqz p6, :cond_f

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_7

    :cond_f
    move-wide v5, v3

    :goto_7
    iput-wide v5, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-static {p1, p6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    const/4 p1, 0x7

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_8

    :cond_10
    move-wide v1, v3

    :goto_8
    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_11
    if-eqz p3, :cond_12

    invoke-static {p5}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->access$processHlsVideo(Ljava/lang/String;)Lkotlin/Triple;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    :cond_12
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-interface {p4, p2, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final buildFileMediaItem(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, ", path="

    const-string v3, "MediaDataExt"

    const/4 v0, 0x6

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-static {v4, v6, v0, v6}, Lcom/transsion/dbdata/source/data/ktx/FileValidExtKt;->isValidVideoFilePath(Ljava/lang/String;ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_f

    :cond_1
    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0, v4}, Lge6;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v6}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :goto_1
    const/4 v9, 0x1

    :try_start_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMissingItemByPath(Ljava/lang/String;)Lqe6;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMissingItemById(IZ)Lqe6;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cache hit for audio: mediaId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get missing data from cache for audio: mediaId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    :cond_4
    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lqe6;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, v5

    :goto_5
    if-nez v2, :cond_7

    :cond_6
    invoke-static {v1, v9}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lqe6;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_8

    goto :goto_6

    :cond_8
    move-object v0, v5

    :goto_6
    if-nez v0, :cond_a

    :cond_9
    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v0, v7

    :cond_a
    new-instance v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v3, v4}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>(Ljava/lang/String;)V

    iput v8, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-static {v4, v0}, Lge6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0, v4}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_7

    :cond_b
    move-wide v12, v10

    :goto_7
    iput-wide v12, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_8

    :cond_c
    move-wide v12, v10

    :goto_8
    iput-wide v12, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, p1

    invoke-static {v8, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_9

    :cond_d
    move-wide v12, v10

    :goto_9
    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_a

    :cond_e
    move-wide v14, v10

    :goto_a
    if-eqz p3, :cond_f

    invoke-static {v4}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->access$processHlsVideo(Ljava/lang/String;)Lkotlin/Triple;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    invoke-virtual {v2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    invoke-virtual {v2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    :cond_f
    iput-wide v12, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v14, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :cond_10
    iput-wide v10, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_b

    :cond_11
    const-wide/16 v10, -0x1

    :goto_b
    iput-wide v10, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_12

    goto :goto_c

    :cond_12
    move v9, v6

    :cond_13
    :goto_c
    if-nez v9, :cond_14

    move-object v5, v2

    :cond_14
    if-nez v5, :cond_15

    invoke-virtual {v0, v7}, Lge6;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_15
    iput-object v5, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_d

    :cond_16
    move v0, v6

    :goto_d
    invoke-virtual {v3, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setDegree(I)V

    const/16 v0, 0xd

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_e

    :cond_17
    move v0, v6

    :goto_e
    iput v0, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    const/16 v0, 0xe

    invoke-static {v1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_18
    iput v6, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    move-object v5, v3

    :goto_f
    return-object v5
.end method

.method public static synthetic buildFileMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildFileMediaItem(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static final buildMediaItem(Landroid/database/Cursor;Landroid/net/Uri;ZZZ)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbUri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildFileMediaItem(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildVideoMediaItem(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem(Landroid/database/Cursor;Landroid/net/Uri;ZZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final buildVideoMediaItem(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 12

    const-string v0, ", path="

    const-string v1, "MediaDataExt"

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v4, 0x0

    invoke-static {v2, v4, p2, v4}, Lcom/transsion/dbdata/source/data/ktx/FileValidExtKt;->isValidVideoFilePath(Ljava/lang/String;ZZZ)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_f

    :cond_1
    sget-object p2, Lge6;->a:Lge6;

    invoke-virtual {p2, v2}, Lge6;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v4}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_3

    sget-object v7, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v7}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMissingItemByPath(Ljava/lang/String;)Lqe6;

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v7}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMissingItemById(IZ)Lqe6;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cache hit for audio: mediaId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get missing data from cache for audio: mediaId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v7}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v3

    :cond_4
    :goto_3
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lqe6;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_7

    :cond_6
    invoke-static {p0, v6}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lqe6;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_8

    goto :goto_5

    :cond_8
    move-object v1, v3

    :goto_5
    if-nez v1, :cond_a

    :cond_9
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v1, p2

    :cond_a
    new-instance v7, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v7, v2}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>(Ljava/lang/String;)V

    iput v5, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput-object v0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v1, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-static {v2, v1}, Lge6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0, v2}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_6

    :cond_b
    move-wide v0, v8

    :goto_6
    iput-wide v0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_7

    :cond_c
    move-wide v0, v8

    :goto_7
    iput-wide v0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    const/4 p1, 0x7

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_8

    :cond_d
    move-wide v0, v8

    :goto_8
    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_9

    :cond_e
    move-wide v10, v8

    :goto_9
    if-eqz p3, :cond_f

    invoke-static {v2}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->access$processHlsVideo(Ljava/lang/String;)Lkotlin/Triple;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {p1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    :cond_f
    iput-wide v0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v10, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    const/16 p1, 0x9

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_10
    iput-wide v8, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_a

    :cond_11
    const-wide/16 v0, -0x1

    :goto_a
    iput-wide v0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    const/16 p1, 0xb

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_12

    goto :goto_b

    :cond_12
    move v6, v4

    :cond_13
    :goto_b
    if-nez v6, :cond_14

    move-object v3, p1

    :cond_14
    if-nez v3, :cond_15

    goto :goto_c

    :cond_15
    move-object p2, v3

    :goto_c
    iput-object p2, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    const/16 p1, 0xc

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_d

    :cond_16
    move p1, v4

    :goto_d
    invoke-virtual {v7, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setDegree(I)V

    const/16 p1, 0xd

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_e

    :cond_17
    move p1, v4

    :goto_e
    iput p1, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    const/16 p1, 0xe

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_18
    iput v4, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    move-object v3, v7

    :goto_f
    return-object v3
.end method

.method public static synthetic buildVideoMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildVideoMediaItem(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static final createGroupHeaderItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    move-object v2, v1

    iget v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object v6, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    iget-object v10, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-wide v11, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iget-wide v13, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    move-wide v15, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    move-wide/from16 v20, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    move-object/from16 v22, v1

    move-object/from16 v2, v24

    invoke-direct/range {v2 .. v22}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;JJLandroid/net/Uri;)V

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    move-object/from16 v2, v23

    invoke-virtual {v2, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setRelativePath(Ljava/lang/String;)V

    iget-wide v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v0, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    return-object v2
.end method

.method public static final mToMediaDataMissingItem(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v1, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toMediaDataMissingItem(Lcom/transsion/dbdata/beans/media/MediaItem;I)Lcom/transsion/dbdata/database/MediaDataMissingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final processHlsVideo(Ljava/lang/String;)Lkotlin/Triple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Triple<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ltr4;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltr4;->b(Ljava/io/File;)Lqv5;

    return-object v1
.end method

.method private static final resolveSafeSize(Lcom/transsion/dbdata/database/MediaDataMissingItem;)J
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaSize()Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    return-wide v3

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p0, v0

    :cond_3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :cond_4
    return-wide v1
.end method

.method public static final toAudioItem(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaId()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getAlbumYear()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->resolveSafeSize(Lcom/transsion/dbdata/database/MediaDataMissingItem;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    iput v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getCustomCoverPath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mCustomCoverPath:Ljava/lang/String;

    return-object v0
.end method

.method public static final toAudioItems(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    invoke-static {v1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toAudioItem(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toMediaDataMissingItem(Lcom/transsion/dbdata/beans/media/AudioItem;I)Lcom/transsion/dbdata/database/MediaDataMissingItem;
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    .line 10
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v1, "data"

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 12
    iget-wide v4, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 13
    iget-object v6, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    .line 14
    iget-object v7, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    .line 15
    iget-object v8, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    .line 16
    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 17
    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 18
    iget-wide v11, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {v11, v12}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toSafeDbSizeInt(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 19
    iget-object v12, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    .line 20
    iget-object v13, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mCustomCoverPath:Ljava/lang/String;

    move-object v1, v0

    move v4, p1

    .line 21
    invoke-direct/range {v1 .. v13}, Lcom/transsion/dbdata/database/MediaDataMissingItem;-><init>(Ljava/lang/String;IILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toMediaDataMissingItem(Lcom/transsion/dbdata/beans/media/MediaItem;I)Lcom/transsion/dbdata/database/MediaDataMissingItem;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    .line 2
    iget-object v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v2, "data"

    invoke-static {v3, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 4
    iget-wide v5, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 5
    iget v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 6
    iget v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 7
    iget-wide v7, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {v7, v8}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toSafeDbSizeInt(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v15, 0xc70

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v1

    move/from16 v5, p1

    .line 8
    invoke-direct/range {v2 .. v16}, Lcom/transsion/dbdata/database/MediaDataMissingItem;-><init>(Ljava/lang/String;IILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public static final toMediaItem(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaId()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->get_data()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->resolveSafeSize(Lcom/transsion/dbdata/database/MediaDataMissingItem;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getHeight()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    iput v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    return-object v0
.end method

.method public static final toMediaItems(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    invoke-static {v1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toMediaItem(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toPlayListMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;J)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/transsion/dbdata/database/PlayListMediaItem;

    .line 2
    iget v6, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 3
    iget-object v9, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string p0, "data"

    invoke-static {v9, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x9

    const/4 v11, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-wide v4, p1

    .line 4
    invoke-direct/range {v1 .. v11}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final toPlayListMediaItem(Ljava/util/List;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast p0, Ljava/lang/Iterable;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 9
    invoke-static {v1, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->toPlayListMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;J)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final toSafeDbSizeInt(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int p0, p0

    :goto_0
    return p0
.end method
