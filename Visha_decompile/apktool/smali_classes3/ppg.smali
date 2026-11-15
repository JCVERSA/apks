.class public final Lppg;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzdva;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lppg;->a:Ljava/lang/String;

    iput-object p3, p0, Lppg;->b:Ljava/lang/String;

    iput-object p1, p0, Lppg;->c:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    iget-object v0, p0, Lppg;->c:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdva;->zzc(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lppg;->b:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzd(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    iget-object v0, p0, Lppg;->b:Ljava/lang/String;

    iget-object v1, p0, Lppg;->c:Lcom/google/android/gms/internal/ads/zzdva;

    iget-object p0, p0, Lppg;->a:Ljava/lang/String;

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdva;->zzg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
