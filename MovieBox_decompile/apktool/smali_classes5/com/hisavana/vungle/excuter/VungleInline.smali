.class public final Lcom/hisavana/vungle/excuter/VungleInline;
.super Lcom/hisavana/common/base/BaseBanner;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/base/BaseBanner<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0011\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0010R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/hisavana/vungle/excuter/VungleInline;",
        "Lcom/hisavana/common/base/BaseBanner;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Lcom/hisavana/common/bean/Network;",
        "network",
        "",
        "bannerSize",
        "<init>",
        "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V",
        "Lcom/vungle/ads/VungleBannerView;",
        "c",
        "()Lcom/vungle/ads/VungleBannerView;",
        "",
        "onBannerLoad",
        "()V",
        "showBanner",
        "onBannerDestroy",
        "d",
        "Landroid/content/Context;",
        "e",
        "I",
        "f",
        "Lcom/vungle/ads/VungleBannerView;",
        "bannerAd",
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

.field private final e:I

.field private f:Lcom/vungle/ads/VungleBannerView;


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
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/hisavana/vungle/excuter/VungleInline;->d:Landroid/content/Context;

    .line 15
    .line 16
    iput p3, p0, Lcom/hisavana/vungle/excuter/VungleInline;->e:I

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/vungle/excuter/VungleInline;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hisavana/vungle/excuter/VungleInline;->d(Lcom/hisavana/vungle/excuter/VungleInline;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$adFailedToLoad(Lcom/hisavana/vungle/excuter/VungleInline;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onAdShowError(Lcom/hisavana/vungle/excuter/VungleInline;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/hisavana/vungle/excuter/VungleInline;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-static {p0, p1, v0, p1}, Lcom/vungle/ads/VungleBannerView;->load$default(Lcom/vungle/ads/VungleBannerView;Ljava/lang/String;ILjava/lang/Object;)V

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
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

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
.method protected c()Lcom/vungle/ads/VungleBannerView;
    .locals 5

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
    const/4 v0, 0x0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    .line 19
    .line 20
    if-nez v0, :cond_6

    .line 21
    .line 22
    iget v0, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdWidth:I

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget v2, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdMaxHeight:I

    .line 27
    .line 28
    if-lez v2, :cond_1

    .line 29
    .line 30
    sget-object v3, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    .line 31
    .line 32
    invoke-virtual {v3, v0, v2}, Lcom/vungle/ads/y$a;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget v0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->e:I

    .line 38
    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    const/16 v3, 0x140

    .line 43
    .line 44
    if-eq v0, v2, :cond_4

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    if-eq v0, v2, :cond_3

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    if-eq v0, v2, :cond_2

    .line 51
    .line 52
    sget-object v0, Lcom/vungle/ads/y;->BANNER:Lcom/vungle/ads/y;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    .line 56
    .line 57
    const/16 v2, 0x5a

    .line 58
    .line 59
    invoke-virtual {v0, v3, v2}, Lcom/vungle/ads/y$a;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    sget-object v0, Lcom/vungle/ads/y;->MREC:Lcom/vungle/ads/y;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    sget-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    .line 68
    .line 69
    const/16 v2, 0x64

    .line 70
    .line 71
    invoke-virtual {v0, v3, v2}, Lcom/vungle/ads/y$a;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    sget-object v0, Lcom/vungle/ads/y;->BANNER:Lcom/vungle/ads/y;

    .line 77
    .line 78
    :goto_0
    new-instance v2, Lcom/vungle/ads/VungleBannerView;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/hisavana/vungle/excuter/VungleInline;->d:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v3, v4, v0}, Lcom/vungle/ads/VungleBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/y;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcom/hisavana/vungle/excuter/VungleInline$getBanner$1$1;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/hisavana/vungle/excuter/VungleInline$getBanner$1$1;-><init>(Lcom/hisavana/vungle/excuter/VungleInline;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v0}, Lcom/vungle/ads/VungleBannerView;->setAdListener(Lcom/vungle/ads/g;)V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    .line 101
    .line 102
    :cond_6
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    .line 103
    .line 104
    return-object v0
.end method

.method public bridge synthetic getBanner()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/vungle/excuter/VungleInline;->c()Lcom/vungle/ads/VungleBannerView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected onBannerDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->finishAd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleBannerView;->setAdListener(Lcom/vungle/ads/g;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iput-object v1, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    .line 17
    .line 18
    return-void
.end method

.method protected onBannerLoad()V
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
    new-instance v2, Lhe/a;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lhe/a;-><init>(Lcom/hisavana/vungle/excuter/VungleInline;)V

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
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method protected showBanner()V
    .locals 0

    .line 1
    return-void
.end method
