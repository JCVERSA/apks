.class public Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$DownloadTaskExtra;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final NONE:I

.field public static final TAG:Ljava/lang/String;

.field private static mSummeryNotification:Landroid/app/Notification;


# instance fields
.field private bM3U8Task:Z

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

.field protected complexView:Landroid/widget/RemoteViews;

.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private lastNotificationUpdateTime:J

.field private lastNotifiedProgress:I

.field public volatile listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Luz2;",
            ">;"
        }
    .end annotation
.end field

.field private final mNid:I

.field private mNotification:Landroid/app/Notification;

.field private notifyCount:I

.field private priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

.field public volatile progress:Lcom/lzy/okgo/model/Progress;

.field private final retryCount:I

.field private final retryInterval:J

.field protected simpleView:Landroid/widget/RemoteViews;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->notifyCount:I

    .line 3
    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->bM3U8Task:Z

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->retryCount:I

    const-wide/16 v0, 0x3e8

    .line 5
    iput-wide v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->retryInterval:J

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->startTime:J

    .line 7
    new-instance v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$a;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$a;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->callback:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    .line 8
    const-string v0, "progress == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 10
    invoke-static {}, Lj07;->a()Lj07;

    move-result-object v0

    invoke-virtual {v0}, Lj07;->b()Lt13;

    move-result-object v0

    invoke-virtual {v0}, Lt13;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    .line 12
    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-static {p1}, Lu03;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mNid:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;)V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->notifyCount:I

    .line 15
    iput-boolean v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->bM3U8Task:Z

    const/4 v1, 0x5

    .line 16
    iput v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->retryCount:I

    const-wide/16 v1, 0x3e8

    .line 17
    iput-wide v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->retryInterval:J

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->startTime:J

    .line 19
    new-instance v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$a;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$a;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    iput-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->callback:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    .line 20
    new-instance v1, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v1}, Lcom/lzy/okgo/model/Progress;-><init>()V

    iput-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 21
    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "headerType_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    .line 22
    invoke-static {}, Lj07;->a()Lj07;

    move-result-object p1

    invoke-virtual {p1}, Lj07;->b()Lt13;

    move-result-object p1

    invoke-virtual {p1}, Lt13;->a()Lcom/lzy/okserver/task/XExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    .line 24
    iput v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mNid:I

    return-void
.end method

.method public static synthetic a(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->lambda$updateOriginUrl$0(Landroid/net/Uri;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->callback:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->startTime:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->startTime:J

    return-void
.end method

.method private download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v9, 0x2

    iput v9, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/16 v10, 0x2000

    new-array v11, v10, [B

    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-direct {v12, p1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v12, v11, v3, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v5, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v5, v9, :cond_1

    invoke-virtual {v2, v11, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v4, v4

    iget-wide v6, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    new-instance v8, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$c;

    move-object v13, p0

    invoke-direct {v8, p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$c;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

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

    invoke-static {v12}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lmv4;->a(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static/range {p2 .. p2}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lmv4;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lmv4;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->saveFile()V

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

.method private synthetic lambda$updateOriginUrl$0(Landroid/net/Uri;)V
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

.method private postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$10;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$10;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Ljava/io/File;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnRemove(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

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

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$11;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Lcom/lzy/okgo/model/Progress;Z)V

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

    new-instance v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$b;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->getDownloadUrlFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V

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

    invoke-virtual {p0, v0, v2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

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
    .locals 11

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

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-lez v4, :cond_2

    iget-object v6, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v7, v7, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    const-string v1, ".xdl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

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

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v1, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_NOT_EXIST()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v5, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    const-string v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    iget-object v6, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    invoke-static {v6}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Cookie"

    iget-object v7, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v7, v7, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "User-Agent"

    iget-object v7, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v7, v7, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_4
    iget-object v6, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    invoke-static {v6}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "Accept-Language"

    iget-object v7, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v7, v7, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_5
    iget-object v6, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    invoke-static {v6}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "Accept"

    iget-object v7, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v7, v7, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_6
    iget-object v6, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    invoke-static {v6}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "Origin"

    iget-object v7, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v7, v7, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_7
    iget-object v6, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v6, v6, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    invoke-static {v6}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "Referer"

    iget-object v7, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v7, v7, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_8
    invoke-virtual {v5}, Lcom/lzy/okgo/request/base/Request;->execute()Lokhttp3/Response;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v7, 0x190

    if-lt v6, v7, :cond_9

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save file failed,request failed error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {v6}, Lcom/lzy/okgo/exception/HttpException;->NET_ERROR(I)Lcom/lzy/okgo/exception/HttpException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_9
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-nez v6, :cond_a

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    const-string v1, "save file failed,request failed no body"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v1, Lcom/lzy/okgo/exception/HttpException;

    const-string v2, "response body is null"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    sget-object v7, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "totalSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v9, v9, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " body:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v8, v8, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v2, v8, v2

    if-lez v2, :cond_b

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v2, v2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-gez v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    :cond_c
    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v5, v2}, Lut4;->h(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-object v2, v3, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    :cond_d
    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-static {v3}, Lmv4;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

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

    invoke-static {v7, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/StorageException;->NOT_AVAILABLE()Lcom/lzy/okgo/exception/StorageException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_e
    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v3, v3, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v5, v5, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    goto :goto_1

    :cond_f
    new-instance v3, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v2, "save file failed: "

    if-lez v4, :cond_10

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_10

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

    invoke-static {v7, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_10
    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v8, v5, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v5, v0, v8

    if-lez v5, :cond_11

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

    invoke-static {v7, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_11
    if-nez v4, :cond_12

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v3}, Lmv4;->d(Ljava/io/File;)Z

    :cond_12
    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v8, v5, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v5, v0, v8

    if-nez v5, :cond_14

    if-lez v4, :cond_14

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0, v3}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    return-void

    :cond_13
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

    invoke-static {v7, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :cond_14
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput-wide v0, v5, Lcom/lzy/okgo/model/Progress;->currentSize:J

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v0, v1}, Lt90;->k(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0, v4, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;)V

    goto/16 :goto_3

    :cond_15
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v4, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v4, v4, Lcom/lzy/okgo/model/Progress;->totalSize:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0, v3}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    goto :goto_3

    :cond_16
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

    invoke-static {v7, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_17
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-nez v0, :cond_18

    goto :goto_2

    :cond_18
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

    invoke-static {v7, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {}, Lcom/lzy/okgo/exception/OkGoException;->UNKNOWN()Lcom/lzy/okgo/exception/OkGoException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_19
    :goto_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    :goto_3
    return-void

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
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

    invoke-virtual {p0, v1, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void

    :goto_6
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

    invoke-virtual {p0, v1, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void
.end method

.method private updateDatabase(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

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

.method public getItemType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0}, Lcom/lzy/okgo/model/Progress;->hashCode()I

    move-result p0

    return p0
.end method

.method public isHLSConverting()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    check-cast p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$M3U8TaskExtra;->bConvert:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHeaderTask()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->getItemType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isbM3U8Task()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->bM3U8Task:Z

    return p0
.end method

.method public noNetPause()V
    .locals 3

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postNoNet(Lcom/lzy/okgo/model/Progress;)V

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noNetPause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public pause(Z)V
    .locals 0

    return-void
.end method

.method public postLoading(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$8;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$8;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postNoNet(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postNoNet-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$7;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$7;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

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
    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    iput-object p2, p1, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postOnError-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$9;

    invoke-direct {p2, p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$9;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {p2}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public postOnStart(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postOnStart-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$4;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public postPause(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method

.method public postPause(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 3
    :goto_0
    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    .line 4
    sget-object p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postPause-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$6;

    invoke-direct {p2, p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$6;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {p2}, Lut4;->k(Ljava/lang/Runnable;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public postWaiting(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateStatus(I)V

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postWaiting-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$5;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

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
    .locals 0

    .line 1
    return-void
.end method

.method public remove(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public run()V
    .locals 0

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

.method public setbM3U8Task(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->bM3U8Task:Z

    return-void
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

    invoke-virtual {p0, v0, v2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

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

    invoke-direct {p0, v0, v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

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

    invoke-virtual {p0, v0, v2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

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

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->priorityRunnable:Lcom/lzy/okserver/task/PriorityRunnable;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "you must call NewDownloadTask#save() before NewDownloadTask#start()\uff01"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startNotification(Lcom/lzy/okgo/model/Progress;)V
    .locals 8

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$layout;->notify_progress_layout_simple:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->simpleView:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$layout;->notify_progress_layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->complexView:Landroid/widget/RemoteViews;

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v0

    iget-wide v1, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-static {v0, v1, v2}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v1

    iget-wide v2, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-static {v1, v2, v3}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-static {p1}, Lr13;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->complexView:Landroid/widget/RemoteViews;

    sget v4, Lcom/transsion/sniffer_load/R$id;->tv_name:I

    invoke-virtual {v3, v4, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->complexView:Landroid/widget/RemoteViews;

    sget v5, Lcom/transsion/sniffer_load/R$id;->tv_speed:I

    invoke-virtual {v3, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->complexView:Landroid/widget/RemoteViews;

    sget v3, Lcom/transsion/sniffer_load/R$id;->tv_size:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->complexView:Landroid/widget/RemoteViews;

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v3

    sget v5, Lcom/transsion/sniffer_load/R$string;->mv_download:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->complexView:Landroid/widget/RemoteViews;

    sget v3, Lcom/transsion/sniffer_load/R$id;->progressBar:I

    const/16 v6, 0x64

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v6, v2, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->simpleView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v4, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->simpleView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3, v6, v2, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->simpleView:Landroid/widget/RemoteViews;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->simpleView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->complexView:Landroid/widget/RemoteViews;

    iget v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mNid:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->d(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mNotification:Landroid/app/Notification;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x21

    if-gt p0, p1, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lu03;->b(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p0

    sput-object p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mSummeryNotification:Landroid/app/Notification;

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p0

    sget-object p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mSummeryNotification:Landroid/app/Notification;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b(Landroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public stopNotification()V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    iget v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mNid:I

    invoke-static {v0, v1}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->o(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->a(Z)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->a(Landroid/content/Context;I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mNotification:Landroid/app/Notification;

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->simpleView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->complexView:Landroid/widget/RemoteViews;

    return-void
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

.method public updateNotification(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->lastNotificationUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->lastNotifiedProgress:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    return-void

    :cond_1
    iput-wide v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->lastNotificationUpdateTime:J

    iput p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->lastNotifiedProgress:I

    iget v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->notifyCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->notifyCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->startNotification(Lcom/lzy/okgo/model/Progress;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->notifyCount:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->s(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object p1

    iget p2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mNid:I

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->mNotification:Landroid/app/Notification;

    invoke-static {p1, p2, p0}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->t(Landroid/content/Context;ILandroid/app/Notification;)V

    return-void
.end method

.method public updateOriginUrl(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lg07;

    invoke-direct {v0, p0, p1}, Lg07;-><init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->lastStatus:I

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iput p1, p0, Lcom/lzy/okgo/model/Progress;->status:I

    return-void
.end method

.method public waiting()V
    .locals 0

    return-void
.end method
