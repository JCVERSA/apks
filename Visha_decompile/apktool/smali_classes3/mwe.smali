.class public final Lmwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/a$a;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/m0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/m0;)V
    .locals 0

    iput-object p1, p0, Lmwe;->b:Lcom/google/android/gms/internal/ads/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lmwe;->b:Lcom/google/android/gms/internal/ads/m0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/m0;->e(Lcom/google/android/gms/internal/ads/m0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/m0;->c(Lcom/google/android/gms/internal/ads/m0;)Lpwe;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/m0;->c(Lcom/google/android/gms/internal/ads/m0;)Lpwe;

    move-result-object v1

    invoke-virtual {v1}, Lpwe;->J()Lcom/google/android/gms/internal/ads/zzbau;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/m0;->k(Lcom/google/android/gms/internal/ads/m0;Lcom/google/android/gms/internal/ads/zzbau;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Unable to obtain a cache service instance."

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lmwe;->b:Lcom/google/android/gms/internal/ads/m0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/m0;->h(Lcom/google/android/gms/internal/ads/m0;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lmwe;->b:Lcom/google/android/gms/internal/ads/m0;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/m0;->e(Lcom/google/android/gms/internal/ads/m0;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object p0, p0, Lmwe;->b:Lcom/google/android/gms/internal/ads/m0;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/m0;->e(Lcom/google/android/gms/internal/ads/m0;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/m0;->k(Lcom/google/android/gms/internal/ads/m0;Lcom/google/android/gms/internal/ads/zzbau;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/m0;->e(Lcom/google/android/gms/internal/ads/m0;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
