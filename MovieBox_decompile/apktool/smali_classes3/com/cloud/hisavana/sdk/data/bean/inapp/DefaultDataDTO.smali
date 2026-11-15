.class public Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private bannerAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private iconAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private interstitialAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private psAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rewardedAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private splashAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/Long;

.field private zipUrl:Ljava/lang/String;


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
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getBannerAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->bannerAds:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->iconAds:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInterstitialAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->interstitialAds:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->nativeAds:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPsAppInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->psAppInfoList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRewardedAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->rewardedAds:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSplashAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->splashAds:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->version:Ljava/lang/Long;

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

.method public setVersion(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->version:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method
