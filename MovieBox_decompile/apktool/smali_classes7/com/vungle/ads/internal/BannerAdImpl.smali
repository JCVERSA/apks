.class public final Lcom/vungle/ads/internal/BannerAdImpl;
.super Lcom/vungle/ads/BaseAd;
.source "source.java"


# instance fields
.field private final adPlayCallback:Lcom/vungle/ads/internal/presenter/c;

.field private final adSize:Lcom/vungle/ads/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/y;Lcom/vungle/ads/b;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "placementId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adSize"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adConfig"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2, p4}, Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lcom/vungle/ads/internal/BannerAdImpl;->adSize:Lcom/vungle/ads/y;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal"

    .line 31
    .line 32
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Lcom/vungle/ads/internal/a;

    .line 36
    .line 37
    new-instance p2, Lcom/vungle/ads/internal/BannerAdImpl$adPlayCallback$1;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lcom/vungle/ads/internal/BannerAdImpl$adPlayCallback$1;-><init>(Lcom/vungle/ads/internal/BannerAdImpl;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/a;->wrapCallback$vungle_ads_release(Lcom/vungle/ads/internal/presenter/b;)Lcom/vungle/ads/internal/presenter/c;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/vungle/ads/internal/BannerAdImpl;->adPlayCallback:Lcom/vungle/ads/internal/presenter/c;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/AdInternal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/BannerAdImpl;->constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/a;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/vungle/ads/internal/a;

    iget-object v1, p0, Lcom/vungle/ads/internal/BannerAdImpl;->adSize:Lcom/vungle/ads/y;

    invoke-direct {v0, p1, v1}, Lcom/vungle/ads/internal/a;-><init>(Landroid/content/Context;Lcom/vungle/ads/y;)V

    return-object v0
.end method

.method public final getAdPlayCallback$vungle_ads_release()Lcom/vungle/ads/internal/presenter/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/BannerAdImpl;->adPlayCallback:Lcom/vungle/ads/internal/presenter/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdViewSize()Lcom/vungle/ads/y;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcom/vungle/ads/internal/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/vungle/ads/internal/a;->getUpdatedAdSize$vungle_ads_release()Lcom/vungle/ads/y;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/vungle/ads/internal/BannerAdImpl;->adSize:Lcom/vungle/ads/y;

    .line 19
    .line 20
    :cond_0
    return-object v0
.end method
