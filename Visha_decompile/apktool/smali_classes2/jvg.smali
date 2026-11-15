.class public final Ljvg;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/formats/zzi;
.implements Lcom/google/android/gms/ads/formats/zzg;
.implements Lcom/google/android/gms/ads/formats/zzf;


# instance fields
.field public final b:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field public final c:Lcom/google/android/gms/ads/mediation/MediationNativeListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p1, p0, Ljvg;->b:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Ljvg;->c:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Ljvg;->c:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object p0, p0, Ljvg;->b:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Ljvg;->c:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object p0, p0, Ljvg;->b:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    iget-object v0, p0, Ljvg;->c:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object p0, p0, Ljvg;->b:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    iget-object v0, p0, Ljvg;->c:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object p0, p0, Ljvg;->b:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdImpression(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 0

    return-void
.end method

.method public final onAdOpened()V
    .locals 1

    iget-object v0, p0, Ljvg;->c:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object p0, p0, Ljvg;->b:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 1

    new-instance v0, Lw5e;

    invoke-direct {v0, p1}, Lw5e;-><init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    iget-object p1, p0, Ljvg;->c:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object p0, p0, Ljvg;->b:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-void
.end method

.method public final zzb(Lh1f;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljvg;->c:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object p0, p0, Ljvg;->b:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->zze(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lh1f;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Lh1f;)V
    .locals 1

    iget-object v0, p0, Ljvg;->c:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object p0, p0, Ljvg;->b:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->zzd(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lh1f;)V

    return-void
.end method
