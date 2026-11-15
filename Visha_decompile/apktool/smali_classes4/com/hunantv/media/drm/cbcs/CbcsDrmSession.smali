.class public Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;
.super Lcom/hunantv/media/drm/MgtvDrmSession;
.source "SourceFile"


# instance fields
.field coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

.field private dpt:Ljava/lang/String;

.field private drmType:I

.field private lic:I

.field private wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/drm/IDrmManager$SessionConfig;)V
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/drm/MgtvDrmSession;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->lic:I

    const-string v0, "n"

    iput-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->dpt:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->drmType:I

    iput-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mSessionConfig:Lcom/hunantv/media/drm/IDrmManager$SessionConfig;

    return-void
.end method

.method public static synthetic access$002(Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->sf:I

    return p1
.end method

.method public static synthetic access$102(Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->lic:I

    return p1
.end method

.method public static synthetic access$202(Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->dpt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->sf:I

    return p1
.end method

.method public static synthetic access$402(Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->ec_msg:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public bindWasabiDrmManager(Lcom/hunantv/media/drm/IDrmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    return-void
.end method

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
    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

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

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->close()I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCurrentStatus()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mStatus:I

    return p0
.end method

.method public getDrmType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->drmType:I

    return p0
.end method

.method public getDrmdi()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/hunantv/media/report/a/b;

    const-string v1, "__"

    invoke-direct {v0, v1}, Lcom/hunantv/media/report/a/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->lic:I

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

    iget-object v2, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->dpt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/report/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg"

    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->ec_msg:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/media/report/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hunantv/media/report/a/b;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDrmt()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0xa

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getSelectedDrmInfo()Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v2, v7

    goto :goto_1

    :pswitch_1
    const-string v2, "6"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :pswitch_2
    const-string v2, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :pswitch_3
    const-string v2, "4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :pswitch_4
    const-string v2, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :pswitch_5
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_6
    iput v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->drmType:I

    goto :goto_2

    :pswitch_7
    iput v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->drmType:I

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getMultiDrmOrder()[Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v1, v0

    if-lez v1, :cond_8

    aget-object v0, v0, v2

    sget-object v1, Lcom/hunantv/media/drm/MgtvDrmConstans;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :pswitch_8
    iput v4, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->drmType:I

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/hunantv/media/drm/MgtvDrmConstans;->MARLIN_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :pswitch_9
    iput v5, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->drmType:I

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :pswitch_a
    iput v6, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->drmType:I

    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->drmType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_a
    .end packed-switch
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

.method public getFirm()I
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getSelectedDrmInfo()Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getSelectedDrmInfo()Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmFirm:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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
    invoke-static {}, Lcom/hunantv/media/drm/cbcs/CbcsDrmStrategy;->notifyError()V

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
    invoke-static {}, Lcom/hunantv/media/drm/cbcs/CbcsDrmStrategy;->notifySuccess()V

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

    new-instance v3, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    iget-object v4, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mSessionConfig:Lcom/hunantv/media/drm/IDrmManager$SessionConfig;

    iget-object v4, v4, Lcom/hunantv/media/drm/IDrmManager$SessionConfig;->drmInfoList:Ljava/util/List;

    new-instance v5, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession$1;

    invoke-direct {v5, p0, v1, v2}, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession$1;-><init>(Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;J)V

    invoke-direct {v3, p1, v4, v5}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;-><init>(Ljava/util/Map;Ljava/util/List;Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession$OnDoLicenseListener;)V

    iput-object v3, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    const/4 p1, 0x2

    iput p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->sf:I

    iget-object p1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v3, p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->bindMediaPlayer(Lcom/hunantv/media/player/h;)V

    iget-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    iget-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->wasabiDrmManager:Lcom/hunantv/media/drm/IDrmManager;

    invoke-virtual {p1, v1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->bindWasabiDrmManager(Lcom/hunantv/media/drm/IDrmManager;)V

    iget-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    invoke-virtual {p1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->autoSelectDrmSolution()V

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->doLicense()V

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

    iput-object p1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->dpt:Ljava/lang/String;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->publishProvisionError(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "error config null"

    const-string v2, "3"

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->getFirm()I

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/hunantv/media/drm/MgtvDrmSession;->sendDrmExReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

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
    iget-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mPlayer:Lcom/hunantv/media/player/h;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/hunantv/media/drm/MgtvDrmConstans;->MARLIN_UUID:Ljava/util/UUID;

    invoke-virtual {v1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getSelectedUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mPlayer:Lcom/hunantv/media/player/h;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/hunantv/media/player/h;->e(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    invoke-virtual {v1}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getSelectedDrmInfo()Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "6"

    iget-object v2, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    invoke-virtual {v2}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getSelectedDrmInfo()Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;->drmSolution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mPlayer:Lcom/hunantv/media/player/h;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/hunantv/media/player/h;->e(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/hunantv/media/drm/MgtvDrmSession;->mPlayer:Lcom/hunantv/media/player/h;

    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v3, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    invoke-virtual {v3}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getSelectedUUID()Ljava/util/UUID;

    move-result-object v3

    iget-object p0, p0, Lcom/hunantv/media/drm/cbcs/CbcsDrmSession;->coreSession:Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/cbcs/CbcsCoreDrmSession;->getDrmSessionId()[B

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/h;->a(Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
