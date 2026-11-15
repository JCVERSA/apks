.class public final Lcom/yandex/mobile/ads/impl/mz0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/mz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 224
    invoke-static {}, Lcom/yandex/mobile/ads/impl/mz0;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/List;
    .locals 28

    .line 1
    new-instance v1, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v0, v1

    .line 2
    new-instance v2, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 3
    const-string v3, "AppLovinBannerAdapter"

    const-string v15, "banner"

    invoke-static {v15, v3}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    const-string v14, "Banner"

    invoke-direct {v2, v14, v3}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v3, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 6
    const-string v4, "AppLovinInterstitialAdapter"

    const-string v13, "interstitial"

    invoke-static {v13, v4}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    const-string v12, "Interstitial"

    invoke-direct {v3, v12, v4}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v4, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 9
    const-string v5, "AppLovinRewardedAdapter"

    const-string v11, "rewarded"

    invoke-static {v11, v5}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    const-string v10, "Rewarded"

    invoke-direct {v4, v10, v5}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2, v3, v4}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v2

    .line 11
    invoke-static {v2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 12
    const-string v3, "AppLovin"

    const-string v4, "applovin"

    invoke-direct {v1, v3, v4, v2}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 13
    new-instance v2, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v1, v2

    .line 14
    new-instance v3, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 15
    const-string v4, "AppLovinMaxBannerAdapter"

    invoke-static {v15, v4}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-direct {v3, v14, v4}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v4, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 18
    const-string v5, "AppLovinMaxInterstitialAdapter"

    invoke-static {v13, v5}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-direct {v4, v12, v5}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v5, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 21
    const-string v6, "AppLovinMaxRewardedAdapter"

    invoke-static {v11, v6}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-direct {v5, v10, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v4, v5}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v3

    .line 23
    invoke-static {v3}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 24
    const-string v4, "AppLovinMax"

    const-string v5, "applovin_max"

    invoke-direct {v2, v4, v5, v3}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 25
    new-instance v3, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v2, v3

    .line 26
    new-instance v4, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 27
    const-string v5, "AppNextBannerAdapter"

    invoke-static {v15, v5}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-direct {v4, v14, v5}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v5, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 30
    const-string v6, "AppNextInterstitialAdapter"

    invoke-static {v13, v6}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-direct {v5, v12, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v6, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 33
    const-string v7, "AppNextNativeAdapter"

    const-string v9, "nativeads"

    invoke-static {v9, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    const-string v8, "Native"

    invoke-direct {v6, v8, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v7, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v17, v0

    .line 36
    const-string v0, "AppNextRewardedAdapter"

    invoke-static {v11, v0}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-direct {v7, v10, v0}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v4, v5, v6, v7}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v0

    .line 38
    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 39
    const-string v4, "Appnext"

    const-string v5, "appnext"

    invoke-direct {v3, v4, v5, v0}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 40
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v3, v0

    .line 41
    new-instance v4, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 42
    const-string v5, "BigoAdsBannerAdapter"

    invoke-static {v15, v5}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-direct {v4, v14, v5}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v5, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 45
    const-string v6, "BigoAdsInterstitialAdapter"

    invoke-static {v13, v6}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-direct {v5, v12, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v6, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 48
    const-string v7, "BigoAdsNativeAdapter"

    invoke-static {v9, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-direct {v6, v8, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v7, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v18, v1

    .line 51
    const-string v1, "BigoAdsRewardedAdapter"

    invoke-static {v11, v1}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-direct {v7, v10, v1}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v4, v5, v6, v7}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v1

    .line 53
    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 54
    const-string v4, "BigoAds"

    const-string v5, "bigoads"

    invoke-direct {v0, v4, v5, v1}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 55
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v4, v0

    .line 56
    new-instance v1, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 57
    const-string v5, "ChartboostBannerAdapter"

    invoke-static {v15, v5}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-direct {v1, v14, v5}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v5, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 60
    const-string v6, "ChartboostInterstitialAdapter"

    invoke-static {v13, v6}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-direct {v5, v12, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v6, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 63
    const-string v7, "ChartboostRewardedAdapter"

    invoke-static {v11, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-direct {v6, v10, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v1, v5, v6}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 66
    const-string v5, "Chartboost"

    const-string v6, "chartboost"

    invoke-direct {v0, v5, v6, v1}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 67
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v5, v0

    .line 68
    new-instance v1, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 69
    const-string v6, "appopen"

    const-string v7, "AdMobAppOpenAdAdapter"

    invoke-static {v6, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    const-string v7, "AppOpen"

    invoke-direct {v1, v7, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v6, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 72
    const-string v7, "AdMobBannerAdapter"

    invoke-static {v15, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-direct {v6, v14, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v7, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v19, v2

    .line 75
    const-string v2, "AdMobInterstitialAdapter"

    invoke-static {v13, v2}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-direct {v7, v12, v2}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v2, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v20, v3

    .line 78
    const-string v3, "AdMobNativeAdapter"

    invoke-static {v9, v3}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-direct {v2, v8, v3}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v3, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v21, v4

    .line 81
    const-string v4, "AdMobRewardedAdapter"

    invoke-static {v11, v4}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-direct {v3, v10, v4}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v1, v6, v7, v2, v3}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v1

    .line 83
    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 84
    const-string v2, "AdMob"

    const-string v3, "admob"

    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 85
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v6, v0

    .line 86
    new-instance v1, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 87
    const-string v2, "AdManagerBannerAdapter"

    invoke-static {v15, v2}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-direct {v1, v14, v2}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v2, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 90
    const-string v3, "AdManagerInterstitialAdapter"

    invoke-static {v13, v3}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-direct {v2, v12, v3}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v3, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 93
    const-string v4, "AdManagerNativeAdapter"

    invoke-static {v9, v4}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-direct {v3, v8, v4}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v4, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 96
    const-string v7, "AdManagerRewardedAdapter"

    invoke-static {v11, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    invoke-direct {v4, v10, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v1, v2, v3, v4}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v1

    .line 98
    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 99
    const-string v2, "AdManager"

    const-string v3, "admanager"

    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 100
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v7, v0

    .line 101
    new-instance v1, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 102
    const-string v2, "InMobiBannerAdapter"

    invoke-static {v15, v2}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-direct {v1, v14, v2}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v2, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 105
    const-string v3, "InMobiInterstitialAdapter"

    invoke-static {v13, v3}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-direct {v2, v12, v3}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v3, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 108
    const-string v4, "InMobiRewardedAdapter"

    invoke-static {v11, v4}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-direct {v3, v10, v4}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v1, v2, v3}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v1

    .line 110
    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 111
    const-string v2, "InMobi"

    const-string v3, "inmobi"

    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 112
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v1, v8

    move-object v8, v0

    .line 113
    new-instance v2, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 114
    const-string v3, "IronSourceBannerAdapter"

    invoke-static {v15, v3}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-direct {v2, v14, v3}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v3, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 117
    const-string v4, "IronSourceInterstitialAdapter"

    invoke-static {v13, v4}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-direct {v3, v12, v4}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v4, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v16, v9

    .line 120
    const-string v9, "IronSourceRewardedAdapter"

    invoke-static {v11, v9}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 121
    invoke-direct {v4, v10, v9}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2, v3, v4}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v2

    .line 122
    invoke-static {v2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 123
    const-string v3, "IronSource"

    const-string v4, "ironsource"

    invoke-direct {v0, v3, v4, v2}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 124
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object/from16 v2, v16

    move-object v9, v0

    .line 125
    new-instance v3, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 126
    const-string v4, "MintegralBannerAdapter"

    invoke-static {v15, v4}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-direct {v3, v14, v4}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v4, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v22, v5

    .line 129
    const-string v5, "MintegralInterstitialAdapter"

    invoke-static {v13, v5}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-direct {v4, v12, v5}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v5, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v23, v6

    .line 132
    const-string v6, "MintegralNativeAdapter"

    invoke-static {v2, v6}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-direct {v5, v1, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v6, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v24, v7

    .line 135
    const-string v7, "MintegralRewardedAdapter"

    invoke-static {v11, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-direct {v6, v10, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3, v4, v5, v6}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v3

    .line 137
    invoke-static {v3}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 138
    const-string v4, "Mintegral"

    const-string v5, "mintegral"

    invoke-direct {v0, v4, v5, v3}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 139
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v3, v10

    move-object v10, v0

    .line 140
    new-instance v4, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 141
    const-string v5, "MyTargetBannerAdapter"

    invoke-static {v15, v5}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-direct {v4, v14, v5}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v5, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 144
    const-string v6, "MyTargetInterstitialAdapter"

    invoke-static {v13, v6}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-direct {v5, v12, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v6, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 147
    const-string v7, "MyTargetNativeAdapter"

    invoke-static {v2, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-direct {v6, v1, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v7, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v25, v8

    .line 150
    const-string v8, "MyTargetRewardedAdapter"

    invoke-static {v11, v8}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-direct {v7, v3, v8}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v4, v5, v6, v7}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v4

    .line 152
    invoke-static {v4}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 153
    const-string v5, "MyTarget"

    const-string v6, "mytarget"

    invoke-direct {v0, v5, v6, v4}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 154
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v4, v11

    move-object v11, v0

    .line 155
    new-instance v5, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 156
    const-string v6, "PangleInterstitialAdapter"

    invoke-static {v13, v6}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-direct {v5, v12, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v6, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 159
    const-string v7, "PangleRewardedAdapter"

    invoke-static {v4, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-direct {v6, v3, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v5, v6}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v5

    .line 161
    invoke-static {v5}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 162
    const-string v6, "Pangle"

    const-string v7, "pangle"

    invoke-direct {v0, v6, v7, v5}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 163
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v5, v12

    move-object v12, v0

    .line 164
    new-instance v6, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 165
    const-string v7, "StartAppBannerAdapter"

    invoke-static {v15, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-direct {v6, v14, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v7, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 168
    const-string v8, "StartAppInterstitialAdapter"

    invoke-static {v13, v8}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 169
    invoke-direct {v7, v5, v8}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v8, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v16, v13

    .line 171
    const-string v13, "StartAppNativeAdapter"

    invoke-static {v2, v13}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-direct {v8, v1, v2}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 174
    const-string v2, "StartAppRewardedAdapter"

    invoke-static {v4, v2}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-direct {v1, v3, v2}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v6, v7, v8, v1}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v1

    .line 176
    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 177
    const-string v2, "StartApp"

    const-string v6, "startapp"

    invoke-direct {v0, v2, v6, v1}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 178
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object/from16 v1, v16

    move-object v13, v0

    .line 179
    new-instance v2, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 180
    const-string v6, "TapJoyInterstitialAdapter"

    invoke-static {v1, v6}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-direct {v2, v5, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v6, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 183
    const-string v7, "TapJoyRewardedAdapter"

    invoke-static {v4, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    invoke-direct {v6, v3, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2, v6}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v2

    .line 185
    invoke-static {v2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 186
    const-string v6, "TapJoy"

    const-string v7, "tapjoy"

    invoke-direct {v0, v6, v7, v2}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 187
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object v2, v14

    move-object v14, v0

    .line 188
    new-instance v6, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 189
    const-string v7, "UnityAdsBannerAdapter"

    invoke-static {v15, v7}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-direct {v6, v2, v7}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v7, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 192
    const-string v8, "UnityAdsInterstitialAdapter"

    invoke-static {v1, v8}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-direct {v7, v5, v8}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v8, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v16, v15

    .line 195
    const-string v15, "UnityAdsRewardedAdapter"

    invoke-static {v4, v15}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 196
    invoke-direct {v8, v3, v15}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v6, v7, v8}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v6

    .line 197
    invoke-static {v6}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 198
    const-string v7, "UnityAds"

    const-string v8, "unityads"

    invoke-direct {v0, v7, v8, v6}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 199
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object/from16 v6, v16

    move-object v15, v0

    .line 200
    new-instance v7, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 201
    const-string v8, "VungleBannerAdapter"

    invoke-static {v6, v8}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 202
    invoke-direct {v7, v2, v8}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v8, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v26, v9

    .line 204
    const-string v9, "VungleInterstitialAdapter"

    invoke-static {v1, v9}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 205
    invoke-direct {v8, v5, v9}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v9, Lcom/yandex/mobile/ads/impl/mz0$b;

    move-object/from16 v27, v10

    .line 207
    const-string v10, "VungleRewardedAdapter"

    invoke-static {v4, v10}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 208
    invoke-direct {v9, v3, v10}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v7, v8, v9}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v7

    .line 209
    invoke-static {v7}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 210
    const-string v8, "Vungle"

    const-string v9, "vungle"

    invoke-direct {v0, v8, v9, v7}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 211
    new-instance v0, Lcom/yandex/mobile/ads/impl/mz0;

    move-object/from16 v16, v0

    .line 212
    new-instance v7, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 213
    const-string v8, "MaticooBannerAdapter"

    invoke-static {v6, v8}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-direct {v7, v2, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v2, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 216
    const-string v6, "MaticooInterstitialAdapter"

    invoke-static {v1, v6}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-direct {v2, v5, v1}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Lcom/yandex/mobile/ads/impl/mz0$b;

    .line 219
    const-string v5, "MaticooRewardedAdapter"

    invoke-static {v4, v5}, Lcom/yandex/mobile/ads/impl/mz0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-direct {v1, v3, v4}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v7, v2, v1}, [Lcom/yandex/mobile/ads/impl/mz0$b;

    move-result-object v1

    .line 221
    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 222
    const-string v2, "zMaticoo"

    const-string v3, "zmaticoo"

    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    filled-new-array/range {v0 .. v16}, [Lcom/yandex/mobile/ads/impl/mz0;

    move-result-object v0

    .line 223
    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
