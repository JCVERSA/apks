.class public Lcom/mgtv/drm/LightPlayDrmManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/mgtv/drm/LightPlayDrmManager;


# instance fields
.field private inited:Z

.field private libLoaded:Z

.field private locker:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->locker:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mgtv/drm/LightPlayDrmManager;
    .locals 2

    const-class v0, Lcom/mgtv/drm/LightPlayDrmManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/drm/LightPlayDrmManager;->sInstance:Lcom/mgtv/drm/LightPlayDrmManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/drm/LightPlayDrmManager;

    invoke-direct {v1}, Lcom/mgtv/drm/LightPlayDrmManager;-><init>()V

    sput-object v1, Lcom/mgtv/drm/LightPlayDrmManager;->sInstance:Lcom/mgtv/drm/LightPlayDrmManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/mgtv/drm/LightPlayDrmManager;->sInstance:Lcom/mgtv/drm/LightPlayDrmManager;
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
.method public closeSession(Lcom/mgtv/drm/ILightPlayDrmSession;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->locker:Ljava/lang/Object;

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/mgtv/drm/ILightPlayDrmSession;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getProvisionRequest()[B
    .locals 1

    iget-object v0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/drm/jni/LightPlayNative;->getProvisionRequest()[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/drm/jni/LightPlayNative;->getVersion()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVersionTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/drm/jni/LightPlayNative;->getVersionTime()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;

    invoke-direct {v0}, Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;->setAutoLibLoad(Z)Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/drm/LightPlayDrmManager;->init(Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;)Z

    move-result p0

    return p0
.end method

.method public init(Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    :try_start_2
    iget-boolean p1, p1, Lcom/mgtv/drm/LightPlayDrmManager$InitConfig;->autoLibLoad:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->getInstance()Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/drm/loader/LightPlayDrmLibLoader;->loadLibs()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mgtv/drm/LightPlayDrmManager;->libLoaded:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/mgtv/drm/jni/LightPlayNative;->initialize()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/mgtv/drm/jni/LightPlayNative;->initialize()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-boolean p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z

    monitor-exit v0

    return p0

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public isInited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z

    return p0
.end method

.method public isProvisioned()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/drm/jni/LightPlayNative;->isProvisioned()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public openSession()Lcom/mgtv/drm/ILightPlayDrmSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/mgtv/drm/LightPlayDrmSessionImpl;

    invoke-direct {p0}, Lcom/mgtv/drm/LightPlayDrmSessionImpl;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public provideProvisionResponse([B)I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/mgtv/drm/jni/LightPlayNative;->provideProvisionResponse([B)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->locker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/mgtv/drm/LightPlayDrmManager;->inited:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/drm/jni/LightPlayNative;->terminate()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
