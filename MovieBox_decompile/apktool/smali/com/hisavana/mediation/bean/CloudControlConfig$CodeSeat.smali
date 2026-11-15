.class public Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/bean/CloudControlConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeSeat"
.end annotation


# instance fields
.field private adRequestConcurrentCount:Ljava/lang/Integer;

.field private adRequestCount:Ljava/lang/Integer;

.field private adRequestTimeInterval:Ljava/lang/Integer;

.field private adRequestTimeout:Ljava/lang/Integer;

.field private adSeatType:Ljava/lang/String;

.field private adShowCountLimitDay:Ljava/lang/Integer;

.field private adShowCountLimitHour:Ljava/lang/Integer;

.field private adShowTimeInterval:Ljava/lang/Integer;

.field private adxShowRate:Ljava/lang/Integer;

.field private applicationId:Ljava/lang/String;

.field private biddingWaitTime:Ljava/lang/Integer;

.field private cacheTimeout:Ljava/lang/Integer;

.field private cloudControlEnable:Ljava/lang/Boolean;

.field private codeSeatId:Ljava/lang/String;

.field private codeSeatType:Ljava/lang/Integer;

.field private ewShowRate:Ljava/lang/Integer;

.field private experimentGroupId:Ljava/lang/String;

.field private fillCallbackMode:Ljava/lang/Integer;

.field private mCurrentHourShowTimes:I

.field private mCurrentHourZeroClock:J

.field private mLastShowTime:J

.field private mTodayShowTimes:I

.field private mTodayZeroClock:J

.field private networks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/Network;",
            ">;"
        }
    .end annotation
.end field

.field private preload:Ljava/lang/Boolean;

.field private preloadLogic:Ljava/lang/Integer;

.field private realtimeBiddingWaitTime:Ljava/lang/Integer;

.field private realtimeFillCallbackMode:Ljava/lang/Integer;

.field private requestIntervalMode:Ljava/lang/Integer;

.field private trafficGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAdRequestConcurrentCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adRequestConcurrentCount:Ljava/lang/Integer;

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

.method public getAdRequestCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adRequestCount:Ljava/lang/Integer;

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

.method public getAdRequestTimeInterval()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adRequestTimeInterval:Ljava/lang/Integer;

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

.method public getAdRequestTimeout()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adRequestTimeout:Ljava/lang/Integer;

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

.method public getAdSeatType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdShowCountLimitDay()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adShowCountLimitDay:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

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

.method public getAdShowCountLimitHour()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adShowCountLimitHour:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

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

.method public getAdShowTimeInterval()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adShowTimeInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, -0x3e8

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

.method public getAdxShowRate()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adxShowRate:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->applicationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBiddingWaitTime()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->biddingWaitTime:Ljava/lang/Integer;

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

.method public getCacheTimeout()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->cacheTimeout:Ljava/lang/Integer;

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

.method public getCloudControlEnable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->cloudControlEnable:Ljava/lang/Boolean;

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

.method public getCodeSeatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getCodeSeatType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->codeSeatType:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

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

.method public getCurrentHourShowTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->mCurrentHourShowTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentHourZeroClock()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->mCurrentHourZeroClock:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEwShowRate()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->ewShowRate:Ljava/lang/Integer;

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

.method public getExperimentGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->experimentGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFillCallbackMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->fillCallbackMode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

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

.method public getLastShowTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->mLastShowTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/Network;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->networks:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreload()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->preload:Ljava/lang/Boolean;

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

.method public getPreloadLogic()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->preloadLogic:Ljava/lang/Integer;

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

.method public getRealtimeBiddingWaitTime()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->realtimeBiddingWaitTime:Ljava/lang/Integer;

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

.method public getRealtimeFillCallbackMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->realtimeFillCallbackMode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

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

.method public getRequestIntervalMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->requestIntervalMode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

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

.method public getTodayShowTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->mTodayShowTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public getTodayZeroClock()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->mTodayZeroClock:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTrafficGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->trafficGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdxShowRate(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adxShowRate:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setCodeSeatId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrentHourShowTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->mCurrentHourShowTimes:I

    .line 2
    .line 3
    return-void
.end method

.method public setCurrentHourZeroClock(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->mCurrentHourZeroClock:J

    .line 2
    .line 3
    return-void
.end method

.method public setEwShowRate(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->ewShowRate:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setFillCallbackMode(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->fillCallbackMode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setLastShowTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->mLastShowTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setNetworks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/Network;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->networks:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRealtimeBiddingWaitTime(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->realtimeBiddingWaitTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setRealtimeFillCallbackMode(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->realtimeFillCallbackMode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestIntervalMode(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->requestIntervalMode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setTodayShowTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->mTodayShowTimes:I

    .line 2
    .line 3
    return-void
.end method

.method public setTodayZeroClock(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->mTodayZeroClock:J

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
    const-string v1, "CodeSeat{applicationId=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->applicationId:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->codeSeatId:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->codeSeatType:Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", networks="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->networks:Ljava/util/List;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", cloudControlEnable="

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->cloudControlEnable:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", cacheTimeout="

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->cacheTimeout:Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ", preload="

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->preload:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, ", preloadLogic="

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->preloadLogic:Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, ", adRequestCount="

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adRequestCount:Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, ", adRequestConcurrentCount="

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adRequestConcurrentCount:Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, ", adRequestTimeInterval="

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adRequestTimeInterval:Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, ", adRequestTimeout="

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adRequestTimeout:Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v2, ", biddingWaitTime="

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->biddingWaitTime:Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v2, ", adSeatType=\'"

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adSeatType:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, ", trafficGroupId=\'"

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->trafficGroupId:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v2, ", experimentGroupId=\'"

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v2, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->experimentGroupId:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", adShowCountLimitDay="

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adShowCountLimitDay:Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, ", adShowCountLimitHour="

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adShowCountLimitHour:Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, ", adShowTimeInterval="

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->adShowTimeInterval:Ljava/lang/Integer;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v1, ", fillCallbackMode="

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->fillCallbackMode:Ljava/lang/Integer;

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v1, ", realtimeFillCallbackMode="

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->realtimeFillCallbackMode:Ljava/lang/Integer;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v1, ", realtimeBiddingWaitTime="

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->realtimeBiddingWaitTime:Ljava/lang/Integer;

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const/16 v1, 0x7d

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    return-object v0
.end method
