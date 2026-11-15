.class public Lcom/transsion/cloud/fileoperate/CloudFileOperate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/services/ICloudFileService;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/clouddrive/cloudfileoperate"
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/transsion/cloud/fileoperate/CloudFileOperate; = null

.field private static final TAG:Ljava/lang/String; = "visha_cloud_CloudFileOperate"


# instance fields
.field private mStorageInsufficientListener:Loe7;


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

.method public static getInstance()Lcom/transsion/cloud/fileoperate/CloudFileOperate;
    .locals 2

    sget-object v0, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->INSTANCE:Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->INSTANCE:Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    invoke-direct {v1}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;-><init>()V

    sput-object v1, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->INSTANCE:Lcom/transsion/cloud/fileoperate/CloudFileOperate;

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
    sget-object v0, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->INSTANCE:Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    return-object v0
.end method

.method private initCloudingItem(Lcom/transsion/dbdata/beans/VideoCloudData;)Lbz0;
    .locals 5

    .line 1
    new-instance p0, Lbz0;

    invoke-direct {p0}, Lbz0;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbz0;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbz0;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lbz0;->d:J

    .line 5
    sget-object v0, Lyx2;->h:Ljava/lang/String;

    iput-object v0, p0, Lbz0;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    iput-wide v1, p0, Lbz0;->g:J

    .line 7
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPreviewUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbz0;->h:Ljava/lang/String;

    return-object p0
.end method

.method private initCloudingItem(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)Lbz0;
    .locals 5

    .line 8
    new-instance p0, Lbz0;

    invoke-direct {p0}, Lbz0;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbz0;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbz0;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSize()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lbz0;->d:J

    .line 12
    sget-object v0, Lyx2;->h:Ljava/lang/String;

    iput-object v0, p0, Lbz0;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    iput-wide v1, p0, Lbz0;->g:J

    .line 14
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getCover()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbz0;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    const-string p0, "visha_cloud_CloudFileOperate"

    const-string p1, "CloudFileOperate init"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnCloudStorageInsufficientListener(Loe7;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->mStorageInsufficientListener:Loe7;

    return-void
.end method

.method public startBatchDownload(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "visha_cloud_CloudFileOperate"

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start batch download, total files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/VideoCloudData;

    if-nez v2, :cond_1

    const-string v2, "Skip null video data in batch download"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting download for file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->initCloudingItem(Lcom/transsion/dbdata/beans/VideoCloudData;)Lbz0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->n(Landroid/content/Context;Ljava/util/List;)Z

    const-string p0, "Batch download tasks submitted successfully"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error occurred during batch download: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_3
    :goto_3
    const-string p0, "Batch download failed: video list is null or empty"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void
.end method

.method public startBatchUploadByVideoCloudDataList(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudDataLocal;",
            ">;)V"
        }
    .end annotation

    const-string v0, "visha_cloud_CloudFileOperate"

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->mStorageInsufficientListener:Loe7;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Loe7;->a(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Batch upload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/transsion/cloud/upload/model/UploadingItem;

    invoke-direct {v2}, Lcom/transsion/cloud/upload/model/UploadingItem;-><init>()V

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaData()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/cloud/upload/model/UploadingItem;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/cloud/upload/model/UploadingItem;->fileName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaSize()Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_3

    move-wide v6, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaSize()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1
    iput-wide v6, v2, Lcom/transsion/cloud/upload/model/UploadingItem;->totalSize:J

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaId()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_2
    iput v3, v2, Lcom/transsion/cloud/upload/model/UploadingItem;->mediaId:I

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaDuring()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaDuring()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_3
    iput-wide v4, v2, Lcom/transsion/cloud/upload/model/UploadingItem;->duration:J

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_6
    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lri4;->p(Landroid/content/Context;Ljava/util/List;)V

    const-string p0, "Batch upload tasks submitted successfully"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error occurred during batch upload: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    return-void
.end method

.method public startDownload(Landroid/content/Context;Lcom/transsion/dbdata/beans/VideoCloudData;)V
    .locals 3

    .line 2
    const-string v0, "startDownload: "

    const-string v1, "visha_cloud_CloudFileOperate"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->initCloudingItem(Lcom/transsion/dbdata/beans/VideoCloudData;)Lbz0;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->p(Landroid/content/Context;Lba0;)Z

    .line 5
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_0
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0}, Lcz5;->f(JIZ)V

    return-void

    .line 7
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDownload(Landroid/content/Context;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_cloud_CloudFileOperate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->initCloudingItem(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)Lbz0;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->p(Landroid/content/Context;Lba0;)Z

    .line 11
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSize()Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSize()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_0
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, p2, v0}, Lcz5;->f(JIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public startDownload(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Ljava/lang/String;)V
    .locals 2

    .line 13
    :try_start_0
    new-instance p0, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-direct {p0}, Lcom/transsion/sniffer_load/okdownload/a;-><init>()V

    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Lba0;->b(I)V

    .line 15
    invoke-static {}, Ldr9;->e()I

    move-result v0

    iput v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->g:I

    .line 16
    iput-object p2, p0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileCoverUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sniffer_load/okdownload/a;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->e:J

    .line 19
    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->p(Landroid/content/Context;Lba0;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startDownload "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_cloud_CloudFileOperate"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startDownload(Lcom/transsion/dbdata/beans/VideoCloudData;)V
    .locals 1

    .line 1
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->startDownload(Landroid/content/Context;Lcom/transsion/dbdata/beans/VideoCloudData;)V

    return-void
.end method

.method public startDownload(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V
    .locals 3

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getMIMediaVideoPlayItemInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    move-result-object p0

    .line 23
    new-instance v0, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/okdownload/a;-><init>()V

    const/4 v1, 0x3

    .line 24
    invoke-virtual {v0, v1}, Lba0;->b(I)V

    .line 25
    invoke-static {}, Ldr9;->f()I

    move-result v1

    iput v1, v0, Lcom/transsion/sniffer_load/okdownload/a;->g:I

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getCoverUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/sniffer_load/okdownload/a;->c:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->getSize()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    iput-wide v1, v0, Lcom/transsion/sniffer_load/okdownload/a;->e:J

    .line 29
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lav3;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->p(Landroid/content/Context;Lba0;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 31
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startDownload "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_cloud_CloudFileOperate"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
