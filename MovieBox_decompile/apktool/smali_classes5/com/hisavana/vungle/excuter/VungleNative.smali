.class public final Lcom/hisavana/vungle/excuter/VungleNative;
.super Lcom/hisavana/common/base/BaseNative;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ3\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/hisavana/vungle/excuter/VungleNative;",
        "Lcom/hisavana/common/base/BaseNative;",
        "Landroid/content/Context;",
        "context",
        "Lcom/hisavana/common/bean/Network;",
        "network",
        "",
        "adType",
        "<init>",
        "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V",
        "",
        "c",
        "()V",
        "initNative",
        "onNativeAdStartLoad",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "",
        "Landroid/view/View;",
        "adContains",
        "Lcom/hisavana/common/bean/AdNativeInfo;",
        "nativeInfo",
        "registerViewForInteraction",
        "(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V",
        "unregisterView",
        "(Lcom/hisavana/common/bean/AdNativeInfo;)V",
        "destroyAd",
        "d",
        "Landroid/content/Context;",
        "Lcom/vungle/ads/NativeAd;",
        "e",
        "Lcom/vungle/ads/NativeAd;",
        "nativeAd",
        "f",
        "Lcom/hisavana/common/bean/AdNativeInfo;",
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
.field private final d:Landroid/content/Context;

.field private e:Lcom/vungle/ads/NativeAd;

.field private f:Lcom/hisavana/common/bean/AdNativeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
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
    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/hisavana/vungle/excuter/VungleNative;->d:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/vungle/excuter/VungleNative;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hisavana/vungle/excuter/VungleNative;->d(Lcom/hisavana/vungle/excuter/VungleNative;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$adFailedToLoad(Lcom/hisavana/vungle/excuter/VungleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getNativeInfo$p(Lcom/hisavana/vungle/excuter/VungleNative;)Lcom/hisavana/common/bean/AdNativeInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->f:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$mapNativeAd(Lcom/hisavana/vungle/excuter/VungleNative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/vungle/excuter/VungleNative;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onAdShowError(Lcom/hisavana/vungle/excuter/VungleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c()V
    .locals 4

    .line 1
    sget-object v0, Lcom/hisavana/vungle/util/VungleUtil;->INSTANCE:Lcom/hisavana/vungle/util/VungleUtil;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    .line 4
    .line 5
    iget v2, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getTtl()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/hisavana/vungle/util/VungleUtil;->getNativeInfo(Lcom/vungle/ads/NativeAd;IILcom/hisavana/vungle/excuter/VungleNative;)Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v0}, Lcom/hisavana/common/utils/AdUtil;->release(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private static final d(Lcom/hisavana/vungle/excuter/VungleNative;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

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
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/NativeAd;->unregisterView()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/h;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    .line 20
    .line 21
    return-void
.end method

.method protected initNative()V
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
    new-instance v0, Lcom/vungle/ads/NativeAd;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/hisavana/vungle/excuter/VungleNative;->d:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v2, v3}, Lcom/vungle/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Lcom/vungle/ads/NativeAd;->setAdOptionsPosition(I)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/hisavana/vungle/excuter/VungleNative$initNative$2$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/hisavana/vungle/excuter/VungleNative$initNative$2$1;-><init>(Lcom/hisavana/vungle/excuter/VungleNative;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/h;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    .line 44
    .line 45
    return-void
.end method

.method protected onNativeAdStartLoad()V
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
    new-instance v2, Lhe/c;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lhe/c;-><init>(Lcom/hisavana/vungle/excuter/VungleNative;)V

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
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/hisavana/common/bean/AdNativeInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcom/hisavana/vungle/excuter/VungleNative;->f:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WiTH_EXPIRED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 26
    .line 27
    new-instance v0, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/hisavana/vungle/excuter/VungleNative;->d:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    .line 62
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    const-string v1, "vungle_media_view"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 85
    .line 86
    const-string v2, "vungle_icon_view"

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Landroid/widget/ImageView;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    .line 95
    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    check-cast p2, Ljava/util/Collection;

    .line 102
    .line 103
    invoke-virtual {v3, v0, v1, v2, p2}, Lcom/vungle/ads/NativeAd;->registerViewForInteraction(Landroid/widget/FrameLayout;Lcom/vungle/ads/internal/ui/view/MediaView;Landroid/widget/ImageView;Ljava/util/Collection;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/hisavana/common/base/BaseNative;->setNativeCloseListener(Landroid/view/ViewGroup;Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    goto :goto_2

    .line 116
    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 117
    .line 118
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    return-void

    .line 138
    :cond_7
    :goto_3
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hisavana/vungle/excuter/VungleNative;->e:Lcom/vungle/ads/NativeAd;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->unregisterView()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
