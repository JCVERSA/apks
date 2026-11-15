.class public final Lbve;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/google/android/gms/internal/ads/j0;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbve;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lbve;->b:Lcom/google/android/gms/internal/ads/j0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbve;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lbve;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lbve;->b:Lcom/google/android/gms/internal/ads/j0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/j0;->a()Landroid/app/Activity;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbve;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lbve;->b:Lcom/google/android/gms/internal/ads/j0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/j0;->b()Landroid/content/Context;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Lave;)V
    .locals 2

    iget-object v0, p0, Lbve;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbve;->b:Lcom/google/android/gms/internal/ads/j0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/j0;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/j0;-><init>()V

    iput-object v1, p0, Lbve;->b:Lcom/google/android/gms/internal/ads/j0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lbve;->b:Lcom/google/android/gms/internal/ads/j0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/j0;->f(Lave;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lbve;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbve;->c:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p1

    :cond_0
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Application;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-string p0, "Can not cast Context to Application"

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v2, p0, Lbve;->b:Lcom/google/android/gms/internal/ads/j0;

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/ads/j0;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/j0;-><init>()V

    iput-object v2, p0, Lbve;->b:Lcom/google/android/gms/internal/ads/j0;

    :cond_3
    iget-object v2, p0, Lbve;->b:Lcom/google/android/gms/internal/ads/j0;

    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/j0;->g(Landroid/app/Application;Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbve;->c:Z

    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Lave;)V
    .locals 1

    iget-object v0, p0, Lbve;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lbve;->b:Lcom/google/android/gms/internal/ads/j0;

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/j0;->h(Lave;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
