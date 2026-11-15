.class public Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;
.super Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sM3U8DownloadListener:Ltz2;


# instance fields
.field private bUpdateCover:Z

.field private isWaitingCalled:Z

.field private final mM3U8TaskExtra:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

.field private final mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

.field private volatile pauseByMobile:Z

.field private retryRequestSniff:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$a;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$a;-><init>()V

    sput-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->sM3U8DownloadListener:Ltz2;

    return-void
.end method

.method public constructor <init>(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->retryRequestSniff:Z

    .line 3
    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->pauseByMobile:Z

    .line 4
    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->bUpdateCover:Z

    .line 5
    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->isWaitingCalled:Z

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->createVideoItemTask(Lcom/lzy/okgo/model/Progress;)Lcom/transsion/videodownloader/model/VideoTaskItem;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->setbM3U8Task(Z)V

    .line 8
    new-instance p1, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    invoke-direct {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mM3U8TaskExtra:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    return-void
.end method

.method public constructor <init>(Lcom/lzy/okgo/model/Progress;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->retryRequestSniff:Z

    .line 11
    iput-boolean p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->pauseByMobile:Z

    .line 12
    iput-boolean p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->bUpdateCover:Z

    .line 13
    iput-boolean p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->isWaitingCalled:Z

    .line 14
    iput-object p2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->setbM3U8Task(Z)V

    .line 16
    new-instance p1, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    invoke-direct {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mM3U8TaskExtra:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    return-void
.end method

.method public static OnDownloadStateChange(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 5

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->c(Ljava/lang/String;Z)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    if-eqz v0, :cond_5

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->videoTaskConvertToProgress(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object p0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object p0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-boolean v1, v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->pauseByMobile:Z

    invoke-virtual {v0, p0, v1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_task_failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v2, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lty2;->f(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    goto :goto_0

    :cond_4
    iget-object p0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    if-nez p0, :cond_5

    iget-object p0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postOnStart(Lcom/lzy/okgo/model/Progress;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static isMergeFailed(Lcom/lzy/okgo/model/Progress;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    instance-of v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;->bMergeFailed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic l(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->lambda$updateCover$0(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method private synthetic lambda$postOnError$4(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luz2;

    invoke-interface {v1, p1}, Lwh8;->a(Lcom/lzy/okgo/model/Progress;)V

    invoke-interface {v1, p1}, Lwh8;->c(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->stopNotification()V

    return-void
.end method

.method private synthetic lambda$postOnFinish$1(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luz2;

    iget-object v3, v2, Luz2;->a:Ljava/lang/Object;

    const-string v4, "visha_DownloadingAdapter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v1, v4

    :cond_0
    invoke-interface {v2, p1}, Lwh8;->a(Lcom/lzy/okgo/model/Progress;)V

    invoke-interface {v2, p2, p1}, Lwh8;->b(Ljava/lang/Object;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v2, v3, v4}, Lyv5;->a(Lcom/transsion/videodownloader/model/VideoTaskItem;Z)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "new_task_finished"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->stopNotification()V

    return-void
.end method

.method private synthetic lambda$postOnFinish$2(Lcom/lzy/okgo/model/Progress;Ljava/io/File;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    invoke-static {p3}, Lav3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lr13;->m(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m3u8 onScanCompleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " uri:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Luv5;

    invoke-direct {p3, p0, p1, p2}, Luv5;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    invoke-static {p3}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p4}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->updateOriginUrl(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$postOnRemove$3(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luz2;

    invoke-interface {v1, p1, p2}, Lwh8;->e(Lcom/lzy/okgo/model/Progress;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->stopNotification()V

    return-void
.end method

.method private synthetic lambda$updateCover$0(Lcom/lzy/okgo/model/Progress;)V
    .locals 4

    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getM3u8Extra(Ljava/lang/String;)Lcom/transsion/sniffer_load/data/M3u8Extra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/data/M3u8Extra;->getImg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/data/M3u8Extra;->getSize()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/data/M3u8Extra;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTotalSize(J)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/data/M3u8Extra;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setCoverPath(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$3;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->save()Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->lambda$postOnFinish$1(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->lambda$postOnRemove$3(Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method

.method public static synthetic o(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/io/File;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->lambda$postOnFinish$2(Lcom/lzy/okgo/model/Progress;Ljava/io/File;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->lambda$postOnError$4(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method private postMergedCompete()V
    .locals 0

    return-void
.end method

.method private postOnRemove(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 1

    new-instance v0, Lwv5;

    invoke-direct {v0, p0, p1, p2}, Lwv5;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;Z)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private retryServerSniffAsyncDownloadTask()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->retryRequestSniff:Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const-string v1, ""

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task_failed_url_forbid,request_new_download_url_sniff_url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;-><init>()V

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;->setSniffUrl(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/APIServiceManager;->getInstance()Lcom/transsion/playercommon/vishaapis/APIServiceManager;

    move-result-object v3

    const-class v4, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-virtual {v3, v4}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-interface {v3, v0}, Lcom/transsion/playercommon/vishaapis/APIService;->getSniffResultFromServer(Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;)Ljq0;

    move-result-object v0

    new-instance v3, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;

    new-instance v9, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;

    invoke-direct {v9, p0, v1, v2}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$b;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;J)V

    const/4 v6, 0x3

    const-wide/16 v7, 0x3e8

    move-object v4, v3

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;-><init>(Ljq0;IJLcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V

    invoke-interface {v0, v3}, Ljq0;->enqueue(Ltq0;)V

    :cond_0
    return-void
.end method

.method public static videoTaskConvertToProgress(Lcom/lzy/okgo/model/Progress;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 4

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTaskState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_1

    .line 5
    :pswitch_3
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->w()Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    move-result-object v0

    sget-object v1, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->NO:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    .line 7
    :goto_1
    iget-wide v0, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->lastSize:J

    .line 8
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getDownloadSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    .line 9
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getSpeed()F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->speed:J

    .line 10
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTransPeercent()F

    move-result v0

    iput v0, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    .line 11
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTotalSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getDownloadSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 13
    :cond_1
    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private videoTaskConvertToProgress(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {v0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->videoTaskConvertToProgress(Lcom/lzy/okgo/model/Progress;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTaskState()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mM3U8TaskExtra:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    iput-boolean v2, v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;->bConvert:Z

    .line 17
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getPercent()F

    move-result p1

    iput p1, v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;->convertProgress:F

    .line 18
    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mM3U8TaskExtra:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    iput-object p0, p1, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTaskState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTaskState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTaskState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTaskState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 22
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mM3U8TaskExtra:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    iput-boolean v2, v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;->bMergeFailed:Z

    .line 23
    invoke-virtual {p1, v3}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setIsCompleted(Z)V

    .line 24
    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    if-eqz p1, :cond_2

    .line 25
    iput-boolean v2, p1, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;->bMergeFailed:Z

    goto :goto_1

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mM3U8TaskExtra:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    iput-object p0, p1, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    goto :goto_1

    .line 27
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mM3U8TaskExtra:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    iput-boolean v3, v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;->bConvert:Z

    const/4 v1, 0x0

    .line 28
    iput v1, v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;->convertProgress:F

    .line 29
    invoke-virtual {p1, v3}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setIsCompleted(Z)V

    .line 30
    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    if-eqz p1, :cond_4

    .line 31
    iput-boolean v3, p1, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;->bConvert:Z

    goto :goto_1

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mM3U8TaskExtra:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    iput-object p0, p1, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public createVideoItemTask(Lcom/lzy/okgo/model/Progress;)Lcom/transsion/videodownloader/model/VideoTaskItem;
    .locals 2

    new-instance p0, Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;-><init>(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTotalSize(J)V

    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setCoverPath(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFileName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFinalFileName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setSniffId(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setGroupName(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getDownloadedSize()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getDownloadSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public isMergeFailed()Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mM3U8TaskExtra:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;->bMergeFailed:Z

    return p0
.end method

.method public pause(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTaskState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->isWaitingCalled:Z

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->pauseByMobile:Z

    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, v1}, Lyv5;->f(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method

.method public postLoading(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    invoke-static {p2}, Lty2;->l(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    iput-object p2, p1, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    sget-object p2, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOnError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Ltv5;

    invoke-direct {p2, p0, p1}, Ltv5;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {p2}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    if-eqz p2, :cond_1

    invoke-static {p2}, Lav3;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lav3;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "mp4"

    :goto_1
    iget-object v1, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Progress;->getOriginSite()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    invoke-static {v1, v2, v0, v3}, Le16;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lxv5;

    invoke-direct {v2, p0, p1, p2}, Lxv5;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public postOnStart(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postOnStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$4;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->updateCover(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public postPause(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method

.method public postPause(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->isWaitingCalled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    if-eqz p2, :cond_1

    const/4 p2, 0x6

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    .line 4
    :goto_0
    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    .line 5
    sget-object p2, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postPause-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p2, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$6;

    invoke-direct {p2, p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$6;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {p2}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postWaiting(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    iget v1, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "postWaiting"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$5;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->updateCover(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->remove(Z)V

    return-void
.end method

.method public remove(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->isWaitingCalled:Z

    .line 3
    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->pause(Z)V

    .line 5
    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, v2, p1}, Lyv5;->a(Lcom/transsion/videodownloader/model/VideoTaskItem;Z)V

    .line 6
    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, p1, v1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postOnRemove(Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method

.method public save()Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 2

    invoke-static {}, Lcom/transsion/videodownloader/VideoDownloadManager;->E()Lcom/transsion/videodownloader/VideoDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/VideoDownloadManager;->V(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-object p0
.end method

.method public start()V
    .locals 3

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v2}, Lcom/lzy/okgo/model/Progress;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->isWaitingCalled:Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the task with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already in the download queue, current task status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lie7;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postOnStart(Lcom/lzy/okgo/model/Progress;)V

    invoke-static {}, Lpp3;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->buildHeadersFromProgress(Lcom/lzy/okgo/model/Progress;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1, p0, v0}, Lyv5;->i(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, p0}, Lyv5;->h(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    :goto_2
    return-void
.end method

.method public updateCover(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->bUpdateCover:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->bUpdateCover:Z

    new-instance v0, Lvv5;

    invoke-direct {v0, p0, p1}, Lvv5;-><init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public waiting()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->isWaitingCalled:Z

    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->mVideoTaskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, v1}, Lyv5;->f(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
