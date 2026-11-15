.class public final Lph/c;
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
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-class v0, Lcom/transsion/ad/bidding/video/BiddingBuyOutVideoAutoFullScreenActivity;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-class v0, Lcom/transsion/ad/bidding/video/BiddingBuyOutBuyOutVideoActivity;

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "video"

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_v"

    .line 2
    .line 3
    return-object v0
.end method
