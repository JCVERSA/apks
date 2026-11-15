.class public final Ljog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/t4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t4;)V
    .locals 0

    iput-object p1, p0, Ljog;->a:Lcom/google/android/gms/internal/ads/t4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Ljog;->a:Lcom/google/android/gms/internal/ads/t4;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/t4;->n(Lcom/google/android/gms/internal/ads/t4;Z)V

    const-string v0, "com.google.android.gms.ads.MobileAds"

    const-string v1, "Internal Error."

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t4;->a(Lcom/google/android/gms/internal/ads/t4;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/t4;->p(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t4;->b(Lcom/google/android/gms/internal/ads/t4;)Leff;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Leff;->d(Ljava/lang/Throwable;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljog;->a:Lcom/google/android/gms/internal/ads/t4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/t4;->n(Lcom/google/android/gms/internal/ads/t4;Z)V

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const-string v3, ""

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v4

    invoke-interface {v4}, Lfy0;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/t4;->a(Lcom/google/android/gms/internal/ads/t4;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/t4;->p(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/t4;->h(Lcom/google/android/gms/internal/ads/t4;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdtf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(Ljog;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
