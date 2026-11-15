.class public abstract Lcom/google/android/gms/internal/ads/m8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/concurrent/ExecutorService;)Lg8i;
    .locals 1

    instance-of v0, p0, Lg8i;

    if-eqz v0, :cond_0

    check-cast p0, Lg8i;

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/l8;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/l8;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lj8i;

    invoke-direct {v0, p0}, Lj8i;-><init>(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static b(Ljava/util/concurrent/ScheduledExecutorService;)Lh8i;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/l8;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/l8;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public static c()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbg;->zza:Lcom/google/android/gms/internal/ads/zzgbg;

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/x7;)Ljava/util/concurrent/Executor;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbg;->zza:Lcom/google/android/gms/internal/ads/zzgbg;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Li8i;

    invoke-direct {v0, p0, p1}, Li8i;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/x7;)V

    return-object v0
.end method

.method public static synthetic e(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/x7;Ljava/lang/Runnable;)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/x7;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
