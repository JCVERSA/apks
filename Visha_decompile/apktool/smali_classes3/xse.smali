.class public final Lxse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/e0;

.field public final c:Looe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Looe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxse;->b:Lcom/google/android/gms/internal/ads/e0;

    iput-object p2, p0, Lxse;->c:Looe;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lxse;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e0;->k()Ljava/util/concurrent/Future;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e0;->k()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e0;->c()Lcom/google/android/gms/internal/ads/t;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lxse;->c:Looe;

    monitor-enter p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aa;->l()[B

    move-result-object v0

    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgri;->f([BLesi;)Lgri;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
