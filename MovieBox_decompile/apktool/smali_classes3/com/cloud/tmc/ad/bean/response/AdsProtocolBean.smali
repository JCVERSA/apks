.class public Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field abTest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/AbTestDTO;",
            ">;"
        }
    .end annotation
.end field

.field adChoiceClickUrl:Ljava/lang/String;

.field adChoiceImageUrl:Ljava/lang/String;

.field adChoiceLegalText:Ljava/lang/String;

.field adCreativeId:Ljava/lang/Long;

.field adGroupId:Ljava/lang/Long;

.field adSeatType:Ljava/lang/String;

.field adm:Ljava/lang/String;

.field advSeatType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field advertiserId:Ljava/lang/Long;

.field applicationTitle:Ljava/lang/String;

.field auctionSecondPrice:Ljava/lang/Double;

.field bidPrice:Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field cacheTime:I

.field clickTrackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field clickUrl:Ljava/lang/String;

.field codeSeatId:Ljava/lang/String;

.field codeSeatType:Ljava/lang/Integer;

.field commissionRatio:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field cost:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field deepLinkUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field dspType:Ljava/lang/Integer;

.field extInfo:Ljava/lang/String;

.field firstPrice:Ljava/lang/Double;

.field gaid:Ljava/lang/String;

.field id:Ljava/lang/Integer;

.field imageHeight:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field imageUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field imageWidth:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field materialStyle:Ljava/lang/String;

.field nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

.field offlineAd:Z

.field offlineAdLaunchDate:Ljava/lang/Long;

.field offlineAdStartDate:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field planId:Ljava/lang/Long;

.field planType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field psApplicationTitle:Ljava/lang/String;

.field psPackageName:Ljava/lang/String;

.field requestId:Ljava/lang/String;

.field scale:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private scales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field secondPrice:Ljava/lang/Double;

.field settlementRatio:Ljava/math/BigDecimal;

.field showTime:I

.field showTrackingSecretKey:Ljava/lang/String;

.field showTrackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field storeDeeplink:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field viewJson:Ljava/lang/String;


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
.method public getAbTest()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/AbTestDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdChoiceClickUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

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

.method public getAdChoiceImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

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

.method public getAdChoiceLegalText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

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

.method public getAdCreativeId()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getAdGroupId()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getAdImageHeight()Ljava/lang/Integer;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-lez v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_0
    return-object v1
.end method

.method public getAdImageWidth()Ljava/lang/Integer;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-lez v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_0
    return-object v1
.end method

.method public getAdImgUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;->getUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v0, ""

    .line 42
    .line 43
    :goto_0
    return-object v0
.end method

.method public getAdSeatType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdvSeatType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdvertiserId()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getApplicationTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAuctionSecondPrice()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getCacheTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->cacheTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getClickTrackingUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

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

.method public getCodeSeatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodeSeatType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->codeSeatType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeepLinkUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDspType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

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

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

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

.method public getFirstPrice()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getGaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->gaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

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

.method public getImageHeight()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

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

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

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

.method public getImageWidth()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

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

.method public getInstallApk()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

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
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    const/4 v0, 0x3

    .line 20
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    const/4 v0, 0x2

    .line 39
    return v0

    .line 40
    :catch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v3, 0x1e

    .line 43
    .line 44
    if-lt v2, v3, :cond_3

    .line 45
    .line 46
    return v1

    .line 47
    :cond_3
    return v0
.end method

.method public getIsPslinkAd()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "b1CustomAppPage"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

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
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getMaterialStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

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

.method public getNativeObject()Lcom/cloud/tmc/ad/bean/response/NativeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNewPrice()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "&"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "_first_price="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "_second_price="

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "_ratio="

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->settlementRatio:Ljava/math/BigDecimal;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, "ssp_second_price"

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "*----> AdsDTO getNewPrice() = "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x2

    .line 83
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "AdsDTO getNewPrice() error = "

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, "ad"

    .line 111
    .line 112
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v0, ""

    .line 116
    .line 117
    return-object v0
.end method

.method public getNewPrice_Click()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "&"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "p1="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "p2="

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "t="

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->settlementRatio:Ljava/math/BigDecimal;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, "ssp_second_price"

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "*----> AdsDTO getNewPrice_Click() = "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v2, "AdsDTO getNewPrice_Click() error = "

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "ad"

    .line 98
    .line 99
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v0, ""

    .line 103
    .line 104
    return-object v0
.end method

.method public getOfflineAdLaunchDate()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOfflineAdStartDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

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

.method public getPlanId()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->planId:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getPlanType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

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

.method public getPsApplicationTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPsPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScale()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecondPrice()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getSettlementRatio()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->settlementRatio:Ljava/math/BigDecimal;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowTrackingSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

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

.method public getShowTrackingUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStoreDeeplink()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isOfflineAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAd:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAbTest(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/AbTestDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setAdChoiceClickUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdChoiceImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdChoiceLegalText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdCreativeId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setAdGroupId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setAdSeatType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdvSeatType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdvertiserId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setApplicationTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAuctionSecondPrice(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setCacheTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->cacheTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setClickTrackingUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCodeSeatId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCodeSeatType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->codeSeatType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setDeepLinkUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDspType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFirstPrice(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setGaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->gaid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setImageHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImageWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setMaterialStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeObject(Lcom/cloud/tmc/ad/bean/response/NativeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/tmc/ad/bean/response/NativeBean;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAd:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdLaunchDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdStartDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlanId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->planId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setPlanType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPsApplicationTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPsPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScale(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScales(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setSecondPrice(D)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new secondPrice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "old secondPrice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ssp_second_price"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getSecondPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    .line 5
    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    :cond_0
    return-void
.end method

.method public setSecondPrice(Ljava/lang/Double;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    return-void
.end method

.method public setSettlementRatio(Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->settlementRatio:Ljava/math/BigDecimal;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setShowTrackingSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTrackingUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setStoreDeeplink(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setViewJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
