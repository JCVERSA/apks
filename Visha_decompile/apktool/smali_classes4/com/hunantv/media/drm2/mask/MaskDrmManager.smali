.class public Lcom/hunantv/media/drm2/mask/MaskDrmManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/IDrmManager;


# static fields
.field public static final VERSION:Ljava/lang/String; = "MASK_1.0"

.field private static sInstance:Lcom/hunantv/media/drm/IDrmManager;


# instance fields
.field private volatile mErrorCode:Ljava/lang/String;

.field private volatile mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

.field private volatile mStatus:I

.field private mSyncLocker:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mStatus:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mErrorCode:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mSyncLocker:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hunantv/media/drm/IDrmManager;
    .locals 2

    const-class v0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hunantv/media/drm2/mask/MaskDrmManager;

    invoke-direct {v1}, Lcom/hunantv/media/drm2/mask/MaskDrmManager;-><init>()V

    sput-object v1, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->sInstance:Lcom/hunantv/media/drm/IDrmManager;
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


# virtual methods
.method public genDrmSession(Lcom/hunantv/media/drm/IDrmManager$SessionConfig;)Lcom/hunantv/media/drm/IDrmSession;
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mSyncLocker:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/hunantv/media/drm2/mask/MaskDrmSession;

    invoke-direct {v0, p1}, Lcom/hunantv/media/drm2/mask/MaskDrmSession;-><init>(Lcom/hunantv/media/drm/IDrmManager$SessionConfig;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentStatus()I
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mSyncLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mStatus:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mSyncLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mErrorCode:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "MASK_1.0"

    return-object p0
.end method

.method public init(Landroid/app/Application;Lcom/hunantv/media/drm/IDrmManager$InitConfig;)I
    .locals 4

    iget-object p2, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mSyncLocker:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0}, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->isInited()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->isIniting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->syncTryLoadMgtvDRMLib(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/drm/LightPlayDrmManager;->init()Z

    move-result p1

    const-string v0, "MaskDrmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LightPlayDrmManager init suc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string v0, "MaskDrmManager"

    const-string v2, "syncTryLoadMgtvDRMLib failed"

    goto :goto_0

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "MaskDrmManager"

    const-string v0, "MaskDrmManager init failed"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    const-string p1, "400275"

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Lcom/hunantv/media/drm/IDrmManager$OnInitListener;->onInitError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit p2

    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p1, 0x2

    iput p1, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mStatus:I

    iget-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    invoke-interface {p0}, Lcom/hunantv/media/drm/IDrmManager$OnInitListener;->onInitSuccess()V

    :cond_4
    monitor-exit p2

    return v1

    :cond_5
    :goto_2
    monitor-exit p2

    return v1

    :goto_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isInited()Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mSyncLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mStatus:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isIniting()Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mSyncLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mStatus:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()I
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mSyncLocker:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mgtv/drm/LightPlayDrmManager;->getInstance()Lcom/mgtv/drm/LightPlayDrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/drm/LightPlayDrmManager;->release()V

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnInitListener(Lcom/hunantv/media/drm/IDrmManager$OnInitListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mSyncLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/hunantv/media/drm2/mask/MaskDrmManager;->mOnInitListener:Lcom/hunantv/media/drm/IDrmManager$OnInitListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
