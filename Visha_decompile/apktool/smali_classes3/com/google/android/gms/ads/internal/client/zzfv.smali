.class public final Lcom/google/android/gms/ads/internal/client/zzfv;
.super Lcom/google/android/gms/ads/internal/client/zzec;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzec;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzfv;->zza:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfv;->zza:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoEnd()V

    return-void
.end method

.method public final zzf(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfv;->zza:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoMute(Z)V

    return-void
.end method

.method public final zzg()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfv;->zza:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPause()V

    return-void
.end method

.method public final zzh()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfv;->zza:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPlay()V

    return-void
.end method

.method public final zzi()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfv;->zza:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoStart()V

    return-void
.end method
