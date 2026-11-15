.class public Leff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lim5;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/n8;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/n8;->h()Lcom/google/android/gms/internal/ads/n8;

    move-result-object v0

    iput-object v0, p0, Leff;->b:Lcom/google/android/gms/internal/ads/n8;

    return-void
.end method

.method public static final a(Z)Z
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SettableFuture"

    invoke-virtual {v0, v1, v2}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return p0
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iget-object p0, p0, Leff;->b:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/x7;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Leff;->b:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/n8;->zzc(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Leff;->a(Z)Z

    return p0
.end method

.method public cancel(Z)Z
    .locals 0

    iget-object p0, p0, Leff;->b:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Leff;->b:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/n8;->zzd(Ljava/lang/Throwable;)Z

    move-result p0

    invoke-static {p0}, Leff;->a(Z)Z

    return p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Leff;->b:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Leff;->b:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/x7;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Leff;->b:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public final isDone()Z
    .locals 0

    iget-object p0, p0, Leff;->b:Lcom/google/android/gms/internal/ads/n8;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->isDone()Z

    move-result p0

    return p0
.end method
