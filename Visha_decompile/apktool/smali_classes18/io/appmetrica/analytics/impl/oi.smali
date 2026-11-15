.class public final Lio/appmetrica/analytics/impl/oi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Oj;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i0;

.field public final b:Lio/appmetrica/analytics/impl/Lj;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Lj;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/i0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/Lj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->e()Lio/appmetrica/analytics/impl/j4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->b()Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/oi;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Lj;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Lj;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 5
    iput-object p2, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Lj;

    .line 6
    iput-object p1, p0, Lio/appmetrica/analytics/impl/oi;->a:Lio/appmetrica/analytics/impl/i0;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/nh;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 2
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/nh;->b:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Lj;

    .line 4
    new-instance v1, Lio/appmetrica/analytics/impl/n6;

    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Lj;->a:Landroid/content/Context;

    .line 6
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Lj;->b:Lio/appmetrica/analytics/impl/i0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lj;->c:Lio/appmetrica/analytics/impl/Ck;

    invoke-direct {v1, v2, v3, p0, p1}, Lio/appmetrica/analytics/impl/n6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;Lio/appmetrica/analytics/impl/nh;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Lj;

    .line 8
    new-instance v1, Lio/appmetrica/analytics/impl/Eg;

    .line 9
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Lj;->b:Lio/appmetrica/analytics/impl/i0;

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lj;->c:Lio/appmetrica/analytics/impl/Ck;

    invoke-direct {v1, v2, p0, p1}, Lio/appmetrica/analytics/impl/Eg;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;Lio/appmetrica/analytics/impl/nh;)V

    .line 11
    :goto_0
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/pf;)V
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/pf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Lj;

    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/ie;

    .line 14
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Lj;->b:Lio/appmetrica/analytics/impl/i0;

    .line 15
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lj;->c:Lio/appmetrica/analytics/impl/Ck;

    invoke-direct {v1, v2, p0, p1}, Lio/appmetrica/analytics/impl/ie;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;Lio/appmetrica/analytics/impl/pf;)V

    .line 16
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final b(Lio/appmetrica/analytics/impl/nh;)V
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/nh;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Lj;

    .line 2
    new-instance v1, Lio/appmetrica/analytics/impl/n6;

    .line 3
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Lj;->a:Landroid/content/Context;

    .line 4
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Lj;->b:Lio/appmetrica/analytics/impl/i0;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Lj;->c:Lio/appmetrica/analytics/impl/Ck;

    invoke-direct {v1, v2, v3, v0, p1}, Lio/appmetrica/analytics/impl/n6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;Lio/appmetrica/analytics/impl/nh;)V

    .line 5
    iget-object p1, p0, Lio/appmetrica/analytics/impl/oi;->a:Lio/appmetrica/analytics/impl/i0;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    invoke-interface {p0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-interface {p0, v2, v3, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :catchall_0
    :cond_0
    iget-boolean p0, v1, Lio/appmetrica/analytics/impl/ph;->c:Z

    if-nez p0, :cond_1

    .line 8
    :try_start_1
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/n6;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    return-void
.end method

.method public final b(Lio/appmetrica/analytics/impl/pf;)V
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/pf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Lj;

    .line 10
    new-instance v1, Lio/appmetrica/analytics/impl/ui;

    .line 11
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Lj;->b:Lio/appmetrica/analytics/impl/i0;

    .line 12
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lj;->c:Lio/appmetrica/analytics/impl/Ck;

    invoke-direct {v1, v2, p0, p1}, Lio/appmetrica/analytics/impl/ui;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;Lio/appmetrica/analytics/impl/pf;)V

    .line 13
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final reportData(ILandroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/oi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/oi;->b:Lio/appmetrica/analytics/impl/Lj;

    new-instance v1, Lio/appmetrica/analytics/impl/kn;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Lj;->b:Lio/appmetrica/analytics/impl/i0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lj;->c:Lio/appmetrica/analytics/impl/Ck;

    invoke-direct {v1, v2, p0, p1, p2}, Lio/appmetrica/analytics/impl/kn;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
