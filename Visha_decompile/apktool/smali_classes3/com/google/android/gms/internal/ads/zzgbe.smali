.class abstract Lcom/google/android/gms/internal/ads/zzgbe;
.super Lcom/google/android/gms/internal/ads/zzgca;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/h8;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/h8;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbe;->zzb:Lcom/google/android/gms/internal/ads/h8;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgca;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbe;->zza:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public abstract zzc(Ljava/lang/Object;)V
.end method

.method public final zzd(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgbe;->zzb:Lcom/google/android/gms/internal/ads/h8;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/h8;->B(Lcom/google/android/gms/internal/ads/h8;Lcom/google/android/gms/internal/ads/zzgbe;)V

    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->zzd(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->cancel(Z)Z

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zze(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbe;->zzb:Lcom/google/android/gms/internal/ads/h8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/h8;->B(Lcom/google/android/gms/internal/ads/h8;Lcom/google/android/gms/internal/ads/zzgbe;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgbe;->zzc(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzf()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbe;->zza:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgbe;->zzb:Lcom/google/android/gms/internal/ads/h8;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/x7;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzg()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgbe;->zzb:Lcom/google/android/gms/internal/ads/h8;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->isDone()Z

    move-result p0

    return p0
.end method
