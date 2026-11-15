.class public Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;
.super Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$DownloadTaskExtra;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final callback:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffResultBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

.field private final retryCount:I

.field private final retryInterval:J

.field private startTime:J


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->retryCount:I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->retryInterval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->startTime:J

    new-instance p1, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;

    invoke-direct {p1, p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$a;-><init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->callback:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    invoke-static {}, Lr13;->e()Lr13;

    move-result-object p1

    invoke-virtual {p1}, Lr13;->i()Lt13;

    move-result-object p1

    invoke-virtual {p1}, Lt13;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    return-void
.end method

.method private clearBreakpointState()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lmv4;->e(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->lastSize:J

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, p0}, Lt90;->k(Ljava/lang/Object;)Z

    return-void
.end method

.method private download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    const/16 v11, 0x2000

    new-array v12, v11, [B

    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, p1, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v13, v12, v3, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v5, v9, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v5, v10, :cond_1

    invoke-virtual {v2, v12, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v4, v4

    iget-wide v6, v9, Lcom/lzy/okgo/model/Progress;->totalSize:J

    new-instance v8, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$c;

    invoke-direct {v8, p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$c;-><init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)V

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v8}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JJLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static/range {p2 .. p2}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {v13}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lmv4;->a(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static/range {p2 .. p2}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {v13}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lmv4;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public static synthetic f(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->lambda$updateOriginUrl$1(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;Lcom/lzy/okgo/model/Progress;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->lambda$postOnRemove$0(Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method

.method private getDownloadUrlFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener<",
            "Lcom/transsion/dbdata/beans/sniff/SniffResultBean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->startTime:J

    const-string p0, "application/json; charset=utf-8"

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    invoke-static {p1, p0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/APIServiceManager;->getInstance()Lcom/transsion/playercommon/vishaapis/APIServiceManager;

    move-result-object p1

    const-class v0, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-virtual {p1, v0}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-interface {p1, p0}, Lcom/transsion/playercommon/vishaapis/APIService;->submitSniffInfo(Lokhttp3/RequestBody;)Ljq0;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljq0;->execute()Lgu8;

    move-result-object p0

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    invoke-interface {p3, p0}, Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;->returnDataSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgu8;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lgu8;->f()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p1, p0}, Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;->returnDataFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSniffInfo failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2008:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    const-string p1, "2008"

    invoke-interface {p3, p1, p0}, Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;->returnDataFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance p0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string p1, "dl_brower_rp_c_s"

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->callback:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    return-object p0
.end method

.method private handleBreakpointFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->tryResetBreakpointAndRetry(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private hasRetriedBreakpointReset()Z
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->startTime:J

    return-wide v0
.end method

.method public static bridge synthetic j(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->startTime:J

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->saveFile()V

    return-void
.end method

.method private synthetic lambda$postOnRemove$0(Lcom/lzy/okgo/model/Progress;Z)V
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

.method private synthetic lambda$updateOriginUrl$1(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/sniffer_load/data/DownloadHistory;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/data/DownloadHistory;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/data/DownloadHistory;->setMediaId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Progress;->getOriginSite()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/data/DownloadHistory;->setOriginSite(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/data/DownloadHistory;->setVideoSite(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/sniffer_load/data/DownloadHistory;->setTimeStamp(J)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->b()Lnz2;

    move-result-object p0

    invoke-interface {p0, v0}, Lnz2;->addDownloadHistory(Lcom/transsion/sniffer_load/data/DownloadHistory;)V

    :cond_1
    return-void
.end method

.method private markBreakpointRetried()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, p0}, Lt90;->k(Ljava/lang/Object;)Z

    return-void
.end method

.method private postOnRemove(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postOnRemove-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Llq9;

    invoke-direct {v0, p0, p1, p2}, Llq9;-><init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;Lcom/lzy/okgo/model/Progress;Z)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runServerAsyncSniffTask()Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start server async task:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    check-cast v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$DownloadTaskExtra;

    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$DownloadTaskExtra;->sniffRequestBody:Ljava/lang/String;

    invoke-static {v2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$DownloadTaskExtra;

    iget-object v0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$DownloadTaskExtra;->sniffRequestBody:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    new-instance v2, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$b;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$b;-><init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->getDownloadUrlFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V

    return v3

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start server async task failed\uff0cno request body:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v2, Ljava/lang/Throwable;

    const-string v4, "server async sniff task failed,no request body"

    invoke-direct {v2, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2008:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v4, v2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {v0, v4}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    iget-object v2, v2, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string v0, "dl_brower_sniff"

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    return v3

    :cond_2
    return v1
.end method

.method private saveFile()V
    .locals 13

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->injectProgress(Lcom/lzy/okgo/model/Progress;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v0, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-string v5, "save file failed,error msg:breakpoint file has expired"

    if-gez v4, :cond_0

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v0

    const-string v1, "negative_offset"

    invoke-direct {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->handleBreakpointFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    const-string v7, ".xdl"

    if-lez v4, :cond_2

    iget-object v8, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v8, v8, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v9, v9, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_NOT_EXIST()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v0

    const-string v1, "breakpoint_not_exist"

    invoke-direct {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->handleBreakpointFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v5, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    const-string v8, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    iget-object v8, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v8, v8, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    invoke-static {v8}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "Cookie"

    iget-object v9, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v9, v9, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v8, v8, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "User-Agent"

    iget-object v9, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v9, v9, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_4
    iget-object v8, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v8, v8, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    invoke-static {v8}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "Accept-Language"

    iget-object v9, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v9, v9, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_5
    iget-object v8, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v8, v8, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    invoke-static {v8}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "Accept"

    iget-object v9, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v9, v9, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_6
    iget-object v8, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v8, v8, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    invoke-static {v8}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "Origin"

    iget-object v9, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v9, v9, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_7
    iget-object v8, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v8, v8, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    invoke-static {v8}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "Referer"

    iget-object v9, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v9, v9, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_8
    invoke-virtual {v5}, Lcom/lzy/okgo/request/base/Request;->execute()Lokhttp3/Response;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v8

    const/16 v9, 0x1a0

    const-string v10, "save file failed,request failed error code:"

    if-ne v8, v9, :cond_a

    const-string v0, "http_416"

    invoke-direct {p0, v0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->tryResetBreakpointAndRetry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {v8}, Lcom/lzy/okgo/exception/HttpException;->NET_ERROR(I)Lcom/lzy/okgo/exception/HttpException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/16 v9, 0x190

    if-lt v8, v9, :cond_b

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {v8}, Lcom/lzy/okgo/exception/HttpException;->NET_ERROR(I)Lcom/lzy/okgo/exception/HttpException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-nez v8, :cond_c

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    const-string v1, "save file failed,request failed no body"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Lcom/lzy/okgo/exception/HttpException;

    const-string v2, "response body is null"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_c
    sget-object v9, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "totalSize:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v11, v11, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " body:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v10, v10, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_d

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v2, v2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    cmp-long v2, v2, v10

    if-gez v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    :cond_e
    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v5, v2}, Lut4;->h(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object v2, v3, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    goto :goto_1

    :cond_f
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_10
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_11
    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v5, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v2, v5}, Lb23;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_12
    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object v2, v3, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    :cond_13
    :goto_1
    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-static {v3}, Lmv4;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save file failed,create folder failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/StorageException;->NOT_AVAILABLE()Lcom/lzy/okgo/exception/StorageException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_14
    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v5, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    goto :goto_2

    :cond_15
    new-instance v3, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v2, "save file failed: "

    if-lez v4, :cond_16

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v0

    const-string v1, "file_missing"

    invoke-direct {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->handleBreakpointFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_16
    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v5, v5, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v5, v0, v5

    if-lez v5, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v0

    const-string v1, "offset_gt_total"

    invoke-direct {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->handleBreakpointFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_17
    if-nez v4, :cond_18

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v3}, Lmv4;->d(Ljava/io/File;)Z

    :cond_18
    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v5, v5, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v5, v0, v5

    if-nez v5, :cond_1a

    if-lez v4, :cond_1a

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    return-void

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v0

    const-string v1, "size_mismatch"

    invoke-direct {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->handleBreakpointFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_1a
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v6, v6, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iput-wide v6, v5, Lcom/lzy/okgo/model/Progress;->lastSize:J

    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-wide v0, v5, Lcom/lzy/okgo/model/Progress;->currentSize:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lt90;->k(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0, v4, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;)V

    goto/16 :goto_4

    :cond_1b
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v4, v4, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1c

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    goto :goto_4

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v0

    const-string v1, "download_incomplete"

    invoke-direct {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->handleBreakpointFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4

    :cond_1d
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-nez v0, :cond_1e

    goto :goto_3

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->UNKNOWN()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_1f
    :goto_3
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    :goto_4
    return-void

    :catch_1
    move-exception v0

    sget-object v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    sget-object v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :goto_5
    sget-object v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save file failed,error msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void
.end method

.method private tryResetBreakpointAndRetry(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lpp3;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->hasRetriedBreakpointReset()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "breakpoint reset once, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", url="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->markBreakpointRetried()V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->clearBreakpointState()V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->saveFile()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public extra1(Ljava/io/Serializable;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    return-object p0
.end method

.method public extra2(Ljava/io/Serializable;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    return-object p0
.end method

.method public extra3(Ljava/io/Serializable;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    return-object p0
.end method

.method public fileName(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "fileName is null, ignored!"

    invoke-static {p1}, Lie7;->c(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public folder(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object p1, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "folder is null, ignored!"

    invoke-static {p1}, Lie7;->c(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public noNetPause()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->noNetPause()V

    return-void
.end method

.method public pause(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method

.method public postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p2}, Lty2;->l(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void
.end method

.method public postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postOnFinish-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    invoke-static {p2}, Lzu3;->k(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xdl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lzu3;->G(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Progress;->getOriginSite()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lzu3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    invoke-static {v0, v1, v3, v4}, Le16;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/lzy/okgo/model/Progress;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lb23;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;-><init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public postPause(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method

.method public priority(I)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput p1, v0, Lcom/lzy/okgo/model/Progress;->priority:I

    return-object p0
.end method

.method public register(Luz2;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    iget-object v1, p1, Luz2;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->remove(Z)V

    return-void
.end method

.method public remove(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->pause(Z)V

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lmv4;->e(Ljava/lang/String;)Z

    .line 5
    :cond_2
    invoke-static {}, Lr03;->t()Lr03;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lr03;->n(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, p1, v0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnRemove(Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->runServerAsyncSniffTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->saveFile()V

    :cond_0
    return-void
.end method

.method public save()Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lt90;->k(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public start()V
    .locals 6

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->C(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    const-string v1, " may be invalid or damaged, please call the method restart() to download again\uff01"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v2, Lcom/lzy/okgo/exception/StorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the file of the task with tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/lzy/okgo/exception/StorageException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v4, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v2, Lcom/lzy/okgo/exception/StorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/lzy/okgo/exception/StorageException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
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

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnStart(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/lzy/okserver/task/PriorityRunnable;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-direct {v0, v1, p0}, Lcom/lzy/okserver/task/PriorityRunnable;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "you must call NewDownloadTask#save() before NewDownloadTask#start()\uff01"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unRegister(Ljava/lang/String;)V
    .locals 1

    .line 3
    const-string v0, "tag == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegister(Luz2;)V
    .locals 1

    .line 1
    const-string v0, "listener == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    iget-object p1, p1, Luz2;->a:Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateDatabase(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    invoke-static {p1}, Lcom/lzy/okgo/model/Progress;->buildUpdateContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lr03;->v(Landroid/content/ContentValues;Ljava/lang/String;)Z

    return-void
.end method

.method public updateOriginUrl(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lkq9;

    invoke-direct {v0, p0, p1}, Lkq9;-><init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public waiting()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
