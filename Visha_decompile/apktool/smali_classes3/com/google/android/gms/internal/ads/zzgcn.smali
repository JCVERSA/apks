.class final Lcom/google/android/gms/internal/ads/zzgcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/o8;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/o8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcn;->zza:Lcom/google/android/gms/internal/ads/o8;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcn;->zza:Lcom/google/android/gms/internal/ads/o8;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/o8;->j(Lcom/google/android/gms/internal/ads/o8;)Lim5;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgcn;->zza:Lcom/google/android/gms/internal/ads/o8;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/x7;->zzn(Lim5;)Z

    return-void

    :cond_1
    const/4 p0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/o8;->h(Lcom/google/android/gms/internal/ads/o8;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/o8;->i(Lcom/google/android/gms/internal/ads/o8;Ljava/util/concurrent/ScheduledFuture;)V

    const-string v4, "Timed out"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (timeout delayed by "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms after scheduled time)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgco;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzgco;-><init>(Ljava/lang/String;Lm8i;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/x7;->zzd(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_3
    new-instance v5, Lcom/google/android/gms/internal/ads/zzgco;

    invoke-direct {v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzgco;-><init>(Ljava/lang/String;Lm8i;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/x7;->zzd(Ljava/lang/Throwable;)Z

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    invoke-interface {v1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v0

    :cond_3
    :goto_3
    return-void
.end method
