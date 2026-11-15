.class public Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "YoutubePlayUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->lambda$getYoutubeStreamInfo$0(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->lambda$getYoutubeStreamInfo$1(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getHighResolutionVideoStream(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lyl5;->e(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    return-object p0
.end method

.method public static getStreamsDefinition(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/stream/StreamInfo;",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;

    invoke-direct {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;-><init>()V

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iput v3, v2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getResolutionString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->name:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v3

    iget v3, v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iget v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    if-ne v3, v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->setCurrent(Z)V

    :cond_1
    sget-object v1, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamsDefinition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getVideoStream(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iget v2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;->type:I

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getYoutubeStreamInfo(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {}, Lff6;->f()V

    sget-object v0, Lce9;->a:Lvxc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play youtube source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/StreamingService;->k(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    move-result-object v0

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-ne v0, v2, :cond_0

    invoke-static {}, Lff6;->h()I

    move-result v0

    invoke-static {v0, v1}, Lff6;->i(ILjava/lang/String;)Lxm9;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object v0

    new-instance v2, Ldxc;

    invoke-direct {v2, v1, p1}, Ldxc;-><init>(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;)V

    new-instance v3, Lexc;

    invoke-direct {v3, v1, p1}, Lexc;-><init>(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;)V

    invoke-virtual {v0, v2, v3}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;->onParseFailure(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sget-object v2, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse youtube stream info failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "throwable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;->onParseFailure(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private static synthetic lambda$getYoutubeStreamInfo$0(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse youtube source successfully:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video streams size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, p2}, Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;->onParseSuccess(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse youtube stream info failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;->onParseFailure(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$getYoutubeStreamInfo$1(Ljava/lang/String;Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/transsion/vishaplayersdk/youtube/YoutubePlayUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse youtube stream info failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throwable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/youtube/IParseYoutubeStreamInfo;->onParseFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
