.class Lapp/fast/ssh/HomeFragment$25;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment;->loadDisConnectedInterstitialAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/HomeFragment;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$25;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$25;->this$0:Lapp/fast/ssh/HomeFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lapp/fast/ssh/HomeFragment;->access$2202(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$25;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0, p1}, Lapp/fast/ssh/HomeFragment;->access$2202(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$25;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$2200(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object p1

    new-instance v0, Lapp/fast/ssh/HomeFragment$25$1;

    invoke-direct {v0, p0}, Lapp/fast/ssh/HomeFragment$25$1;-><init>(Lapp/fast/ssh/HomeFragment$25;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lapp/fast/ssh/HomeFragment$25;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
