.class public Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private adFormat:Ljava/lang/Integer;

.field private adRequestVer:Ljava/lang/Integer;

.field private adSeatType:Ljava/lang/String;

.field private adShowCountLimit:Ljava/lang/Integer;

.field private applicationId:Ljava/lang/String;

.field private carouselCount:Ljava/lang/Integer;

.field private carouselTime:Ljava/lang/Integer;

.field private codeSeatId:Ljava/lang/String;

.field private codeSeatType:Ljava/lang/Integer;

.field private crosslevelComparison:Ljava/lang/Boolean;

.field private volatile currentShowTimes:Ljava/lang/Integer;

.field private date:Ljava/lang/String;

.field private fillTimeoutDuration:Ljava/lang/Integer;

.field private h5AdUrl:Ljava/lang/String;

.field private isAdRequestFail:Z

.field private isDefaultConfig:Ljava/lang/Boolean;

.field private isShowSourceSize:Ljava/lang/Boolean;

.field private transient json:Ljava/lang/String;

.field private lastOfflineAdEnable:Ljava/lang/Boolean;

.field private lastRequestAdTime:J

.field private volatile lastShowAdTime:J

.field private volatile localOfflineAdCacheCount:I

.field private offlineAdCacheCount:Ljava/lang/Integer;

.field private offlineAdEnable:Z

.field private offlineAdRequestCount:Ljava/lang/Integer;

.field private offlineAdRequestTimeInterval:Ljava/lang/Integer;

.field private offlineAdRequestTimeIntervalNoAd:Ljava/lang/Integer;

.field private pictureDelayCloseTime:Ljava/lang/Integer;

.field private priorityH5Ad:Ljava/lang/Boolean;

.field private retentionEndCardRatio:Ljava/lang/Integer;

.field private showInterval:Ljava/lang/Integer;

.field private videoDelayCloseTime:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->pictureDelayCloseTime:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->videoDelayCloseTime:Ljava/lang/Integer;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->retentionEndCardRatio:Ljava/lang/Integer;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adFormat:Ljava/lang/Integer;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getAdFormat()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adFormat:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getAdRequestVer()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adRequestVer:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getAdSeatType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdShowCountLimit()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adShowCountLimit:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->applicationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCarouselCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselCount:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getCarouselTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselTime:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getCodeSeatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodeSeatType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatType:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getCrosslevelComparison()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->crosslevelComparison:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getCurrentShowTimes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->currentShowTimes:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->currentShowTimes:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->date:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "0"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->date:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public getFillTimeoutDuration()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->fillTimeoutDuration:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x1388

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getH5AdUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->h5AdUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->json:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastOfflineAdEnable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastOfflineAdEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getLastRequestAdTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastRequestAdTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastShowAdTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastShowAdTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLocalOfflineAdCacheCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->localOfflineAdCacheCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getOfflineAdCacheCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdCacheCount:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getOfflineAdRequestCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestCount:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getOfflineAdRequestTimeInterval()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getOfflineAdRequestTimeIntervalNoAd()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeIntervalNoAd:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    mul-int/lit16 v0, v0, 0xe10

    .line 12
    .line 13
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getPictureDelayCloseTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->pictureDelayCloseTime:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getRetentionEndCardRatio()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->retentionEndCardRatio:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getShowInterval()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->showInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getShowSourceSize()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isShowSourceSize:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getVideoDelayCloseTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->videoDelayCloseTime:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public isAdRequestFail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDefaultConfig()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isDefaultConfig:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public isOfflineAdEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPriorityH5Ad()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->priorityH5Ad:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public setAdFormat(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adFormat:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setAdRequestFail(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAdRequestVer(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adRequestVer:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public setAdSeatType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdShowCountLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adShowCountLimit:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->applicationId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCarouselCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setCarouselTime(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setCodeSeatId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCodeSeatType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setCrosslevelComparison(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->crosslevelComparison:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrentShowTimes(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->currentShowTimes:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->date:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDefaultConfig(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isDefaultConfig:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setFillTimeoutDuration(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->fillTimeoutDuration:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setH5AdUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->h5AdUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->json:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLastOfflineAdEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastOfflineAdEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setLastRequestAdTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastRequestAdTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastShowAdTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastShowAdTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setLocalOfflineAdCacheCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->localOfflineAdCacheCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdCacheCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdCacheCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdRequestCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdRequestTimeInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdRequestTimeIntervalNoAd(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeIntervalNoAd:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setPriorityH5Ad(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->priorityH5Ad:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setShowInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->showInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setShowSourceSize(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isShowSourceSize:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ConfigCodeSeatDTO{applicationId=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->applicationId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", codeSeatId=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", codeSeatType="

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->codeSeatType:Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", adSeatType=\'"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adSeatType:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ", offlineAdEnable="

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdEnable:Z

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ", offlineAdCacheCount="

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdCacheCount:Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", offlineAdRequestCount="

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestCount:Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ", offlineAdRequestTimeInterval="

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeInterval:Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, ", offlineAdRequestTimeIntervalNoAd="

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->offlineAdRequestTimeIntervalNoAd:Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, ", isAdRequestFail="

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail:Z

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v2, ", adShowCountLimit="

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->adShowCountLimit:Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v2, ", currentShowTimes="

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->currentShowTimes:Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, ", date=\'"

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->date:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", lastRequestAdTime="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastRequestAdTime:J

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", carouselTime="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselTime:Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, ", carouselCount="

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->carouselCount:Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, ", showInterval="

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->showInterval:Ljava/lang/Integer;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ", lastShowAdTime="

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastShowAdTime:J

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", fillTimeoutDuration="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->fillTimeoutDuration:Ljava/lang/Integer;

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, ", localOfflineAdCacheCount="

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->localOfflineAdCacheCount:I

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, ", lastOfflineAdEnable="

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->lastOfflineAdEnable:Ljava/lang/Boolean;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v1, ", crosslevelComparison ="

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->crosslevelComparison:Ljava/lang/Boolean;

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v1, ", priorityH5Ad ="

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->priorityH5Ad:Ljava/lang/Boolean;

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, ", h5AdUrl ="

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->h5AdUrl:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, ", pictureDelayCloseTime ="

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->pictureDelayCloseTime:Ljava/lang/Integer;

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v1, ", videoDelayCloseTime ="

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->videoDelayCloseTime:Ljava/lang/Integer;

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v1, ", retentionEndCardRatio ="

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->retentionEndCardRatio:Ljava/lang/Integer;

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const/16 v1, 0x7d

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    return-object v0
.end method
