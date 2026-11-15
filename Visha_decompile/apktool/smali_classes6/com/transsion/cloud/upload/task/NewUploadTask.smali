.class public Lcom/transsion/cloud/upload/task/NewUploadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# static fields
.field private static final FORCE_UPDATE_INTERVAL:J = 0x3e8L

.field public static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "visha_cloud_NewUploadTask"

.field private static mSummeryNotification:Landroid/app/Notification;


# instance fields
.field protected complexView:Landroid/widget/RemoteViews;

.field private lastNotificationUpdateTime:J

.field private lastNotifiedProgress:I

.field public volatile listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lnhb;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloudTransferListener:Lb41;

.field private final mCloudUploadManager:Lju4;

.field private volatile mIsDownloading:Z

.field protected final mNid:I

.field private mNotification:Landroid/app/Notification;

.field private mProgressHandler:Landroid/os/Handler;

.field public volatile mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

.field private mProgressUpdateRunnable:Ljava/lang/Runnable;

.field private mSdkTransferTaskStatus:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

.field public final mTaskId:Ljava/lang/String;

.field protected final mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

.field private notifyCount:I

.field protected simpleView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->notifyCount:I

    .line 3
    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->WAITING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    iput-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mSdkTransferTaskStatus:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    .line 4
    iput-boolean v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mIsDownloading:Z

    .line 5
    sget-object v0, La41;->a:La41;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, La41;->f(Landroid/content/Context;)Lju4;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudUploadManager:Lju4;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->listeners:Ljava/util/Map;

    .line 7
    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    .line 8
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mNid:I

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/transsion/cloud/upload/task/NewUploadTask$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask$1;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    iput-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    .line 11
    new-instance v8, Lcom/transsion/cloud/upload/task/NewUploadTask$a;

    invoke-direct {v8, p0}, Lcom/transsion/cloud/upload/task/NewUploadTask$a;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    iput-object v8, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudTransferListener:Lb41;

    .line 12
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v3, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->filePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->taskId:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v6, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->duration:J

    const-string v4, "root"

    invoke-interface/range {v2 .. v8}, Lju4;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLb41;)Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    .line 13
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->setFileId(Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NewUploadTask : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_NewUploadTask"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;)V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->notifyCount:I

    .line 19
    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->WAITING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    iput-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mSdkTransferTaskStatus:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    .line 20
    iput-boolean v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mIsDownloading:Z

    .line 21
    new-instance v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-direct {v1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    .line 22
    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "headerType_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    .line 23
    iput v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mNid:I

    .line 24
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    .line 26
    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudTransferListener:Lb41;

    .line 27
    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudUploadManager:Lju4;

    .line 28
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->listeners:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->lambda$postOnProgress$3()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->lambda$postOnWaiting$5()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->lambda$postOnTranscoding$0()V

    return-void
.end method

.method private checkFileExists()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "visha_cloud_NewUploadTask"

    if-eqz v0, :cond_0

    const-string p0, "File path is empty"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v3, v3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File does not exist: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v1
.end method

.method public static synthetic d(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->lambda$postOnStart$4()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/cloud/upload/task/NewUploadTask;ZFLcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud/upload/task/NewUploadTask;->lambda$postLoading$2(ZFLcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->lambda$postOnTranscodeFail$1()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/cloud/upload/task/NewUploadTask;)Lb41;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudTransferListener:Lb41;

    return-object p0
.end method

.method private getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/cloud/upload/task/NewUploadTask;)Lju4;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudUploadManager:Lju4;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/cloud/upload/task/NewUploadTask;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mIsDownloading:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/cloud/upload/task/NewUploadTask;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/cloud/upload/task/NewUploadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mSdkTransferTaskStatus:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/cloud/upload/task/NewUploadTask;JJZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postLoading(JJZ)V

    return-void
.end method

.method private synthetic lambda$postLoading$2(ZFLcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    iget p1, p3, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateTaskRecord()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget p1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnProgress()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$postOnProgress$3()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->listeners:Ljava/util/Map;

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

    check-cast v1, Lnhb;

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {v1, v2}, Lnhb;->d(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v3, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speed:J

    invoke-static {v0, v3, v4}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v4, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    invoke-static {v0, v4, v5}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->simpleView:Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->complexView:Landroid/widget/RemoteViews;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateNotification(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private synthetic lambda$postOnStart$4()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->listeners:Ljava/util/Map;

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

    check-cast v1, Lnhb;

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {v1, v2}, Lnhb;->f(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->startNotification(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    return-void
.end method

.method private synthetic lambda$postOnTranscodeFail$1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->listeners:Ljava/util/Map;

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

    check-cast v1, Lnhb;

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {v1, v2}, Lnhb;->a(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->stopNotification()V

    return-void
.end method

.method private synthetic lambda$postOnTranscoding$0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->listeners:Ljava/util/Map;

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

    check-cast v1, Lnhb;

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {v1, v2}, Lnhb;->d(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->visha_video_transcoding_new:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v4, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    invoke-static {v0, v4, v5}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->simpleView:Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->complexView:Landroid/widget/RemoteViews;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateNotification(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private synthetic lambda$postOnWaiting$5()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->listeners:Ljava/util/Map;

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

    check-cast v1, Lnhb;

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {v1, v2}, Lnhb;->g(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->stopNotification()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/cloud/upload/task/NewUploadTask;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnFinish()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnTranscodeFail()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnTranscoding()V

    return-void
.end method

.method private postLoading(JJZ)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, p1

    :goto_0
    iget-object v4, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    new-instance v9, Lu07;

    invoke-direct {v9, p0, p5, v0}, Lu07;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;ZF)V

    move-wide v7, p3

    invoke-static/range {v4 .. v9}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->changeProgress(Lcom/transsion/cloud/upload/model/UploadProgressInfo;JJLcom/transsion/cloud/upload/model/UploadProgressInfo$Action;)Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    return-void
.end method

.method private postOnError(Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateUploadState(I)V

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateTaskRecord()V

    new-instance p1, Lcom/transsion/cloud/upload/task/NewUploadTask$3;

    invoke-direct {p1, p0}, Lcom/transsion/cloud/upload/task/NewUploadTask$3;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    invoke-static {p1}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnFinish()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOnFinish : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_NewUploadTask"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speed:J

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    iput v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->lastStatus:I

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    const/4 v1, 0x5

    iput v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    new-instance v0, Lcom/transsion/cloud/upload/task/NewUploadTask$4;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/upload/task/NewUploadTask$4;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getLocalFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->updateUploadTaskToFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postOnPause(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateTaskRecord()V

    new-instance p1, Lcom/transsion/cloud/upload/task/NewUploadTask$5;

    invoke-direct {p1, p0}, Lcom/transsion/cloud/upload/task/NewUploadTask$5;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    invoke-static {p1}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnProgress()V
    .locals 1

    new-instance v0, Lr07;

    invoke-direct {v0, p0}, Lr07;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnRemove(Z)V
    .locals 1

    new-instance v0, Lcom/transsion/cloud/upload/task/NewUploadTask$6;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask$6;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->deleteTask(Ljava/lang/String;)V

    return-void
.end method

.method private postOnStart()V
    .locals 1

    new-instance v0, Lp07;

    invoke-direct {v0, p0}, Lp07;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnTranscodeFail()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    const/16 v1, 0x9

    iput v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateTaskRecord()V

    new-instance v0, Lq07;

    invoke-direct {v0, p0}, Lq07;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnTranscoding()V
    .locals 1

    new-instance v0, Lt07;

    invoke-direct {v0, p0}, Lt07;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnWaiting()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateTaskRecord()V

    new-instance v0, Ls07;

    invoke-direct {v0, p0}, Ls07;-><init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->stopOrStartProgressUpdate(Z)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateTaskRecord()V

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/cloud/upload/task/NewUploadTask;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateUploadState(I)V

    return-void
.end method

.method private stopOrStartProgressUpdate(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mIsDownloading:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private updateNotification(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->lastNotificationUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->lastNotifiedProgress:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    return-void

    :cond_1
    iput-wide v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->lastNotificationUpdateTime:J

    iput p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->lastNotifiedProgress:I

    iget v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->notifyCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->notifyCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->startNotification(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->notifyCount:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->s(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p1

    iget p2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mNid:I

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mNotification:Landroid/app/Notification;

    invoke-static {p1, p2, p0}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->t(Landroid/content/Context;ILandroid/app/Notification;)V

    return-void
.end method

.method private updateTaskRecord()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v2, v2, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->updateTaskStatusAndProgress(Ljava/lang/String;IF)V

    return-void
.end method

.method private updateUploadState(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    iput v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->lastStatus:I

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iput p1, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileId:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHeaderTask()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->getItemType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public noNetPause()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network pause for upload task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_NewUploadTask"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateUploadState(I)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speed:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnPause(Z)V

    return-void
.end method

.method public pause(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pausing upload task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_NewUploadTask"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudUploadManager:Lju4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, v1}, Liu4;->a(Ljava/lang/String;)Z

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateUploadState(I)V

    invoke-direct {p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnPause(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->stopOrStartProgressUpdate(Z)V

    return-void
.end method

.method public register(Lnhb;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->listeners:Ljava/util/Map;

    iget-object v0, p1, Lnhb;->a:Ljava/lang/Object;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing upload task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "visha_cloud_NewUploadTask"

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudUploadManager:Lju4;

    iget-object v3, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v2, v3}, Liu4;->cancel(Ljava/lang/String;)Z

    invoke-direct {p0, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateUploadState(I)V

    invoke-direct {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnRemove(Z)V

    invoke-direct {p0, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->stopOrStartProgressUpdate(Z)V

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    const-string p0, "cloud_upload_cancel"

    invoke-static {v0, v1, p0}, Lcz5;->j(JLjava/lang/String;)V

    return-void
.end method

.method public resumeTranscoding()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudUploadManager:Lju4;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lju4;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public retryTranscode()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudUploadManager:Lju4;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lju4;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload task started for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_NewUploadTask"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->checkFileExists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "File not exists"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnError(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upload task error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public start()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_NewUploadTask"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->checkFileExists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "File not exists"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/16 v1, 0x9

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the task with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already in the download queue, current task status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lie7;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->retryTranscode()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnStart()V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudUploadManager:Lju4;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, v1}, Liu4;->e(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mSdkTransferTaskStatus:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PAUSED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudUploadManager:Lju4;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudTransferListener:Lb41;

    invoke-interface {v0, v1, p0}, Liu4;->c(Ljava/lang/String;Lb41;)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudUploadManager:Lju4;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mCloudTransferListener:Lb41;

    invoke-interface {v1, v0, p0}, Liu4;->f(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;Lb41;)Ljava/lang/String;

    :cond_6
    :goto_2
    return-void
.end method

.method public startNotification(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 9

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$layout;->notify_progress_layout_simple:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->simpleView:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$layout;->notify_progress_layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->complexView:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    iget-wide v1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speed:J

    invoke-static {v0, v1, v2}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v1

    iget-wide v2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    invoke-static {v1, v2, v3}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object p1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->complexView:Landroid/widget/RemoteViews;

    sget v4, Lcom/transsion/playercommon/R$id;->tv_name:I

    invoke-virtual {v3, v4, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->complexView:Landroid/widget/RemoteViews;

    sget v5, Lcom/transsion/playercommon/R$id;->tv_speed:I

    invoke-virtual {v3, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->complexView:Landroid/widget/RemoteViews;

    sget v3, Lcom/transsion/playercommon/R$id;->tv_size:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->complexView:Landroid/widget/RemoteViews;

    sget v1, Lcom/transsion/playercommon/R$id;->progressBar:I

    const/16 v3, 0x64

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->complexView:Landroid/widget/RemoteViews;

    sget v6, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v7

    sget v8, Lcom/transsion/sniffer_load/R$string;->visha_uploading_status:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->simpleView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v4, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->simpleView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->simpleView:Landroid/widget/RemoteViews;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->simpleView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->complexView:Landroid/widget/RemoteViews;

    iget v3, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mNid:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->n(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mNotification:Landroid/app/Notification;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x21

    if-gt p0, p1, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->m(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p0

    sput-object p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mSummeryNotification:Landroid/app/Notification;

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p0

    sget-object p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mSummeryNotification:Landroid/app/Notification;

    invoke-virtual {p0, p1}, Lri4;->q(Landroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public stopNotification()V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mNid:I

    invoke-static {v0, v1}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->o(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v0

    invoke-virtual {v0, v1}, Lri4;->s(Z)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-static {v0, v1}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->a(Landroid/content/Context;I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mNotification:Landroid/app/Notification;

    iput-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->simpleView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->complexView:Landroid/widget/RemoteViews;

    return-void
.end method

.method public unRegister(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->listeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public waiting()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload task waiting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_NewUploadTask"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->updateUploadState(I)V

    invoke-direct {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnWaiting()V

    return-void
.end method
