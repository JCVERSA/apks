.class public final Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider$a;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->b()Lvw/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/wrapperadapi/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/wrapperadapi/H5AdStateEnum;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/transsion/wrapperadapi/H5AdStateEnum;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-interface {v0, v1, p1}, Lvw/a;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    sget-object p1, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->a:Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->a(Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->d()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v2, p1

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Loh/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->b()Lvw/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/transsion/wrapperadapi/H5AdStateEnum;->MB_H5_AD_STATE_ON_REWARDED:Lcom/transsion/wrapperadapi/H5AdStateEnum;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/wrapperadapi/H5AdStateEnum;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "\u5c55\u793a\u6210\u529f"

    .line 17
    .line 18
    invoke-interface {p1, v0, v1}, Lvw/a;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p1, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->a:Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->a(Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Loh/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->b()Lvw/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/transsion/wrapperadapi/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/wrapperadapi/H5AdStateEnum;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/wrapperadapi/H5AdStateEnum;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "\u5c55\u793a\u5931\u8d25"

    .line 17
    .line 18
    invoke-interface {p1, v0, v1}, Lvw/a;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p1, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->a:Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->a(Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
