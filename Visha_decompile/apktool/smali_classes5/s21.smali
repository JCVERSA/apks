.class public final Ls21;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls21$a;
    }
.end annotation


# static fields
.field public static final b:Ls21$a;

.field public static volatile c:Ls21;

.field public static d:Ljava/util/List;

.field public static e:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

.field public static f:Ljava/util/List;

.field public static g:Ljava/util/List;


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls21$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls21$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ls21;->b:Ls21$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ls21;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ls21;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ls21;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls21;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic a()Ls21;
    .locals 1

    sget-object v0, Ls21;->c:Ls21;

    return-object v0
.end method

.method public static final synthetic b(Ls21;)V
    .locals 0

    sput-object p0, Ls21;->c:Ls21;

    return-void
.end method

.method public static final synthetic c(Ljava/util/List;)V
    .locals 0

    sput-object p0, Ls21;->g:Ljava/util/List;

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
    .locals 0

    sput-object p0, Ls21;->e:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    return-void
.end method

.method public static final synthetic e(Ljava/util/List;)V
    .locals 0

    sput-object p0, Ls21;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic f(Ljava/util/List;)V
    .locals 0

    sput-object p0, Ls21;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final g(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    const-string p0, "mediaLibraryData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "videoData"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryCollectFlag()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setNeedRecordPlayInfo(Z)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setMediaLibraryId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setCoverUri(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->build()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getSourceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getCover()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lcom/transsion/dbdata/beans/VideoCloudData;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    const-string p0, "videoCloudData"

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

.method public final i(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Ls21;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVideoList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;

    invoke-virtual {p0, p1, v2}, Ls21;->g(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMIMediaVideoDataList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "CloudMediaInfoHelper"

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final j()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ls21;->e:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    if-eqz v1, :cond_0

    sget-object v1, Ls21;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;

    sget-object v3, Ls21;->e:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v2}, Ls21;->g(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTempFavoriteLibraryVideoDataList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "CloudMediaInfoHelper"

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ls21;->e:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    if-eqz v1, :cond_0

    sget-object v1, Ls21;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;

    sget-object v3, Ls21;->e:Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v2}, Ls21;->g(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTempMIMediaVideoDataList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "CloudMediaInfoHelper"

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 7

    sget-object v0, Ls21;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTempRecentVideoDataList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CloudMediaInfoHelper"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Ls21;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDataType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v4}, Ls21;->h(Lcom/transsion/dbdata/beans/VideoCloudData;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudData;->toMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final m(Ljava/util/List;)V
    .locals 5

    const-string v0, "libraryData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "CloudMediaInfoHelper"

    if-lez v1, :cond_0

    iget-object v1, p0, Ls21;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved media library data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "Media library id is empty, skip this item"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
