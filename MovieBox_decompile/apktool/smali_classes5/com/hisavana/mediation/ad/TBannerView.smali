.class public Lcom/hisavana/mediation/ad/TBannerView;
.super Lcom/hisavana/common/base/WrapTadView;
.source "source.java"


# instance fields
.field public a:Lcom/hisavana/mediation/ad/TBannerAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/hisavana/mediation/ad/TBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/hisavana/mediation/ad/TBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/WrapTadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 5
    new-instance p2, Lcom/hisavana/mediation/ad/TBannerAd;

    invoke-direct {p2, p1, p0}, Lcom/hisavana/mediation/ad/TBannerAd;-><init>(Landroid/content/Context;Lcom/hisavana/common/base/WrapTadView;)V

    iput-object p2, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TBannerAd;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/mediation/ad/TBannerAd;->enterScene(Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getTopPrice(I)D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

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
    invoke-virtual {v0, p1}, Lfe/b;->getTopPrice(I)D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    return-wide v0
.end method

.method public loadAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lfe/b;->loadAd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lfe/b;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lfe/b;->resume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lfe/b;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->c(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->setAdUnitId(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setBannerType(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-le p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->setBannerType(I)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void

    .line 15
    :cond_2
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "setBannerType --> invalid banner type "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "TBannerView"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setCloseDirectlyWithoutJumping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->setCloseDirectlyWithoutJumping(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setContainVulgarContent(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lfe/b;->setContainVulgarContent(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCurrActivityFullscreen(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lfe/b;->setCurrActivityFullscreen(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCustomSizeForYandexAndLiftoff(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->e(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/hisavana/mediation/ad/TBannerAd;->d(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setHideAdCloseView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->setHideAdCloseView(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lfe/b;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
