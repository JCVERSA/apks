.class public Lcom/hunantv/media/drm/cenc/CencDrmSession;
.super Lcom/hunantv/media/drm/MgtvDrmSession;
.source "SourceFile"


# instance fields
.field coreSession:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

.field private dpt:Ljava/lang/String;

.field private drmType:I

.field private lic:I


# direct methods
.method public constructor <init>(Lcom/hunantv/media/drm/IDrmManager$SessionConfig;)V
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/drm/MgtvDrmSession;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->lic:I

    const-string v0, "n"

    iput-object v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->dpt:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->drmType:I

    iput-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mSessionConfig:Lcom/hunantv/media/drm/IDrmManager$SessionConfig;

    return-void
.end method

.method public static synthetic access$002(Lcom/hunantv/media/drm/cenc/CencDrmSession;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->sf:I

    return p1
.end method

.method public static synthetic access$102(Lcom/hunantv/media/drm/cenc/CencDrmSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->dpt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/hunantv/media/drm/cenc/CencDrmSession;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->sf:I

    return p1
.end method

.method public static synthetic access$302(Lcom/hunantv/media/drm/cenc/CencDrmSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->ec_msg:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public close()I
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mListenerLocker:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mRequestClose:Z

    iget-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnProvisionSuccessListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnProvisionErrorListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mOnInfoListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mSessionLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->coreSession:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->coreSession:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public createProxy()Lcom/hunantv/media/drm/IDrmProxy;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentStatus()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mStatus:I

    return p0
.end method

.method public getDrmType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->drmType:I

    return p0
.end method

.method public getDrmdi()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/hunantv/media/report/a/b;

    const-string v1, "__"

    invoke-direct {v0, v1}, Lcom/hunantv/media/report/a/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->lic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "lic"

    invoke-virtual {v0, v3, v1}, Lcom/hunantv/media/report/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->sf:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sf"

    invoke-virtual {v0, v3, v1}, Lcom/hunantv/media/report/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->ec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ec"

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/media/report/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dpt"

    iget-object v2, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->dpt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/report/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg"

    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->ec_msg:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/media/report/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hunantv/media/report/a/b;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDrmt()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->drmType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->ec:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public provision()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public provisionAsync()V
    .locals 0

    return-void
.end method

.method public declared-synchronized publishProvisionError(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->notifyError()V

    invoke-super {p0, p1}, Lcom/hunantv/media/drm/MgtvDrmSession;->publishProvisionError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized publishProvisionSuccess()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/hunantv/media/drm/cenc/CencDrmStrategy;->notifySuccess()V

    invoke-super {p0}, Lcom/hunantv/media/drm/MgtvDrmSession;->publishProvisionSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public realProvision(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mSessionLocker:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->sf:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mSessionConfig:Lcom/hunantv/media/drm/IDrmManager$SessionConfig;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmInfoList:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    iget-object v4, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mSessionConfig:Lcom/hunantv/media/drm/IDrmManager$SessionConfig;

    iget-object v4, v4, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmInfoList:Ljava/util/List;

    new-instance v5, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;

    invoke-direct {v5, p0, v1, v2}, Lcom/hunantv/media/drm/cenc/CencDrmSession$1;-><init>(Lcom/hunantv/media/drm/cenc/CencDrmSession;J)V

    invoke-direct {v3, p1, v4, v5}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;-><init>(Ljava/util/Map;Ljava/util/List;Lcom/hunantv/media/drm/cenc/CencCoreDrmSession$OnDoLicenseListener;)V

    iput-object v3, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->coreSession:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    const/4 p1, 0x2

    iput p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->sf:I

    invoke-virtual {v3}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->doLicense()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->dpt:Ljava/lang/String;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/hunantv/media/drm/cenc/CencDrmSession;->publishProvisionError(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "error config null"

    const-string v2, "3"

    invoke-virtual {p0, p1, v1, v2}, Lcom/hunantv/media/drm/MgtvDrmSession;->sendDrmReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDrmLicensePrepared()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mSessionLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->coreSession:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mPlayer:Lcom/hunantv/media/player/h;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v3, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->coreSession:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    invoke-virtual {v3}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->getSelectedUUID()Ljava/util/UUID;

    move-result-object v3

    iget-object p0, p0, Lcom/hunantv/media/drm/cenc/CencDrmSession;->coreSession:Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cenc/CencCoreDrmSession;->getDrmSessionId()[B

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/h;->a(Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
