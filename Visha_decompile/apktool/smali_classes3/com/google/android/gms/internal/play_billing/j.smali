.class public final Lcom/google/android/gms/internal/play_billing/j;
.super Lcom/google/android/gms/internal/play_billing/h;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Lp3g;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/h;-><init>(Lp3g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/play_billing/m;Lcom/google/android/gms/internal/play_billing/e;)Lcom/google/android/gms/internal/play_billing/e;
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/m;->c:Lcom/google/android/gms/internal/play_billing/e;

    if-eq p0, p2, :cond_0

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/m;->c:Lcom/google/android/gms/internal/play_billing/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lcom/google/android/gms/internal/play_billing/m;Lcom/google/android/gms/internal/play_billing/l;)Lcom/google/android/gms/internal/play_billing/l;
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/m;->d:Lcom/google/android/gms/internal/play_billing/l;

    if-eq p0, p2, :cond_0

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/m;->d:Lcom/google/android/gms/internal/play_billing/l;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Lcom/google/android/gms/internal/play_billing/l;Lcom/google/android/gms/internal/play_billing/l;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/l;->b:Lcom/google/android/gms/internal/play_billing/l;

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/play_billing/l;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/l;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/play_billing/m;Lcom/google/android/gms/internal/play_billing/e;Lcom/google/android/gms/internal/play_billing/e;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/m;->c:Lcom/google/android/gms/internal/play_billing/e;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/m;->c:Lcom/google/android/gms/internal/play_billing/e;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Lcom/google/android/gms/internal/play_billing/m;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/m;->b:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/m;->b:Ljava/lang/Object;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Lcom/google/android/gms/internal/play_billing/m;Lcom/google/android/gms/internal/play_billing/l;Lcom/google/android/gms/internal/play_billing/l;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/m;->d:Lcom/google/android/gms/internal/play_billing/l;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/m;->d:Lcom/google/android/gms/internal/play_billing/l;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
