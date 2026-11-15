.class final Lcom/google/android/gms/internal/ads/zzaup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/c0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaup;->zza:Lcom/google/android/gms/internal/ads/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaup;->zza:Lcom/google/android/gms/internal/ads/c0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/c0;->c(Lcom/google/android/gms/internal/ads/c0;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/c0;->h(Lcom/google/android/gms/internal/ads/c0;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/c0;->d(Lcom/google/android/gms/internal/ads/c0;Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/c0;->e(Lcom/google/android/gms/internal/ads/c0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaup;->zza:Lcom/google/android/gms/internal/ads/c0;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/c0;->b(Lcom/google/android/gms/internal/ads/c0;)Lrwh;

    move-result-object v1

    const/16 v2, 0x7e7

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lrwh;->c(IJLjava/lang/Exception;)Lxda;

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaup;->zza:Lcom/google/android/gms/internal/ads/c0;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/c0;->c(Lcom/google/android/gms/internal/ads/c0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/c0;->d(Lcom/google/android/gms/internal/ads/c0;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_3
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
