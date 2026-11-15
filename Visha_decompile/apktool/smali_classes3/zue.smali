.class public final Lzue;
.super Ll1j;
.source "SourceFile"


# instance fields
.field public final K:Lcom/google/android/gms/internal/location/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/c$a;Lcom/google/android/gms/common/api/c$b;Ljava/lang/String;Lay0;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ll1j;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/c$a;Lcom/google/android/gms/common/api/c$b;Ljava/lang/String;Lay0;)V

    new-instance p2, Lcom/google/android/gms/internal/location/d;

    iget-object p3, p0, Ll1j;->J:Ld1f;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/location/d;-><init>(Landroid/content/Context;Ld1f;)V

    iput-object p2, p0, Lzue;->K:Lcom/google/android/gms/internal/location/d;

    return-void
.end method


# virtual methods
.method public final M(Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/internal/location/zzai;)V
    .locals 1

    iget-object v0, p0, Lzue;->K:Lcom/google/android/gms/internal/location/d;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lzue;->K:Lcom/google/android/gms/internal/location/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/location/d;->c(Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/internal/location/zzai;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final N(Lcom/google/android/gms/common/api/internal/d$a;Lcom/google/android/gms/internal/location/zzai;)V
    .locals 0

    iget-object p0, p0, Lzue;->K:Lcom/google/android/gms/internal/location/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/location/d;->d(Lcom/google/android/gms/common/api/internal/d$a;Lcom/google/android/gms/internal/location/zzai;)V

    return-void
.end method

.method public final O(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v0

    sget-object v1, Lamj;->c:Lcom/google/android/gms/common/Feature;

    invoke-static {v0, v1}, Lth;->c([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzue;->K:Lcom/google/android/gms/internal/location/d;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/location/d;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lzue;->K:Lcom/google/android/gms/internal/location/d;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/d;->b()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public final disconnect()V
    .locals 4

    iget-object v0, p0, Lzue;->K:Lcom/google/android/gms/internal/location/d;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lzue;->K:Lcom/google/android/gms/internal/location/d;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/d;->f()V

    iget-object v1, p0, Lzue;->K:Lcom/google/android/gms/internal/location/d;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/d;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/a;->disconnect()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final usesClientTelemetry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
