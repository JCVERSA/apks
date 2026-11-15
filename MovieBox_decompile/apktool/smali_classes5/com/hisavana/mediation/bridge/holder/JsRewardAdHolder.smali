.class public final Lcom/hisavana/mediation/bridge/holder/JsRewardAdHolder;
.super Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
        "Lcom/hisavana/mediation/ad/TRewardedAd;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/holder/JsRewardAdHolder;",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "Lcom/hisavana/mediation/ad/TRewardedAd;",
        "ad",
        "callbackId",
        "",
        "codeSeatId",
        "adType",
        "",
        "bridgeListener",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "<init>",
        "(Lcom/hisavana/mediation/ad/TRewardedAd;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V",
        "loadAd",
        "",
        "showAd",
        "hasAd",
        "",
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
.method public constructor <init>(Lcom/hisavana/mediation/ad/TRewardedAd;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V
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
    invoke-virtual {p1, p2}, Lfe/b;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public hasAd()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 6
    .line 7
    invoke-virtual {v0}, Lfe/b;->hasAd()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public loadAd()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 6
    .line 7
    invoke-virtual {v0}, Lfe/b;->loadAd()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public release()V
    .locals 1

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
    check-cast v0, Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 9
    .line 10
    invoke-virtual {v0}, Lfe/b;->destroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/m;->h()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/ad/TRewardedAd;->show(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
