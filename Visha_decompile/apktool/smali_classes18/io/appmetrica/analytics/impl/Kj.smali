.class public final Lio/appmetrica/analytics/impl/Kj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:J

.field public b:Lio/appmetrica/analytics/impl/Oe;

.field public c:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lio/appmetrica/analytics/impl/Kj;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/Jj;->a:Lio/appmetrica/analytics/impl/Kj;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lio/appmetrica/analytics/impl/Kj;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(JLjava/lang/Long;)V
    .locals 6
    .param p3    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kj;->c:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {v0}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Kj;->a:J

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kj;->b:Lio/appmetrica/analytics/impl/Oe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Oe;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Kj;->c:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {v2}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 6
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Kj;->b:Lio/appmetrica/analytics/impl/Oe;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long p1, p1, v3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/Oe;->d(Z)Lio/appmetrica/analytics/impl/Oe;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Kj;->b:Lio/appmetrica/analytics/impl/Oe;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/Oe;->d(Z)Lio/appmetrica/analytics/impl/Oe;

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Kj;->b:Lio/appmetrica/analytics/impl/Oe;

    iget-wide p2, p0, Lio/appmetrica/analytics/impl/Kj;->a:J

    invoke-virtual {p1, p2, p3}, Lio/appmetrica/analytics/impl/Oe;->d(J)Lio/appmetrica/analytics/impl/Oe;

    .line 9
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Kj;->b:Lio/appmetrica/analytics/impl/Oe;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Me;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Oe;Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Kj;->b:Lio/appmetrica/analytics/impl/Oe;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/Oe;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Kj;->a:J

    .line 12
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Kj;->c:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kj;->b:Lio/appmetrica/analytics/impl/Oe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Oe;->d(Z)Lio/appmetrica/analytics/impl/Oe;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kj;->b:Lio/appmetrica/analytics/impl/Oe;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Me;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized d()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Kj;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->x()Lio/appmetrica/analytics/impl/Oe;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Kj;->a(Lio/appmetrica/analytics/impl/Oe;Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kj;->b:Lio/appmetrica/analytics/impl/Oe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Oe;->b(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
