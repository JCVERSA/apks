.class public abstract Lcom/hisavana/common/base/BaseInterstitial;
.super Lcom/hisavana/common/base/BaseAd;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/interfacz/IadInterstitial;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseInterstitial"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public adLoaded()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "BaseInterstitial"

    .line 9
    .line 10
    const-string v2, "adLoaded"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public canShow()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public destroyAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->destroyAd()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "BaseInterstitial"

    .line 9
    .line 10
    const-string v2, "destroyAd"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public getAdType()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    return v0
.end method

.method protected abstract initInterstitial()V
.end method

.method public isOfflineAd()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public loadAd()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->loadAd()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseInterstitial;->initInterstitial()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseInterstitial;->onInterstitialStartLoad()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected abstract onInterstitialShow(Landroid/app/Activity;)V
.end method

.method protected abstract onInterstitialStartLoad()V
.end method

.method public onResume()V
    .locals 0

    .line 1
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "BaseInterstitial"

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Lcom/hisavana/common/interfacz/IadInterstitial;->isLoaded()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseInterstitial;->onInterstitialShow(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "interstitial  is not ready"

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v1, "interstitial show exception:"

    .line 57
    .line 58
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method
