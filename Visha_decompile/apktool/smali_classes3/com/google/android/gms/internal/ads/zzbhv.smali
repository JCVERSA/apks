.class final Lcom/google/android/gms/internal/ads/zzbhv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbhw;Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lcom/google/android/gms/ads/internal/client/zzbx;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zza:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zzc:Lcom/google/android/gms/internal/ads/zzbhw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zza:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zzb:Lcom/google/android/gms/ads/internal/client/zzbx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zzb(Lcom/google/android/gms/ads/internal/client/zzbx;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zzc:Lcom/google/android/gms/internal/ads/zzbhw;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzc(Lcom/google/android/gms/internal/ads/zzbhw;)Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;->onAdManagerAdViewLoaded(Lcom/google/android/gms/ads/admanager/AdManagerAdView;)V

    return-void

    :cond_0
    const-string p0, "Could not bind."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void
.end method
