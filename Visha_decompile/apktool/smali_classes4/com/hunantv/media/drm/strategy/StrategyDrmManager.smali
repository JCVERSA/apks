.class public Lcom/hunantv/media/drm/strategy/StrategyDrmManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/IDrmManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "StrategyDrmManager"

.field private static sInstance:Lcom/hunantv/media/drm/IDrmManager;


# instance fields
.field private application:Landroid/app/Application;

.field private cbcsDrmManager:Lcom/hunantv/media/drm/IDrmManager;

.field private cencDrmManager:Lcom/hunantv/media/drm/IDrmManager;

.field private currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

.field private initConfig:Lcom/hunantv/media/drm/IDrmManager$InitConfig;

.field private volatile mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

.field private wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hunantv/media/drm/cenc/CencDrmManager;->getInstance()Lcom/hunantv/media/drm/IDrmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cencDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-static {}, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->getInstance()Lcom/hunantv/media/drm/IDrmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cbcsDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    instance-of v1, v0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;

    iget-object v1, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/drm/cbcs/CbcsDrmManager;->bindWasabiDrmManager(Lcom/hunantv/media/drm/IDrmManager;)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cbcsDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    iput-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/drm/strategy/StrategyDrmManager;)Lcom/hunantv/media/drm/IDrmManager$OnInitListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/hunantv/media/drm/IDrmManager;
    .locals 2

    const-class v0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;

    invoke-direct {v1}, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;-><init>()V

    sput-object v1, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setCurrentInitListener()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hunantv/media/drm/strategy/StrategyDrmManager$1;

    invoke-direct {v1, p0}, Lcom/hunantv/media/drm/strategy/StrategyDrmManager$1;-><init>(Lcom/hunantv/media/drm/strategy/StrategyDrmManager;)V

    invoke-interface {v0, v1}, Lcom/hunantv/media/drm/IDrmManager;->setOnInitListener(Lcom/hunantv/media/drm/IDrmManager$OnInitListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public genDrmSession(Lcom/hunantv/media/drm/IDrmManager$SessionConfig;)Lcom/hunantv/media/drm/IDrmSession;
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "6"

    iget-object v1, p1, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cbcsDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    :goto_0
    iput-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_0

    const-string v0, "4"

    iget-object v1, p1, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "5"

    iget-object v1, p1, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p1, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cencDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genDrmSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StrategyDrmManager"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genDrmSession currentDrmManager "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->setCurrentInitListener()V

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-interface {p0, p1}, Lcom/hunantv/media/drm/IDrmManager;->genDrmSession(Lcom/hunantv/media/drm/IDrmManager$SessionConfig;)Lcom/hunantv/media/drm/IDrmSession;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentStatus()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-interface {p0}, Lcom/hunantv/media/drm/IDrmManager;->getCurrentStatus()I

    move-result p0

    return p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-interface {p0}, Lcom/hunantv/media/drm/IDrmManager;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-interface {p0}, Lcom/hunantv/media/drm/IDrmManager;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/app/Application;Lcom/hunantv/media/drm/IDrmManager$InitConfig;)I
    .locals 2

    iput-object p1, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->application:Landroid/app/Application;

    iput-object p2, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->initConfig:Lcom/hunantv/media/drm/IDrmManager$InitConfig;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPreferDrmType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/hunantv/media/drm/cbcs/CbcsDrmStrategy;->isCbcsSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cbcsDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    :goto_0
    iput-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->isCencSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPreferDrmType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPreferDrmType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cencDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init currentDrmManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StrategyDrmManager"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->setCurrentInitListener()V

    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cencDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-interface {v0, p1, p2}, Lcom/hunantv/media/drm/IDrmManager;->init(Landroid/app/Application;Lcom/hunantv/media/drm/IDrmManager$InitConfig;)I

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cbcsDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/drm/IDrmManager;->init(Landroid/app/Application;Lcom/hunantv/media/drm/IDrmManager$InitConfig;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isInited()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/media/drm/IDrmManager;->isInited()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIniting()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->currentDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-interface {p0}, Lcom/hunantv/media/drm/IDrmManager;->isIniting()Z

    move-result p0

    return p0
.end method

.method public release()I
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cbcsDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-interface {v0}, Lcom/hunantv/media/drm/IDrmManager;->release()I

    iget-object p0, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->cencDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-interface {p0}, Lcom/hunantv/media/drm/IDrmManager;->release()I

    const/4 p0, 0x0

    return p0
.end method

.method public setOnInitListener(Lcom/hunantv/media/drm/IDrmManager$OnInitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/strategy/StrategyDrmManager;->mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    return-void
.end method
