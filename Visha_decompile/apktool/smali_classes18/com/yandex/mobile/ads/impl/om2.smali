.class public final Lcom/yandex/mobile/ads/impl/om2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/pt;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoadListener;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/om2;->a:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoadListener;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/om2;)Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/om2;->a:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoadListener;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/nt;)V
    .locals 2

    .line 6
    const-string v0, "interstitialAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/yandex/mobile/ads/impl/mm2;

    .line 8
    new-instance v1, Lcom/yandex/mobile/ads/impl/jl2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/jl2;-><init>()V

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/mm2;-><init>(Lcom/yandex/mobile/ads/impl/nt;Lcom/yandex/mobile/ads/impl/jl2;)V

    .line 10
    new-instance p1, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lcom/yandex/mobile/ads/impl/om2$b;

    invoke-direct {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/om2$b;-><init>(Lcom/yandex/mobile/ads/impl/om2;Lcom/yandex/mobile/ads/impl/mm2;)V

    invoke-direct {p1, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lc74;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 3

    .line 2
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/common/AdRequestError;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/mobile/ads/common/AdRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    new-instance v1, Lcom/yandex/mobile/ads/impl/om2$a;

    invoke-direct {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/om2$a;-><init>(Lcom/yandex/mobile/ads/impl/om2;Lcom/yandex/mobile/ads/common/AdRequestError;)V

    invoke-direct {p1, v1}, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;-><init>(Lc74;)V

    return-void
.end method
