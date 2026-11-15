.class public Lcom/mgtv/ssp/downloadsdk/DownloaderManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/downloadsdk/IDownloadManager;
.implements Lcom/mgtv/ssp/module/ModuleInterface;


# static fields
.field private static volatile a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

.field private static b:Z


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mgtvp2p"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vod"

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->e:Ljava/lang/String;

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 1
    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x4

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    return v0

    :cond_3
    return p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;)Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->f:Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;

    return-object p0
.end method

.method private a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;
    .locals 3

    .line 9
    new-instance v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;

    invoke-direct {v0}, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;-><init>()V

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->contentId:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->doneSize:J

    .line 12
    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->extra:Ljava/lang/String;

    .line 13
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->collectionImage:Ljava/lang/String;

    .line 14
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->collectionName:Ljava/lang/String;

    .line 15
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->F:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->mediaType:Ljava/lang/Integer;

    .line 16
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->setImage(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->priority:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 19
    iput v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->priority:I

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->resolution:I

    .line 21
    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->g()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->speed:J

    .line 22
    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(I)I

    move-result p0

    iput p0, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->status:I

    .line 23
    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->totalSize:J

    .line 24
    iget-object p0, p1, Lcom/mgtv/downloader/net/entity/a;->b:Ljava/lang/String;

    iput-object p0, v0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->videoid:Ljava/lang/String;

    .line 25
    iget-object p0, p1, Lcom/mgtv/downloader/net/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method private a([B)Ljava/lang/String;
    .locals 2

    .line 26
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 27
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 28
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->d:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 6
    :cond_0
    const-string p0, "[0-9]*"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->c(Ljava/lang/String;)Lcom/mgtv/downloader/net/entity/a;

    move-result-object p0

    iget-object p1, p0, Lcom/mgtv/downloader/net/entity/a;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "hls/"

    goto :goto_0

    :cond_1
    const-string p1, "/hls/"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->m()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".hls"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    return v0

    :catchall_0
    :cond_3
    return v1
.end method

.method private c(Ljava/lang/String;)Lcom/mgtv/downloader/net/entity/a;
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/a;->a(Ljava/lang/String;)Lcom/mgtv/downloader/net/entity/a;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/mgtv/ssp/downloadsdk/DownloaderManager;
    .locals 2

    sget-object v0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-direct {v1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;-><init>()V

    sput-object v1, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 33
    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgtv/downloader/a;->a(Ljava/lang/String;)Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/mgtv/downloader/net/entity/a;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/mgtv/downloader/net/entity/a;->t:Ljava/lang/String;

    const-string v3, ""

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v0, p2}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkFile(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public createTaskWaitResume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;)V
    .locals 5

    sget-boolean v0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->b:Z

    const-string v1, ""

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    const-string p0, "\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-interface {p5, v1, p0}, Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;->onOver(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mgtv/downloader/b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"videoId\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"PATH\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"DEFINITION\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\"PRIORITY\":1,\"OPENID\":\""

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\"AT\":\""

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\"LIMIT_SPEED\":2147483647,\"CONTENTID\":\""

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p2

    new-instance p3, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$4;

    invoke-direct {p3, p0, p5}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$4;-><init>(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;)V

    invoke-virtual {p2, v2, p1, v1, p3}, Lcom/mgtv/downloader/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/downloader/b/c;)V

    const-string p1, "start"

    invoke-virtual {p0, v0, p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteDownloadTask(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->d:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "remove"

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/a;->b(Ljava/util/List;)V

    return-void
.end method

.method public getConcurrentTaskCount(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getConfig(I)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/a;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadTask(Ljava/lang/String;)Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;
    .locals 1

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgtv/downloader/a;->a(Ljava/lang/String;)Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDownloadTasks(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mgtv/downloader/a;->a(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/net/entity/a;

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public getModuleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mgtv/downloader/a;->a(Ljava/lang/String;)Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    const-string v2, "contendId"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, v1, Lcom/mgtv/downloader/net/entity/a;->L:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v2, "videoId"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, v1, Lcom/mgtv/downloader/net/entity/a;->b:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string v2, "definition"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, v1, Lcom/mgtv/downloader/net/entity/a;->x:Ljava/lang/Integer;

    return-object p0

    :cond_3
    const-string v2, "clipId"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, v1, Lcom/mgtv/downloader/net/entity/a;->t:Ljava/lang/String;

    return-object p0

    :cond_4
    const-string v2, "plId"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, v1, Lcom/mgtv/downloader/net/entity/a;->u:Ljava/lang/String;

    return-object p0

    :cond_5
    const-string v2, "freeUrl"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p0, v1, Lcom/mgtv/downloader/net/entity/a;->y:Ljava/lang/String;

    return-object p0

    :cond_6
    const-string v2, "status"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p0, v1, Lcom/mgtv/downloader/net/entity/a;->i:Ljava/lang/Integer;

    return-object p0

    :cond_7
    const-string v2, "sdkversion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v2, "DATAOBJ"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v1

    :cond_9
    const-string v1, "proxyUrl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/mgtv/downloader/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v1, "checkFile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p2}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->checkFile(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public getTaskOption(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/a;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/mgtv/ssp/downloadsdk/DlPluginContext;Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iput-object p2, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->f:Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/mgtv/ssp/module/ModuleManager;->setModuleDownload(Lcom/mgtv/ssp/module/ModuleInterface;)V

    sget-boolean p2, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->b:Z

    const-string v0, "0000"

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result p2

    if-eqz p2, :cond_2

    const-string p0, "8199"

    return-object p0

    :cond_2
    new-instance p2, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$1;

    invoke-direct {p2, p0, p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$1;-><init>(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Lcom/mgtv/ssp/downloadsdk/DlPluginContext;)V

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p1

    new-instance v1, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;-><init>(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;)V

    invoke-virtual {p1, p2, v1}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/b/b;Lcom/mgtv/downloader/b/a;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p1

    invoke-static {}, Lcom/mgtv/ssp/utils/e;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/mgtv/downloader/a;->a(ILjava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p1

    invoke-static {}, Lcom/mgtv/ssp/utils/e;->c()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Lcom/mgtv/downloader/a;->a(ILjava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p1

    invoke-static {}, Lcom/hunantv/imgo/util/b;->j()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x5

    invoke-virtual {p1, v1, p2}, Lcom/mgtv/downloader/a;->a(ILjava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/ssp/utils/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {}, Lcom/mgtv/ssp/utils/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/mgtv/downloader/a;->a(ILjava/lang/String;)Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/mgtv/ssp/utils/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/mgtv/ssp/utils/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/d;->a(Ljava/lang/String;)V

    :cond_4
    const-string p1, "200000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->b:Z

    if-eqz p1, :cond_5

    return-object v0

    :cond_5
    return-object p0
.end method

.method public isSupportDownload()Z
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/a;->e()Z

    move-result p0

    return p0
.end method

.method public varargs noticeModule(I[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pauseDownload(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->d:Z

    const-string v0, "pause"

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/a;->c()V

    return-void
.end method

.method public resumeDownload(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->d:Z

    if-nez v0, :cond_0

    const-string v0, "resume"

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->d:Z

    :goto_0
    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/a;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setConfig(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->c:Ljava/lang/String;

    return-void
.end method

.method public setTaskOption(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/downloader/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;)V
    .locals 5

    sget-boolean v0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->b:Z

    const-string v1, ""

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    const-string p0, "\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-interface {p5, v1, p0}, Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;->onOver(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mgtv/downloader/b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"videoId\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"PATH\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"DEFINITION\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\"PRIORITY\":1,\"OPENID\":\""

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\"AT\":\""

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\"LIMIT_SPEED\":2147483647,\"CONTENTID\":\""

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mgtv/downloader/a;->a()Lcom/mgtv/downloader/a;

    move-result-object p2

    new-instance p3, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;

    invoke-direct {p3, p0, p4, p5}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;-><init>(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Ljava/lang/String;Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;)V

    invoke-virtual {p2, v2, p1, v1, p3}, Lcom/mgtv/downloader/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/downloader/b/c;)V

    const-string p1, "start"

    invoke-virtual {p0, v0, p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
