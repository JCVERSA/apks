.class public Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtInfo"
.end annotation


# instance fields
.field adReqInterval:J

.field clientSamplingRatio:I

.field downloadCount:J

.field downloadStyle:I

.field enableClientSampling:Z

.field isUseCustomTabsToOpenLandingPage:Z

.field oldStyle:I

.field requestStatusOff:Ljava/lang/Boolean;

.field scoreCount:F

.field scoreStyle:I

.field showWebLetterAdPrice:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->oldStyle:I

    .line 7
    .line 8
    const/16 v0, 0x28

    .line 9
    .line 10
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->scoreStyle:I

    .line 11
    .line 12
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->downloadStyle:I

    .line 13
    .line 14
    const/high16 v0, 0x40800000    # 4.0f

    .line 15
    .line 16
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->scoreCount:F

    .line 17
    .line 18
    const-wide/32 v0, 0x186a0

    .line 19
    .line 20
    .line 21
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->downloadCount:J

    .line 22
    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->requestStatusOff:Ljava/lang/Boolean;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->isUseCustomTabsToOpenLandingPage:Z

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->adReqInterval:J

    .line 33
    .line 34
    const/16 v0, 0xa

    .line 35
    .line 36
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->clientSamplingRatio:I

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->enableClientSampling:Z

    .line 40
    .line 41
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->showWebLetterAdPrice:I

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public getAdReqInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->adReqInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getClientSamplingRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->clientSamplingRatio:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownloadCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->downloadCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDownloadStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->downloadStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public getOldStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->oldStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public getRequestStatusOff()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->requestStatusOff:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getScoreCount()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->scoreCount:F

    .line 2
    .line 3
    return v0
.end method

.method public getScoreStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->scoreStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowWebLetterAdPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->showWebLetterAdPrice:I

    .line 2
    .line 3
    return v0
.end method

.method public isEnableClientSampling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->enableClientSampling:Z

    .line 2
    .line 3
    return v0
.end method

.method public isUseCustomTabsToOpenLandingPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->isUseCustomTabsToOpenLandingPage:Z

    .line 2
    .line 3
    return v0
.end method

.method public setClientSamplingRatio(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->clientSamplingRatio:I

    .line 2
    .line 3
    return-void
.end method
