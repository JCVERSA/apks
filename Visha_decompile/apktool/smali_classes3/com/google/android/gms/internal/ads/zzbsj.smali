.class final Lcom/google/android/gms/internal/ads/zzbsj;
.super Lcom/google/android/gms/internal/ads/zzbgz;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/u3;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/u3;Lgaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zza:Lcom/google/android/gms/internal/ads/u3;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbgn;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zza:Lcom/google/android/gms/internal/ads/u3;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/u3;->d(Lcom/google/android/gms/internal/ads/u3;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/u3;->e(Lcom/google/android/gms/internal/ads/u3;Lcom/google/android/gms/internal/ads/zzbgn;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;->onCustomFormatAdLoaded(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    return-void
.end method
