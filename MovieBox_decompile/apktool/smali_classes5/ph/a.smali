.class public final Lph/a;
.super Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "auto_fullscreen"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-class v0, Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutInterstitialAutoFullScreenActivity;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "action_dialog"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-class v0, Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutInterstitialActionActivity;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-class v0, Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutBuyOutInterstitialHalfScreenActivity;

    .line 28
    .line 29
    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "interstitial"

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_int"

    .line 2
    .line 3
    return-object v0
.end method
