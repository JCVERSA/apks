.class Lapp/fast/ssh/HomeFragment$24$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment$24;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/HomeFragment$24;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment$24;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$24$1;->this$1:Lapp/fast/ssh/HomeFragment$24;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$24$1;->this$1:Lapp/fast/ssh/HomeFragment$24;

    iget-object v0, v0, Lapp/fast/ssh/HomeFragment$24;->this$0:Lapp/fast/ssh/HomeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lapp/fast/ssh/HomeFragment;->access$1902(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$24$1;->this$1:Lapp/fast/ssh/HomeFragment$24;

    iget-object p1, p1, Lapp/fast/ssh/HomeFragment$24;->this$0:Lapp/fast/ssh/HomeFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lapp/fast/ssh/HomeFragment;->access$1902(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 0

    return-void
.end method
