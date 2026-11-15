.class Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/glide/model/MediaCoverLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaCoverDataFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCoverDataFetcher"


# instance fields
.field private final context:Landroid/content/Context;

.field private final loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

.field private mMediaMetadataRetriever:Lcom/transsion/tranplayer/MediaMetadataRetriever;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    return-void
.end method

.method private static isOsStubTranssionFlavor()Z
    .locals 2

    invoke-static {}, Lge;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "os_test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadAudioCover(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {v1}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, v0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-static {v2}, Lzu3;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    :goto_0
    move-object v1, p0

    goto :goto_3

    :cond_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {v3}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_0

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {v2}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltn;->k(Ljava/lang/String;)I

    move-result v2

    iget-object p0, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/Exception;

    const-string p0, "loadAudioCover error"

    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_4
    return-void
.end method

.method private loadVideoCover(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 4
    .param p1    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->isOsStubTranssionFlavor()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lbx9;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<loadData by transsion MediaMetadataRetriever> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCoverDataFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lbya;->c()V

    new-instance v0, Lcom/transsion/tranplayer/MediaMetadataRetriever;

    invoke-direct {v0}, Lcom/transsion/tranplayer/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->mMediaMetadataRetriever:Lcom/transsion/tranplayer/MediaMetadataRetriever;

    iget-object v2, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {v3}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/tranplayer/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->mMediaMetadataRetriever:Lcom/transsion/tranplayer/MediaMetadataRetriever;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->releaseMediaMetadataRetriever()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<loadData error>,<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {v3}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ">,msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->releaseMediaMetadataRetriever()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadVideoCoverWithAndroidRetriever(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    invoke-direct {p0}, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->releaseMediaMetadataRetriever()V

    throw p1

    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadVideoCoverWithAndroidRetriever(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    return-void
.end method

.method private loadVideoCoverWithAndroidRetriever(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 7
    .param p1    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "android MediaMetadataRetriever release "

    const-string v1, "MediaCoverDataFetcher"

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {v5}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v4, -0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v4, v3

    move-object v3, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<loadVideoCoverWithAndroidRetriever>,<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {p0}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">,msg:"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {p1, v3}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/Exception;

    const-string p0, "loadVideoCoverWithAndroidRetriever error"

    invoke-direct {v4, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-interface {p1, v4}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_3
    return-void

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    throw p0
.end method

.method private releaseMediaMetadataRetriever()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->mMediaMetadataRetriever:Lcom/transsion/tranplayer/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/tranplayer/MediaMetadataRetriever;->releaseRetriever()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseRetriever error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCoverDataFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->mMediaMetadataRetriever:Lcom/transsion/tranplayer/MediaMetadataRetriever;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->releaseMediaMetadataRetriever()V

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object p0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadInfo:Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {p1}, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;->isVideoFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadVideoCover(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;->loadAudioCover(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    :goto_0
    return-void
.end method
