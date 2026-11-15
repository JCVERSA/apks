.class public final Lwwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/a$a;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbas;

.field public final synthetic c:Leff;

.field public final synthetic d:Lywe;


# direct methods
.method public constructor <init>(Lywe;Lcom/google/android/gms/internal/ads/zzbas;Leff;)V
    .locals 0

    iput-object p2, p0, Lwwe;->b:Lcom/google/android/gms/internal/ads/zzbas;

    iput-object p3, p0, Lwwe;->c:Leff;

    iput-object p1, p0, Lwwe;->d:Lywe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5

    iget-object p1, p0, Lwwe;->d:Lywe;

    invoke-static {p1}, Lywe;->b(Lywe;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lywe;->f(Lywe;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lywe;->d(Lywe;Z)V

    invoke-static {p1}, Lywe;->a(Lywe;)Lpwe;

    move-result-object p1

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Lzef;->a:Lg8i;

    iget-object v2, p0, Lwwe;->b:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v3, p0, Lwwe;->c:Leff;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbax;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbax;-><init>(Lwwe;Lpwe;Lcom/google/android/gms/internal/ads/zzbas;Leff;)V

    invoke-interface {v1, v4}, Lg8i;->i(Ljava/lang/Runnable;)Lim5;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbay;

    invoke-direct {p1, v3, p0}, Lcom/google/android/gms/internal/ads/zzbay;-><init>(Leff;Ljava/util/concurrent/Future;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-virtual {v3, p1, p0}, Leff;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
