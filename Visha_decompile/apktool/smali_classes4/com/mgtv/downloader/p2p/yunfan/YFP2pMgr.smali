.class public Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/downloader/p2p/IP2pMgr;


# static fields
.field public static final CALLBACK_ID_CACHESTORAGE_NOSPACE:I = 0x2

.field public static final CALLBACK_ID_FINISH_COPY_DOWNLOAD:I = 0x1

.field public static final CALLBACK_ID_FINISH_DOWNLOAD:I = 0x0

.field public static final CALLBACK_ID_URL_OUTOFDATA:I = 0x3

.field public static final RESULT_ID_COPY_FINISHED:I = 0x0

.field public static final RESULT_ID_CREATE_TARGET_FAILED:I = 0x1

.field public static final RESULT_ID_DOWNPATH_CANNOT_WRITE:I = 0x4

.field public static final RESULT_ID_DOWNPATH_NOSPACE:I = 0x3

.field public static final RESULT_ID_READDATA_FAILED:I = 0x2

.field public static final RESULT_ID_WRITE_FAILED:I = 0x5

.field public static final STATUS_ERROR:I = -0x1

.field public static final STATUS_OK:I

.field private static mInstance:Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;

.field private static mNotifyListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final TOKEN:Ljava/lang/String;

.field private mCachePath:Ljava/lang/String;

.field private mConfigPath:Ljava/lang/String;

.field private mHasInit:Z

.field private mHttpport:I

.field private mMaxusespace:I

.field private mNotifyListener:Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mNotifyListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "p2p"

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->TAG:Ljava/lang/String;

    const-string v0, "62fe1121813abe476836cc8be57c7449d168e208"

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->TOKEN:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mConfigPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mCachePath:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHttpport:I

    iput v1, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mMaxusespace:I

    iput-boolean v1, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHasInit:Z

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mNotifyListener:Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;

    return-void
.end method

.method private checkResOk(I)Z
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getInstance()Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;
    .locals 1

    sget-object v0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->syncInit()V

    :cond_0
    sget-object v0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;

    return-object v0
.end method

.method private getLocalUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "/"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    invoke-static {p1}, Lcom/mgtv/downloader/p2p/yunfan/YFUrlUtils;->notSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "yfhttpagent"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/mgtv/downloader/p2p/yunfan/YFUrlUtils;->isM3u8(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/playlist.m3u8"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x4000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "1.0"

    return-object p0
.end method

.method private onNotify(IILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mNotifyListener:Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;->onNotify(IILjava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mNotifyListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;->onNotify(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resetData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mConfigPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mCachePath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHttpport:I

    iput v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mMaxusespace:I

    return-void
.end method

.method private static declared-synchronized syncInit()V
    .locals 2

    const-class v0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;

    invoke-direct {v1}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;-><init>()V

    sput-object v1, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public CleanCache()V
    .locals 0

    invoke-static {}, Lcom/yunfan/net/Yfnet;->CleanCache()I

    return-void
.end method

.method public SetVideoDuration(Lcom/mgtv/downloader/p2p/ImgoP2pTask;I)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStatus()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/yunfan/net/Yfnet;->SetVideoDuration(Ljava/lang/String;I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public addNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V
    .locals 0

    if-eqz p1, :cond_1

    sget-object p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mNotifyListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mNotifyListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public createTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I
    .locals 12

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mOrgUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mgtv/downloader/p2p/yunfan/YFUrlUtils;->notSupport(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStatus()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v1, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mOrgUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mIsOtherCdn:Ljava/lang/String;

    iget-object v4, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mVideoId:Ljava/lang/String;

    iget-object v5, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mDefinition:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/mgtv/downloader/p2p/yunfan/YFUrlUtils;->getKeyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mKeyUrl:Ljava/lang/String;

    iget-object v6, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mOrgUrl:Ljava/lang/String;

    iget-object v8, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mReferer:Ljava/lang/String;

    iget v9, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->dnsPro:I

    iget-object v10, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->attachedUrlPara:Ljava/lang/String;

    iget-object v11, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHash:[B

    invoke-static/range {v6 .. v11}, Lcom/yunfan/net/Yfnet;->CreateTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOrgUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mOrgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "p2p"

    invoke-static {v4, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKeyUrl:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mKeyUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHash:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHash:[B

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mReferer:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mReferer:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->checkResOk(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHash:[B

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->setStatus(I)V

    new-instance v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mHash:[B

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v3}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->setStrHash(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CreateTask hash:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v2, v0}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->onNotify(IILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CreateTask CALLBACK_ID_FINISH_DOWNLOAD hash:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createTask failed. res"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public deleteTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStatus()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mOrgUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/yunfan/YFUrlUtils;->notSupport(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yunfan/net/Yfnet;->DeleteTask(Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->setStatus(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->setStrHash(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableP2pDownload(Z)V
    .locals 0

    invoke-static {p1}, Lcom/yunfan/net/Yfnet;->EnableP2pDownload(Z)I

    return-void
.end method

.method public enableP2pUpload(Z)V
    .locals 0

    invoke-static {p1}, Lcom/yunfan/net/Yfnet;->EnableUpload(Z)I

    return-void
.end method

.method public getHttpport()I
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHttpport:I

    return p0
.end method

.method public getProxyUrl(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mOrgUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHttpport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p1

    const-string v2, "127.0.0.1"

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->getLocalUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTaskInfo(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)Lcom/mgtv/downloader/p2p/ImgoTaskInfo;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStatus()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mOrgUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/yunfan/YFUrlUtils;->notSupport(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;

    invoke-direct {p0}, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;-><init>()V

    new-instance v0, Lcom/yunfan/net/TaskInfo;

    invoke-direct {v0}, Lcom/yunfan/net/TaskInfo;-><init>()V

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/yunfan/net/Yfnet;->QueryTaskInfo(Ljava/lang/String;Lcom/yunfan/net/TaskInfo;)I

    iget-wide v1, v0, Lcom/yunfan/net/TaskInfo;->downloadlen:J

    iput-wide v1, p0, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;->downloadlen:J

    iget p1, v0, Lcom/yunfan/net/TaskInfo;->downloadspeed:I

    iput p1, p0, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;->downloadspeed:I

    iget-wide v1, v0, Lcom/yunfan/net/TaskInfo;->filelen:J

    iput-wide v1, p0, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;->filelen:J

    iget-object p1, v0, Lcom/yunfan/net/TaskInfo;->filepath:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;->filepath:Ljava/lang/String;

    iget-object p1, v0, Lcom/yunfan/net/TaskInfo;->hash:[B

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;->hash:[B

    iget-byte p1, v0, Lcom/yunfan/net/TaskInfo;->status:B

    iput-byte p1, p0, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;->status:B

    iget p1, v0, Lcom/yunfan/net/TaskInfo;->uploadspeed:I

    iput p1, p0, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;->uploadspeed:I

    iget-object p1, v0, Lcom/yunfan/net/TaskInfo;->cdnIp:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;->cdnIp:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasInit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHasInit:Z

    return p0
.end method

.method public declared-synchronized init(Lcom/mgtv/downloader/p2p/IP2pMgr$Config;Landroid/content/Context;)I
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHasInit:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->unInit()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/mgtv/downloader/p2p/IP2pMgr$Config;->mConfigPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mConfigPath:Ljava/lang/String;

    iget-object v0, p1, Lcom/mgtv/downloader/p2p/IP2pMgr$Config;->mCachePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mCachePath:Ljava/lang/String;

    iget v0, p1, Lcom/mgtv/downloader/p2p/IP2pMgr$Config;->mHttpport:I

    iput v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHttpport:I

    iget p1, p1, Lcom/mgtv/downloader/p2p/IP2pMgr$Config;->mMaxusespace:I

    iput p1, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mMaxusespace:I

    invoke-static {p2}, Lcom/yunfan/net/Yfnet;->SetAppContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mConfigPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mCachePath:Ljava/lang/String;

    iget v1, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHttpport:I

    iget v2, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mMaxusespace:I

    const-string v3, "62fe1121813abe476836cc8be57c7449d168e208"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/yunfan/net/Yfnet;->Init(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/yunfan/net/Yfnet;->SetAppVersion(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->checkResOk(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "onNotify"

    const-string v0, "(IILjava/lang/String;)V"

    invoke-static {p0, p2, v0}, Lcom/yunfan/net/Yfnet;->SetCallbackFunction(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHasInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isTaskExist(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x5

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yunfan/net/Yfnet;->YfIsTaskExist(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public pauseTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStatus()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mOrgUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/yunfan/YFUrlUtils;->notSupport(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yunfan/net/Yfnet;->PauseTask(Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->setStatus(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public readData(Lcom/mgtv/downloader/p2p/ImgoP2pTask;Ljava/lang/String;[BJJ[J[I)J
    .locals 11

    if-nez p1, :cond_0

    const-wide/16 v0, -0x5

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v2 .. v10}, Lcom/yunfan/net/Yfnet;->YfReadData(Ljava/lang/String;Ljava/lang/String;[BJJ[J[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mNotifyListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public runTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I
    .locals 2

    const/4 p0, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStatus()I

    move-result v0

    if-eq v0, p0, :cond_2

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->mOrgUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/yunfan/YFUrlUtils;->notSupport(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yunfan/net/Yfnet;->RunTask(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v0}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->setStatus(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunTask hash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "p2p"

    invoke-static {v0, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return p0
.end method

.method public setApkType(I)I
    .locals 0

    invoke-static {p1}, Lcom/yunfan/net/Yfnet;->SetDeviceType(I)I

    move-result p0

    return p0
.end method

.method public setNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mNotifyListener:Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;

    return-void
.end method

.method public setPlaySpeed(I)V
    .locals 0

    invoke-static {p1}, Lcom/yunfan/net/Yfnet;->SetPlaySpeed(I)I

    return-void
.end method

.method public setPlayingTimepoint(Lcom/mgtv/downloader/p2p/ImgoP2pTask;IZ)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStatus()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/yunfan/net/Yfnet;->SetPlayingTimepoint(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTaskPlayingStatus(Lcom/mgtv/downloader/p2p/ImgoP2pTask;Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStatus()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/ImgoP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/yunfan/net/Yfnet;->SetPlayingStatus(Ljava/lang/String;Z)I

    :cond_1
    :goto_0
    return-void
.end method

.method public startLog()I
    .locals 0

    invoke-static {}, Lcom/yunfan/net/Yfnet;->StartLog()I

    move-result p0

    return p0
.end method

.method public stopLog()I
    .locals 0

    invoke-static {}, Lcom/yunfan/net/Yfnet;->StopLog()I

    move-result p0

    return p0
.end method

.method public declared-synchronized unInit()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->resetData()V

    iget-boolean v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHasInit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yunfan/net/Yfnet;->Clear()I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->mHasInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
