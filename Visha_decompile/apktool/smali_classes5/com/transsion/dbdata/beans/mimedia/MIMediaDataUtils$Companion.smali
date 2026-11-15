.class public final Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cJ\u001e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;",
        "",
        "<init>",
        "()V",
        "isMiMediaVideo",
        "",
        "videoData",
        "Lcom/transsion/dbdata/beans/media/PlayVideoData;",
        "mediaItem",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "isMediaLibraryHadRemoved",
        "videoLibrary",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
        "mediaVideoToPlayVideoData",
        "video",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
        "listFlag",
        "",
        "searchDataToPlayVideoData",
        "searchMediaData",
        "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "buildMediaItemForRecent",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildMediaItemForRecent(Lcom/transsion/dbdata/beans/VideoCloudData;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    const-string p0, "videoData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setNeedRecordPlayInfo(Z)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setMediaLibraryId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setCoverUri(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->build()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getCover()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final isMediaLibraryHadRemoved(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)Z
    .locals 0

    const-string p0, "videoLibrary"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryStatus()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final mediaVideoToPlayVideoData(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;I)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 1

    const-string p0, "videoLibrary"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "video"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryCollectFlag()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setNeedRecordPlayInfo(Z)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setMediaLibraryId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setMediaLibraryTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getCover()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setCoverUri(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->build()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->builder()Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setListFlag(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setIsFromNet(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setDisplayName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->build()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final searchDataToPlayVideoData(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;I)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 1

    const-string p0, "searchMediaData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setNeedRecordPlayInfo(Z)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setMediaLibraryId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setMediaLibraryTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setCoverUri(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->build()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->builder()Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setListFlag(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setIsFromNet(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setDisplayName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->build()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method
