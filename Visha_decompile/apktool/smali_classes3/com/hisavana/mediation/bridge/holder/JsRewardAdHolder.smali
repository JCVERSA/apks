.class public final Lcom/hisavana/mediation/bridge/holder/JsRewardAdHolder;
.super Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
.source "SourceFile"


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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/holder/JsRewardAdHolder;",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "Lcom/hisavana/mediation/ad/TRewardedAd;",
        "ad",
        "",
        "callbackId",
        "codeSeatId",
        "",
        "adType",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "bridgeListener",
        "<init>",
        "(Lcom/hisavana/mediation/ad/TRewardedAd;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V",
        "Lzfb;",
        "loadAd",
        "()V",
        "showAd",
        "",
        "hasAd",
        "()Z",
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

    const-string v0, "ad"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeSeatId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridgeListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->a()Lcom/hisavana/common/bean/TAdRequestBody;

    move-result-object p0

    invoke-virtual {p1, p0}, Lpca;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    return-void
.end method


# virtual methods
.method public hasAd()Z
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisavana/mediation/ad/TRewardedAd;

    invoke-virtual {p0}, Lpca;->hasAd()Z

    move-result p0

    return p0
.end method

.method public loadAd()V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisavana/mediation/ad/TRewardedAd;

    invoke-virtual {p0}, Lpca;->loadAd()V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisavana/mediation/ad/TRewardedAd;

    invoke-virtual {p0}, Lpca;->destroy()V

    return-void
.end method

.method public showAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisavana/mediation/ad/TRewardedAd;

    invoke-static {}, Lzk5;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/ad/TRewardedAd;->show(Landroid/app/Activity;)V

    return-void
.end method
