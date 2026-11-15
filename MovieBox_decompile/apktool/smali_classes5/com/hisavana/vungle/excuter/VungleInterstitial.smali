.class public final Lcom/hisavana/vungle/excuter/VungleInterstitial;
.super Lcom/hisavana/common/base/BaseInterstitial;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u0019\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\rR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/hisavana/vungle/excuter/VungleInterstitial;",
        "Lcom/hisavana/common/base/BaseInterstitial;",
        "Landroid/content/Context;",
        "context",
        "Lcom/hisavana/common/bean/Network;",
        "network",
        "<init>",
        "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V",
        "",
        "isLoaded",
        "()Z",
        "",
        "initInterstitial",
        "()V",
        "onInterstitialStartLoad",
        "Landroid/app/Activity;",
        "activity",
        "onInterstitialShow",
        "(Landroid/app/Activity;)V",
        "destroyAd",
        "Lcom/vungle/ads/n;",
        "d",
        "Lcom/vungle/ads/n;",
        "interstitialAd",
        "e",
        "Z",
        "isAdLoaded",
        "liftoff_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private d:Lcom/vungle/ads/n;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "network"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/vungle/excuter/VungleInterstitial;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hisavana/vungle/excuter/VungleInterstitial;->b(Lcom/hisavana/vungle/excuter/VungleInterstitial;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$adClosed(Lcom/hisavana/vungle/excuter/VungleInterstitial;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$adFailedToLoad(Lcom/hisavana/vungle/excuter/VungleInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onAdShowError(Lcom/hisavana/vungle/excuter/VungleInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setAdLoaded$p(Lcom/hisavana/vungle/excuter/VungleInterstitial;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final b(Lcom/hisavana/vungle/excuter/VungleInterstitial;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-static {p0, p1, v0, p1}, Lcom/vungle/ads/a$a;->load$default(Lcom/vungle/ads/a;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_INIT_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 24
    .line 25
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->destroyAd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/h;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object v1, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 16
    .line 17
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "destroy"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "Vungle_Log"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method protected initInterstitial()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getPlacementId(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "getContext(...)"

    .line 22
    .line 23
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/vungle/ads/b;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/vungle/ads/b;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    invoke-virtual {v1, v3}, Lcom/vungle/ads/b;->setAdOrientation(I)V

    .line 40
    .line 41
    .line 42
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    new-instance v3, Lcom/vungle/ads/n;

    .line 45
    .line 46
    invoke-direct {v3, v0, v2, v1}, Lcom/vungle/ads/n;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/hisavana/vungle/excuter/VungleInterstitial$initInterstitial$2$1;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/hisavana/vungle/excuter/VungleInterstitial$initInterstitial$2$1;-><init>(Lcom/hisavana/vungle/excuter/VungleInterstitial;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/h;)V

    .line 55
    .line 56
    .line 57
    iput-object v3, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    .line 58
    .line 59
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onInterstitialShow(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->canPlayAd()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p1, v1, v0, v1}, Lcom/vungle/ads/k$a;->play$default(Lcom/vungle/ads/k;Landroid/content/Context;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method protected onInterstitialStartLoad()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getCodeSeatId(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/hisavana/vungle/check/ExistsCheck;->Companion:Lcom/hisavana/vungle/check/ExistsCheck$Companion;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "getApplicationId(...)"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lhe/b;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lhe/b;-><init>(Lcom/hisavana/vungle/excuter/VungleInterstitial;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/hisavana/vungle/check/ExistsCheck$Companion;->initVungle(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
