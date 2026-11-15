.class public final Ll8j;
.super Le5g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le5g;-><init>(Lwbj;)V

    return-void
.end method


# virtual methods
.method public final a(Lhaj;Lhaj;)V
    .locals 0

    iput-object p2, p1, Lhaj;->b:Lhaj;

    return-void
.end method

.method public final b(Lhaj;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lhaj;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/play_billing/t;Lhui;Lhui;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/t;->c:Lhui;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/t;->c:Lhui;

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

.method public final d(Lcom/google/android/gms/internal/play_billing/t;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/t;->b:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/t;->b:Ljava/lang/Object;

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

.method public final e(Lcom/google/android/gms/internal/play_billing/t;Lhaj;Lhaj;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/t;->d:Lhaj;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/t;->d:Lhaj;

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
