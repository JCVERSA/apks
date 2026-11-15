.class public final Lio/appmetrica/analytics/impl/qb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/j2;

.field public final b:Lio/appmetrica/analytics/impl/u6;

.field public c:Lio/appmetrica/analytics/impl/Wm;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/j2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/j2;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/qb;->a:Lio/appmetrica/analytics/impl/j2;

    new-instance v0, Lio/appmetrica/analytics/impl/u6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/u6;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/qb;->b:Lio/appmetrica/analytics/impl/u6;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qb;->b:Lio/appmetrica/analytics/impl/u6;

    .line 8
    iget-object v0, v0, Lio/appmetrica/analytics/impl/u6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/qb;->d:Z

    .line 11
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/qb;->e:Z
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

.method public final declared-synchronized a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/ab;)V
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/qb;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/qb;->b:Lio/appmetrica/analytics/impl/u6;

    .line 3
    iget-object v2, p0, Lio/appmetrica/analytics/impl/qb;->a:Lio/appmetrica/analytics/impl/j2;

    invoke-virtual {v2, p1, p2, p3}, Lio/appmetrica/analytics/impl/j2;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/ab;)Lio/appmetrica/analytics/impl/Ma;

    move-result-object p1

    new-array p2, v0, [Lio/appmetrica/analytics/impl/Ma;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 4
    iget-object p1, v1, Lio/appmetrica/analytics/impl/u6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-static {p1, p2}, Ld81;->D(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/qb;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/qb;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qb;->b:Lio/appmetrica/analytics/impl/u6;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/t4;->i:Lio/appmetrica/analytics/impl/Km;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Km;->a:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, v0, Lio/appmetrica/analytics/impl/u6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/qb;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qb;->c:Lio/appmetrica/analytics/impl/Wm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lio/appmetrica/analytics/impl/Wm;

    new-instance v1, Lio/appmetrica/analytics/impl/S1;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/qb;->b:Lio/appmetrica/analytics/impl/u6;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/S1;-><init>(Lio/appmetrica/analytics/impl/u6;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Wm;-><init>(Lio/appmetrica/analytics/impl/S1;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/qb;->c:Lio/appmetrica/analytics/impl/Wm;

    new-instance v0, Lio/appmetrica/analytics/impl/Vm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Vm;-><init>()V

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Vm;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Vm;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
