.class public final Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private acClickUrl:Ljava/lang/String;

.field private acImageUrl:Ljava/lang/String;

.field private adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private adSeatType:Ljava/lang/String;

.field private adType:I

.field private advSeatType:Ljava/lang/String;

.field private appInfo:Ljava/lang/String;

.field private bidPrice:D

.field private buttonText:Ljava/lang/String;

.field private clicked:Z

.field private codeSeatType:I

.field private descriptionText:Ljava/lang/String;

.field private hisavanaSource:I

.field private iconImage:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

.field private image:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

.field private isACReady:Z

.field private isAdShowed:Z

.field private isOfflineAd:Z

.field private isRegister:Z

.field private isRewarded:Z

.field private isTmplateAccessMode:Z

.field private isUseRecommend:Z

.field private materialStyle:Ljava/lang/String;

.field private nativeBridge:Lcom/cloud/hisavana/sdk/u3;

.field private price:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field private recommendInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:Ljava/lang/String;

.field private secondPrice:D

.field private sequenceId:Ljava/lang/String;

.field private sourceSize:Ljava/lang/String;

.field private store:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

.field private title:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->hisavanaSource:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isAdShowed:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isRewarded:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->recommendInfos:Ljava/util/List;

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isUseRecommend:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->nativeBridge:Lcom/cloud/hisavana/sdk/u3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/cloud/hisavana/sdk/u3;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->nativeBridge:Lcom/cloud/hisavana/sdk/u3;

    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Lj7/a;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getAcClickUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->acClickUrl:Ljava/lang/String;

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

.method public getAcImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->acImageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdCreateId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getAdFormat()I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/x2;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/cloud/hisavana/sdk/x2;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdFormat()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return v0

    .line 32
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdSeatType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdSeatType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adType:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdvSeatType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->advSeatType:Ljava/lang/String;

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

.method public getAppInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->appInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBidPrice()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->bidPrice:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->buttonText:Ljava/lang/String;

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

.method public getCodeSeatType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->codeSeatType:I

    .line 2
    .line 3
    return v0
.end method

.method public getCtatext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->buttonText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->descriptionText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->descriptionText:Ljava/lang/String;

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

.method public getHisavanaSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->hisavanaSource:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->iconImage:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->image:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaterialStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

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

.method public getNativeBridge()Lcom/cloud/hisavana/sdk/u3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->nativeBridge:Lcom/cloud/hisavana/sdk/u3;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_2
    return-object v1
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->price:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPullNewestLive()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->rating:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommendInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->recommendInfos:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecondPrice()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->secondPrice:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSequenceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->sequenceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSourceSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->sourceSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStore()Lcom/cloud/hisavana/sdk/common/bean/AdImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->store:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTemplateEnum()Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isTmplateAccessMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isACReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isACReady:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAdShowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isAdShowed:Z

    .line 2
    .line 3
    return v0
.end method

.method public isClicked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->clicked:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDefaultAd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand()Z

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
    return v0
.end method

.method public isMaterialStyleValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isTmplateAccessMode:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public isMediaCached()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->image:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached()Z

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
    return v0
.end method

.method public isOfflineAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isOfflineAd:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRegister()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isRegister:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRewarded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isRewarded:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTmplateAccessMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isTmplateAccessMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public isUseRecommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isUseRecommend:Z

    .line 2
    .line 3
    return v0
.end method

.method public setACReady(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isACReady:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAcClickUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->acClickUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAcImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->acImageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdItem(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adItem:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setAdSeatType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdShowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isAdShowed:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAdType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->adType:I

    .line 2
    .line 3
    return-void
.end method

.method public setAdvSeatType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->advSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAppInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->appInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBidPrice(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->bidPrice:D

    .line 2
    .line 3
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->buttonText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClicked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->clicked:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCodeSeatType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->codeSeatType:I

    .line 2
    .line 3
    return-void
.end method

.method public setCtatext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->buttonText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->descriptionText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->descriptionText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHisavanaSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->hisavanaSource:I

    .line 2
    .line 3
    return-void
.end method

.method public setIconImage(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->iconImage:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 2
    .line 3
    return-void
.end method

.method public setImage(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->image:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 2
    .line 3
    return-void
.end method

.method public setMaterialStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->materialStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeBridge(Lcom/cloud/hisavana/sdk/u3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->nativeBridge:Lcom/cloud/hisavana/sdk/u3;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isOfflineAd:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->price:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->rating:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRecommendInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->recommendInfos:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRegister(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isRegister:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRewarded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isRewarded:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSecondPrice(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->secondPrice:D

    .line 2
    .line 3
    return-void
.end method

.method public setSequenceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->sequenceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSourceSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->sourceSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStore(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->store:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTmplateAccessMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isTmplateAccessMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUseRecommend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isUseRecommend:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
