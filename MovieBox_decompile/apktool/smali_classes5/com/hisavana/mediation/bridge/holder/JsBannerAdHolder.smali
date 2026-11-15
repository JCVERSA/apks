.class public final Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;
.super Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
        "Lcom/hisavana/mediation/ad/TBannerView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "Lcom/hisavana/mediation/ad/TBannerView;",
        "ad",
        "callbackId",
        "",
        "codeSeatId",
        "adType",
        "",
        "bridgeListener",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "<init>",
        "(Lcom/hisavana/mediation/ad/TBannerView;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V",
        "loadAd",
        "",
        "showAd",
        "release",
        "mediation_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/ad/TBannerView;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V
    .locals 1

    .line 1
    const-string v0, "ad"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callbackId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "codeSeatId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "bridgeListener"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->a()Lcom/hisavana/common/bean/TAdRequestBody;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/hisavana/mediation/ad/TBannerView;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/hisavana/mediation/ad/TBannerView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TBannerView;->loadAd()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/hisavana/mediation/ad/TBannerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/hisavana/mediation/ad/TBannerView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/hisavana/mediation/ad/TBannerView;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TBannerView;->destroy()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public showAd()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/hisavana/mediation/ad/TBannerView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getBridgeListener()Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p0}, Lcom/hisavana/mediation/bridge/listener/BridgeListener;->showBanner(Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
