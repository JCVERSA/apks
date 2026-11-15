.class public final Lio/appmetrica/analytics/impl/mi;
.super Lio/appmetrica/analytics/impl/Jm;
.source "SourceFile"


# instance fields
.field public final d:Lio/appmetrica/analytics/impl/li;

.field public final e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/ml;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/m5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/ml;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/m5;",
            "Lio/appmetrica/analytics/impl/ml;",
            "Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/Jm;-><init>(Lio/appmetrica/analytics/impl/La;Lio/appmetrica/analytics/impl/ml;)V

    new-instance p1, Lio/appmetrica/analytics/impl/li;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/li;-><init>(Lio/appmetrica/analytics/impl/mi;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/mi;->d:Lio/appmetrica/analytics/impl/li;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/mi;->e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/mi;->e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mi;->d:Lio/appmetrica/analytics/impl/li;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jm;->b:Lio/appmetrica/analytics/impl/ml;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/ml;->a()V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jm;->a:Lio/appmetrica/analytics/impl/La;

    check-cast v0, Lio/appmetrica/analytics/impl/m5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/ch;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/ch;->k:Lio/appmetrica/analytics/impl/Zg;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/ch;->j:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/Zg;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ch;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jm;->a:Lio/appmetrica/analytics/impl/La;

    check-cast v0, Lio/appmetrica/analytics/impl/m5;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Nd;->a(Lio/appmetrica/analytics/impl/m5;)Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Jm;->a(Lio/appmetrica/analytics/networktasks/internal/NetworkTask;)V

    nop

    :catchall_0
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/mi;->e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mi;->d:Lio/appmetrica/analytics/impl/li;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jm;->a:Lio/appmetrica/analytics/impl/La;

    check-cast v0, Lio/appmetrica/analytics/impl/m5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/ch;

    iget v0, v0, Lio/appmetrica/analytics/impl/ch;->g:I

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Jm;->a:Lio/appmetrica/analytics/impl/La;

    check-cast v1, Lio/appmetrica/analytics/impl/m5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/ch;

    iget v1, v1, Lio/appmetrica/analytics/impl/ch;->g:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/mi;->e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mi;->d:Lio/appmetrica/analytics/impl/li;

    invoke-interface {v2, p0, v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
