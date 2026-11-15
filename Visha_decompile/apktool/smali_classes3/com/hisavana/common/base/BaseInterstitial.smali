.class public abstract Lcom/hisavana/common/base/BaseInterstitial;
.super Lcom/hisavana/common/base/BaseAd;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/common/interfacz/IadInterstitial;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseInterstitial"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-void
.end method


# virtual methods
.method public adLoaded()V
    .locals 2

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "BaseInterstitial"

    const-string v1, "adLoaded"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public canShow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public destroyAd()V
    .locals 2

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->destroyAd()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "BaseInterstitial"

    const-string v1, "destroyAd"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAdType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public abstract initInterstitial()V
.end method

.method public isOfflineAd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadAd()V
    .locals 0

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->loadAd()V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseInterstitial;->initInterstitial()V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseInterstitial;->onInterstitialStartLoad()V

    return-void
.end method

.method public abstract onInterstitialShow(Landroid/app/Activity;)V
.end method

.method public abstract onInterstitialStartLoad()V
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "BaseInterstitial"

    :try_start_0
    invoke-interface {p0}, Lcom/hisavana/common/interfacz/IadInterstitial;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseInterstitial;->onInterstitialShow(Landroid/app/Activity;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "interstitial  is not ready"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "interstitial show exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
