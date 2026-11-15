.class public Lcom/hunantv/media/source/ImgoM3u8Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0xa

.field private static final MAX_RUNNING_SIZE:I = 0x1

.field private static final NULL:I = 0x0

.field private static final REQUEST_TIMEOUT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "ImgoM3u8Cache"

.field private static final USER_AGENT:Ljava/lang/String; = "ImgoDataSource"


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mCallback:Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

.field private mInitParams:Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;

.field private mManagerAddress:J

.field private mPrepareTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/hunantv/media/source/M3u8CacheTask;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/media/source/M3u8CacheTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskCallback:Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hunantv/media/source/ImgoM3u8Cache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mPrepareTasks:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mRunningTasks:Ljava/util/List;

    new-instance v0, Lcom/hunantv/media/source/ImgoM3u8Cache$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/source/ImgoM3u8Cache$1;-><init>(Lcom/hunantv/media/source/ImgoM3u8Cache;)V

    iput-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mCallback:Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

    invoke-direct {p0, p1}, Lcom/hunantv/media/source/ImgoM3u8Cache;->loadLibs(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iput-object p2, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mCachePath:Ljava/lang/String;

    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mInitParams:Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;

    invoke-direct {p1}, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mInitParams:Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;

    const-string p2, "ImgoDataSource"

    iput-object p2, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;->useragent:Ljava/lang/String;

    const/16 p2, 0xa

    iput p2, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;->connect_timeout_ms:I

    const/16 p2, 0x1e

    iput p2, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;->request_timeout_ms:I

    :goto_0
    invoke-direct {p0}, Lcom/hunantv/media/source/ImgoM3u8Cache;->create()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/source/ImgoM3u8Cache;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mRunningTasks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/hunantv/media/source/ImgoM3u8Cache;)Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mTaskCallback:Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/source/ImgoM3u8Cache;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mPrepareTasks:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/hunantv/media/source/ImgoM3u8Cache;Lcom/hunantv/media/source/M3u8CacheTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/source/ImgoM3u8Cache;->moveToRunningTasks(Lcom/hunantv/media/source/M3u8CacheTask;)V

    return-void
.end method

.method private create()V
    .locals 4

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoM3u8Cache;->release()V

    const-string v0, "create in"

    const-string v1, "ImgoM3u8Cache"

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mCachePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mInitParams:Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;

    invoke-static {v0, v2}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->newCacheManager(Ljava/lang/String;Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mManagerAddress:J

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mCallback:Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

    invoke-static {p0}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->subscribeCallback(Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;)V

    const-string p0, "create out"

    invoke-static {v1, p0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadLibs(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private moveToRunningTasks(Lcom/hunantv/media/source/M3u8CacheTask;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToRunningTasks vid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",StreamId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getStreamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImgoM3u8Cache"

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mManagerAddress:J

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getStreamId()I

    move-result v6

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getTsNum()I

    move-result v8

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->isWriteM3u8()Z

    move-result v9

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->startCache(JLjava/lang/String;Ljava/lang/String;IIII)Lcom/hunantv/media/source/jni/ImgoSourceNative$CbStartParams;

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mRunningTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mTaskCallback:Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;->onStart(Lcom/hunantv/media/source/M3u8CacheTask;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cache(Lcom/hunantv/media/source/M3u8CacheTask;)V
    .locals 6

    const-string v0, "cache in"

    const-string v1, "ImgoM3u8Cache"

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mManagerAddress:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getVid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/UrlUtil;->isM3u8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cache FAILED cause by not m3u8 "

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hunantv/media/source/M3u8CacheTask$Status;->FAILED:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/source/M3u8CacheTask;->setCurrentStatus(Lcom/hunantv/media/source/M3u8CacheTask$Status;)Lcom/hunantv/media/source/M3u8CacheTask;

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mTaskCallback:Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;->onFailed(Lcom/hunantv/media/source/M3u8CacheTask;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache in vid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",streamid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getStreamId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mRunningTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/hunantv/media/source/ImgoM3u8Cache;->moveToRunningTasks(Lcom/hunantv/media/source/M3u8CacheTask;)V

    goto :goto_0

    :cond_3
    const-string v0, "add to mPrepareTasks"

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mPrepareTasks:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string p0, "cache out"

    :goto_1
    invoke-static {v1, p0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_2
    const-string p0, "cache FAILED invalid task"

    goto :goto_1
.end method

.method public cancel(Lcom/hunantv/media/source/M3u8CacheTask;)V
    .locals 4

    iget-wide v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mManagerAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel in vid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",streamid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/source/M3u8CacheTask;->getStreamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImgoM3u8Cache"

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mRunningTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cancel from mRunningTasks"

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mRunningTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mPrepareTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "cancel from mPrepareTasks"

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mPrepareTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-wide p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mManagerAddress:J

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->cancelCache(JLjava/lang/String;)V

    const-string p0, "cancel out"

    invoke-static {v1, p0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isLibsLoaded()Z
    .locals 0

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->isDsLibLoaded()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->isCacheLibLoaded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 6

    iget-wide v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mManagerAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "release in"

    const-string v1, "ImgoM3u8Cache"

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mCallback:Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

    invoke-static {v0}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->removeCallback(Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;)V

    iget-wide v4, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mManagerAddress:J

    invoke-static {v4, v5}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->freeCacheManager(J)V

    iput-wide v2, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mManagerAddress:J

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mPrepareTasks:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mRunningTasks:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    const-string p0, "release out"

    invoke-static {v1, p0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTaskCallback(Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache;->mTaskCallback:Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;

    return-void
.end method
