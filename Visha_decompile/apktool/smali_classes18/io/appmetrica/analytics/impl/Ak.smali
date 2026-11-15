.class public final Lio/appmetrica/analytics/impl/Ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/p;

.field public final b:Lio/appmetrica/analytics/impl/z5;

.field public final c:Lio/appmetrica/analytics/impl/n;

.field public final d:Lio/appmetrica/analytics/impl/n;

.field public final e:Lio/appmetrica/analytics/impl/r;

.field public final f:Lio/appmetrica/analytics/impl/l;

.field public g:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/p;Lio/appmetrica/analytics/impl/l;)V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/z5;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/z5;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/r;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/r;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lio/appmetrica/analytics/impl/Ak;-><init>(Lio/appmetrica/analytics/impl/p;Lio/appmetrica/analytics/impl/l;Lio/appmetrica/analytics/impl/z5;Lio/appmetrica/analytics/impl/r;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/p;Lio/appmetrica/analytics/impl/l;Lio/appmetrica/analytics/impl/z5;Lio/appmetrica/analytics/impl/r;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Ak;->g:Z

    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ak;->a:Lio/appmetrica/analytics/impl/p;

    .line 5
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ak;->f:Lio/appmetrica/analytics/impl/l;

    .line 6
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ak;->b:Lio/appmetrica/analytics/impl/z5;

    .line 7
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Ak;->e:Lio/appmetrica/analytics/impl/r;

    .line 8
    new-instance p1, Lga;

    invoke-direct {p1, p0}, Lga;-><init>(Lio/appmetrica/analytics/impl/Ak;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ak;->c:Lio/appmetrica/analytics/impl/n;

    .line 9
    new-instance p1, Lha;

    invoke-direct {p1, p0}, Lha;-><init>(Lio/appmetrica/analytics/impl/Ak;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ak;->d:Lio/appmetrica/analytics/impl/n;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lio/appmetrica/analytics/impl/o;
    .locals 3

    monitor-enter p0

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Ak;->g:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->a:Lio/appmetrica/analytics/impl/p;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ak;->c:Lio/appmetrica/analytics/impl/n;

    sget-object v2, Lio/appmetrica/analytics/impl/m;->b:Lio/appmetrica/analytics/impl/m;

    filled-new-array {v2}, [Lio/appmetrica/analytics/impl/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/p;->a(Lio/appmetrica/analytics/impl/n;[Lio/appmetrica/analytics/impl/m;)V

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->a:Lio/appmetrica/analytics/impl/p;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ak;->d:Lio/appmetrica/analytics/impl/n;

    sget-object v2, Lio/appmetrica/analytics/impl/m;->c:Lio/appmetrica/analytics/impl/m;

    filled-new-array {v2}, [Lio/appmetrica/analytics/impl/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/p;->a(Lio/appmetrica/analytics/impl/n;[Lio/appmetrica/analytics/impl/m;)V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Ak;->g:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->a:Lio/appmetrica/analytics/impl/p;

    .line 14
    iget-object v0, v0, Lio/appmetrica/analytics/impl/p;->b:Lio/appmetrica/analytics/impl/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/m;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p2, p0, Lio/appmetrica/analytics/impl/Ak;->g:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Ak;->b:Lio/appmetrica/analytics/impl/z5;

    new-instance v0, Lia;

    invoke-direct {v0, p0, p1}, Lia;-><init>(Lio/appmetrica/analytics/impl/Ak;Landroid/app/Activity;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 6
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance v1, Lio/appmetrica/analytics/impl/y5;

    invoke-direct {v1, p2, v0}, Lio/appmetrica/analytics/impl/y5;-><init>(Lio/appmetrica/analytics/impl/z5;Lio/appmetrica/analytics/impl/Sd;)V

    invoke-interface {p1, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 8
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/nc;)V
    .locals 1

    .line 15
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ak;->e:Lio/appmetrica/analytics/impl/r;

    sget-object v0, Lio/appmetrica/analytics/impl/q;->a:Lio/appmetrica/analytics/impl/q;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/r;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/q;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p2, p1}, Lio/appmetrica/analytics/impl/nc;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;Lio/appmetrica/analytics/impl/m;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p2, p0, Lio/appmetrica/analytics/impl/Ak;->g:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Ak;->b:Lio/appmetrica/analytics/impl/z5;

    new-instance v0, Lfa;

    invoke-direct {v0, p0, p1}, Lfa;-><init>(Lio/appmetrica/analytics/impl/Ak;Landroid/app/Activity;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 6
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance v1, Lio/appmetrica/analytics/impl/y5;

    invoke-direct {v1, p2, v0}, Lio/appmetrica/analytics/impl/y5;-><init>(Lio/appmetrica/analytics/impl/z5;Lio/appmetrica/analytics/impl/Sd;)V

    invoke-interface {p1, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 8
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroid/app/Activity;Lio/appmetrica/analytics/impl/nc;)V
    .locals 1

    .line 9
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ak;->e:Lio/appmetrica/analytics/impl/r;

    sget-object v0, Lio/appmetrica/analytics/impl/q;->b:Lio/appmetrica/analytics/impl/q;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/r;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/q;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p2, p1}, Lio/appmetrica/analytics/impl/nc;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
