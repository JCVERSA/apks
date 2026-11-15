.class public final Lcom/google/android/gms/internal/ads/zzbhx;
.super Lcom/google/android/gms/internal/ads/zzbhg;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/formats/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/zzi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zza:Lcom/google/android/gms/ads/formats/zzi;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbhn;)V
    .locals 1

    new-instance v0, Lm1f;

    invoke-direct {v0, p1}, Lm1f;-><init>(Lcom/google/android/gms/internal/ads/zzbhn;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zza:Lcom/google/android/gms/ads/formats/zzi;

    invoke-interface {p0, v0}, Lcom/google/android/gms/ads/formats/zzi;->zza(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method
