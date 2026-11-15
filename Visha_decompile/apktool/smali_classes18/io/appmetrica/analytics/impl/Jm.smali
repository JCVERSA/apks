.class public Lio/appmetrica/analytics/impl/Jm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Vj;
.implements Lio/appmetrica/analytics/impl/B9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/La;

.field public final b:Lio/appmetrica/analytics/impl/ml;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/La;Lio/appmetrica/analytics/impl/ml;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/La;",
            "Lio/appmetrica/analytics/impl/ml;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jm;->a:Lio/appmetrica/analytics/impl/La;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Jm;->b:Lio/appmetrica/analytics/impl/ml;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Jm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/La;->b()Lio/appmetrica/analytics/impl/f5;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/networktasks/internal/NetworkTask;)V
    .locals 0

    .line 2
    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->getInstance()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->getNetworkCore()Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/networktasks/internal/NetworkCore;->startTask(Lio/appmetrica/analytics/networktasks/internal/NetworkTask;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Jm;->e()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Jm;->a()V

    :cond_0
    return-void
.end method

.method public final c()Lio/appmetrica/analytics/impl/La;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/La;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jm;->a:Lio/appmetrica/analytics/impl/La;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jm;->b:Lio/appmetrica/analytics/impl/ml;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/ml;->a()V

    return-void
.end method

.method public final onCreate()V
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Jm;->a()V

    :cond_0
    return-void
.end method
