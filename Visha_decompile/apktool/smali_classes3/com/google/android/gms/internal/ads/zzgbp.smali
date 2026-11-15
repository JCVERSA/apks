.class final Lcom/google/android/gms/internal/ads/zzgbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Ljava/util/concurrent/Future;

.field final zzb:Lv7i;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lv7i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zza:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:Lv7i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zza:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lo8i;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lo8i;

    invoke-static {v1}, Lp8i;->a(Lo8i;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:Lv7i;

    invoke-interface {p0, v1}, Lv7i;->zza(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->p(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:Lv7i;

    invoke-interface {p0, v0}, Lv7i;->zzb(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:Lv7i;

    invoke-interface {p0, v0}, Lv7i;->zza(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:Lv7i;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p0, v0}, Lv7i;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ls2i;->a(Ljava/lang/Object;)Lq2i;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:Lv7i;

    invoke-virtual {v0, p0}, Lq2i;->a(Ljava/lang/Object;)Lq2i;

    invoke-virtual {v0}, Lq2i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
