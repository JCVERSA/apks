.class public Lcom/hunantv/media/source/ImgoCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/source/IImgoSingleCache;


# static fields
.field private static final CONNECT_TIMEOUT_MS:I = 0xbb8

.field public static final NULL:I = 0x0

.field private static final REQUEST_TIMEOUT_MS:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "ImgoCache"

.field private static final USER_AGENT:Ljava/lang/String; = "ImgoDataSource"


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mCallback:Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

.field private mInitParams:Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;

.field private mLock:Ljava/lang/Object;

.field protected mManagerAddress:J

.field private mMyLooper:Landroid/os/Looper;

.field private mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

.field private mTaskCallback:Lcom/hunantv/media/source/IImgoCache$TaskCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hunantv/media/source/ImgoCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/hunantv/media/source/ImgoCache$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/source/ImgoCache$1;-><init>(Lcom/hunantv/media/source/ImgoCache;)V

    iput-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mCallback:Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

    invoke-static {p1}, Lcom/hunantv/media/source/ImgoCacheLibLoader;->loadLibs(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iput-object p2, p0, Lcom/hunantv/media/source/ImgoCache;->mCachePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/hunantv/media/utils/FileUtil;->mkdirs(Ljava/lang/String;)Z

    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/hunantv/media/source/ImgoCache;->mInitParams:Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;

    invoke-direct {p1}, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoCache;->mInitParams:Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;

    const-string p2, "ImgoDataSource"

    iput-object p2, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;->useragent:Ljava/lang/String;

    const/16 p2, 0xbb8

    iput p2, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;->connect_timeout_ms:I

    const/16 p2, 0x1388

    iput p2, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;->request_timeout_ms:I

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoCache;->mMyLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->create()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/source/ImgoCache;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoCache;->mMyLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/source/ImgoCache;ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/source/ImgoCache;->notifyTaskResult(ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/hunantv/media/source/ImgoCache;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/source/ImgoCache;->notifyTaskError(Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V

    return-void
.end method

.method private isRunningTask(Lcom/hunantv/media/source/CacheTask;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getTaskID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/source/ImgoCache;->isRunningTask(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRunningTask(Ljava/lang/String;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    invoke-virtual {p0}, Lcom/hunantv/media/source/CacheTask;->getTaskID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyTaskError(Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V
    .locals 5

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyTaskError"

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyTaskError in"

    invoke-static {v1, v2}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;->taskid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hunantv/media/source/ImgoCache;->isRunningTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyTaskError findTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    iget v3, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;->error_code:I

    invoke-virtual {v1, v3}, Lcom/hunantv/media/source/CacheTask;->setErrorCode(I)Lcom/hunantv/media/source/CacheTask;

    iget p1, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;->detail_code:I

    invoke-virtual {v1, p1}, Lcom/hunantv/media/source/CacheTask;->setDetailCode(I)Lcom/hunantv/media/source/CacheTask;

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p1

    const-string v3, "notifyTaskError FAILED IN"

    invoke-static {p1, v3}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/hunantv/media/source/CacheTask;->setTempPath(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;

    sget-object p1, Lcom/hunantv/media/source/CacheTask$Status;->FAILED:Lcom/hunantv/media/source/CacheTask$Status;

    invoke-virtual {v1, p1}, Lcom/hunantv/media/source/CacheTask;->setCurrentStatus(Lcom/hunantv/media/source/CacheTask$Status;)Lcom/hunantv/media/source/CacheTask;

    invoke-virtual {p0, v1}, Lcom/hunantv/media/source/ImgoCache;->callOnFailed(Lcom/hunantv/media/source/CacheTask;)V

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "notifyTaskError FAILED OUT"

    invoke-static {p1, v2}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p1

    const-string v2, "notifyTaskError FINISH IN"

    invoke-static {p1, v2}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hunantv/media/source/ImgoCache;->callOnFinish(Lcom/hunantv/media/source/CacheTask;)V

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "notifyTaskError FINISH OUT"

    invoke-static {p1, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "notifyTaskError out"

    invoke-static {p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyTaskResult(ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyTaskResult"

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyTaskResult in"

    invoke-static {v1, v2}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->taskid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hunantv/media/source/ImgoCache;->isRunningTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    invoke-virtual {p0, v1, p1, p2}, Lcom/hunantv/media/source/ImgoCache;->onTaskResult(Lcom/hunantv/media/source/CacheTask;ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "notifyTaskResult out"

    invoke-static {p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public TAG()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImgoCache["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public cache(Lcom/hunantv/media/source/CacheTask;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/source/ImgoCache;->cache(Lcom/hunantv/media/source/CacheTask;Z)V

    return-void
.end method

.method public cache(Lcom/hunantv/media/source/CacheTask;Z)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/hunantv/media/source/ImgoCache;->mManagerAddress:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getVid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/hunantv/media/source/ImgoCache;->isRunningTask(Lcom/hunantv/media/source/CacheTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache in vid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",streamid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getStreamId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",getWriteM3u8:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getWriteM3u8()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hunantv/media/source/ImgoCache;->startCache(Lcom/hunantv/media/source/CacheTask;)V

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/source/ImgoCache;->callOnStart(Lcom/hunantv/media/source/CacheTask;)V

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache out force:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public callOnFailed(Lcom/hunantv/media/source/CacheTask;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoCache;->mTaskCallback:Lcom/hunantv/media/source/IImgoCache$TaskCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/source/IImgoCache$TaskCallback;->onFailed(Lcom/hunantv/media/source/CacheTask;)V

    :cond_0
    return-void
.end method

.method public callOnFinish(Lcom/hunantv/media/source/CacheTask;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoCache;->mTaskCallback:Lcom/hunantv/media/source/IImgoCache$TaskCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/source/IImgoCache$TaskCallback;->onFinish(Lcom/hunantv/media/source/CacheTask;)V

    :cond_0
    return-void
.end method

.method public callOnStart(Lcom/hunantv/media/source/CacheTask;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoCache;->mTaskCallback:Lcom/hunantv/media/source/IImgoCache$TaskCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/source/IImgoCache$TaskCallback;->onStart(Lcom/hunantv/media/source/CacheTask;)V

    :cond_0
    return-void
.end method

.method public callOnSuccess(Lcom/hunantv/media/source/CacheTask;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoCache;->mTaskCallback:Lcom/hunantv/media/source/IImgoCache$TaskCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/source/IImgoCache$TaskCallback;->onSuccess(Lcom/hunantv/media/source/CacheTask;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/source/ImgoCache;->cancel(Lcom/hunantv/media/source/CacheTask;)V

    return-void
.end method

.method public cancel(Lcom/hunantv/media/source/CacheTask;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/hunantv/media/source/ImgoCache;->mManagerAddress:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel in vid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",streamid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getStreamId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/hunantv/media/source/CacheTask$Status;->NONE:Lcom/hunantv/media/source/CacheTask$Status;

    invoke-virtual {p1, v1}, Lcom/hunantv/media/source/CacheTask;->setCurrentStatus(Lcom/hunantv/media/source/CacheTask$Status;)Lcom/hunantv/media/source/CacheTask;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/hunantv/media/source/CacheTask;->setTempPath(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;

    iget-wide v2, p0, Lcom/hunantv/media/source/ImgoCache;->mManagerAddress:J

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getTaskID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->cancelCache(JLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/source/ImgoCache;->isRunningTask(Lcom/hunantv/media/source/CacheTask;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v1, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cancel out"

    invoke-static {p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public create()V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->release()V

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create in"

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mCachePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoCache;->mInitParams:Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;

    invoke-static {v0, v1}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->newCacheManager(Ljava/lang/String;Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hunantv/media/source/ImgoCache;->mManagerAddress:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->setMaxTask(JI)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mCallback:Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

    invoke-static {v0}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->subscribeCallback(Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;)V

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "create out"

    invoke-static {p0, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getExtraInfo()Lcom/hunantv/media/source/IImgoCache$ExtraInfo;
    .locals 3

    new-instance v0, Lcom/hunantv/media/source/IImgoCache$ExtraInfo;

    iget-wide v1, p0, Lcom/hunantv/media/source/ImgoCache;->mManagerAddress:J

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/source/IImgoCache$ExtraInfo;-><init>(J)V

    return-object v0
.end method

.method public getRunningTask()Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    return-object p0
.end method

.method public onTaskResult(Lcom/hunantv/media/source/CacheTask;ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult findTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mRunningCacheTask:Lcom/hunantv/media/source/CacheTask;

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/hunantv/media/source/ImgoCache;->updateParamsOnResult(Lcom/hunantv/media/source/CacheTask;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onResult OK IN"

    invoke-static {p2, p3}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/hunantv/media/source/CacheTask$Status;->SUCCESS:Lcom/hunantv/media/source/CacheTask$Status;

    invoke-virtual {p1, p2}, Lcom/hunantv/media/source/CacheTask;->setCurrentStatus(Lcom/hunantv/media/source/CacheTask$Status;)Lcom/hunantv/media/source/CacheTask;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/source/ImgoCache;->callOnSuccess(Lcom/hunantv/media/source/CacheTask;)V

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onResult OK OUT"

    :goto_0
    invoke-static {p2, p3}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onResult FAILED IN"

    invoke-static {p2, p3}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/source/CacheTask;->setTempPath(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;

    sget-object p2, Lcom/hunantv/media/source/CacheTask$Status;->FAILED:Lcom/hunantv/media/source/CacheTask$Status;

    invoke-virtual {p1, p2}, Lcom/hunantv/media/source/CacheTask;->setCurrentStatus(Lcom/hunantv/media/source/CacheTask$Status;)Lcom/hunantv/media/source/CacheTask;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/source/ImgoCache;->callOnFailed(Lcom/hunantv/media/source/CacheTask;)V

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onResult FAILED OUT"

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onResult FINISH IN"

    invoke-static {p2, p3}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hunantv/media/source/ImgoCache;->callOnFinish(Lcom/hunantv/media/source/CacheTask;)V

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onResult FINISH OUT"

    invoke-static {p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 4

    iget-wide v0, p0, Lcom/hunantv/media/source/ImgoCache;->mManagerAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release in"

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache;->mCallback:Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

    invoke-static {v0}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->removeCallback(Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;)V

    iget-wide v0, p0, Lcom/hunantv/media/source/ImgoCache;->mManagerAddress:J

    invoke-static {v0, v1}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->freeCacheManager(J)V

    iput-wide v2, p0, Lcom/hunantv/media/source/ImgoCache;->mManagerAddress:J

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "release out"

    invoke-static {p0, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTaskCallback(Lcom/hunantv/media/source/IImgoCache$TaskCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoCache;->mTaskCallback:Lcom/hunantv/media/source/IImgoCache$TaskCallback;

    return-void
.end method

.method public startCache(Lcom/hunantv/media/source/CacheTask;)V
    .locals 10

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCache vid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",StreamId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getStreamId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/hunantv/media/source/ImgoCache;->mManagerAddress:J

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getStreamId()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/hunantv/media/source/CacheTask;->getWriteM3u8()I

    move-result v9

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->startCache(JLjava/lang/String;Ljava/lang/String;IIII)Lcom/hunantv/media/source/jni/ImgoSourceNative$CbStartParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/source/ImgoCache;->updateParamsOnStart(Lcom/hunantv/media/source/CacheTask;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbStartParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "startCache end"

    invoke-static {p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateParamsOnResult(Lcom/hunantv/media/source/CacheTask;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
    .locals 0
    .param p1    # Lcom/hunantv/media/source/CacheTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->fullpath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/source/CacheTask;->setFullPath(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;

    iget-object p0, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->file_name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/source/CacheTask;->setFileName(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;

    iget p0, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->type:I

    invoke-virtual {p1, p0}, Lcom/hunantv/media/source/CacheTask;->setType(I)Lcom/hunantv/media/source/CacheTask;

    iget-object p0, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->ts_names:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/source/CacheTask;->setTsNames([Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;

    return-void
.end method

.method public updateParamsOnStart(Lcom/hunantv/media/source/CacheTask;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbStartParams;)V
    .locals 0
    .param p1    # Lcom/hunantv/media/source/CacheTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hunantv/media/source/jni/ImgoSourceNative$CbStartParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbStartParams;->filepath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/source/CacheTask;->setTempPath(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;

    sget-object p0, Lcom/hunantv/media/source/CacheTask$Status;->START:Lcom/hunantv/media/source/CacheTask$Status;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/source/CacheTask;->setCurrentStatus(Lcom/hunantv/media/source/CacheTask$Status;)Lcom/hunantv/media/source/CacheTask;

    iget-object p0, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbStartParams;->taskid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/source/CacheTask;->setTaskID(Ljava/lang/String;)V

    return-void
.end method
