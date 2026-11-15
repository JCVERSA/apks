.class final Lcom/google/android/gms/internal/ads/zzgcr;
.super Lcom/google/android/gms/internal/ads/zzgca;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgct;

.field private final zzb:Lj7i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgct;Lj7i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcr;->zza:Lcom/google/android/gms/internal/ads/zzgct;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgca;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgcr;->zzb:Lj7i;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgcr;->zzb:Lj7i;

    invoke-interface {p0}, Lj7i;->zza()Lim5;

    move-result-object v0

    const-string v1, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v1, p0}, Lv2i;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgcr;->zzb:Lj7i;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgcr;->zza:Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic zze(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgcr;->zza:Lcom/google/android/gms/internal/ads/zzgct;

    check-cast p1, Lim5;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->zzn(Lim5;)Z

    return-void
.end method

.method public final zzg()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgcr;->zza:Lcom/google/android/gms/internal/ads/zzgct;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->isDone()Z

    move-result p0

    return p0
.end method
