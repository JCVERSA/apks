.class public final Lcom/monetization/ads/mediation/interstitial/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yx0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/yx0<",
        "Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;",
        "Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/monetization/ads/mediation/interstitial/b;->a:Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    return-object p0
.end method

.method public final a(Landroid/content/Context;Lcom/monetization/ads/mediation/base/a;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 4
    check-cast p2, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    check-cast p3, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdapterListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localExtras"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverExtras"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p2, p0, Lcom/monetization/ads/mediation/interstitial/b;->a:Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    .line 7
    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;->loadInterstitial(Landroid/content/Context;Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/mediation/base/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    .line 2
    const-string p0, "mediatedAdapter"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;->onInvalidate()V

    return-void
.end method
