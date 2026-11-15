.class public final Lcom/google/android/gms/internal/ads/zzbsn;
.super Lcom/google/android/gms/internal/ads/zzbhg;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zza:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbhn;)V
    .locals 1

    new-instance v0, Lfaf;

    invoke-direct {v0, p1}, Lfaf;-><init>(Lcom/google/android/gms/internal/ads/zzbhn;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbsn;->zza:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;

    invoke-interface {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;->onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
