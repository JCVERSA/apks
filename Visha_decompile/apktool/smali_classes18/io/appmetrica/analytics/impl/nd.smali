.class public final Lio/appmetrica/analytics/impl/nd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/q0;

.field public final b:Lio/appmetrica/analytics/impl/gd;

.field public final c:Lio/appmetrica/analytics/impl/td;

.field public final d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->c()Lio/appmetrica/analytics/impl/q0;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/nd;->a:Lio/appmetrica/analytics/impl/q0;

    new-instance v1, Lio/appmetrica/analytics/impl/gd;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/gd;-><init>(Lio/appmetrica/analytics/impl/q0;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/nd;->b:Lio/appmetrica/analytics/impl/gd;

    new-instance v0, Lio/appmetrica/analytics/impl/td;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/td;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/nd;->c:Lio/appmetrica/analytics/impl/td;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->e()Lio/appmetrica/analytics/impl/j4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/nd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/nd;)Lio/appmetrica/analytics/impl/Pa;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nd;->a:Lio/appmetrica/analytics/impl/q0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ja;->i()Lio/appmetrica/analytics/impl/pc;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/pc;->a:Lio/appmetrica/analytics/impl/Pa;

    return-object p0
.end method
