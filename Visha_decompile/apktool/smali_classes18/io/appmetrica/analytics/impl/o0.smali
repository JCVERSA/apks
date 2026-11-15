.class public final Lio/appmetrica/analytics/impl/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/p0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/p0;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/o0;->a:Lio/appmetrica/analytics/impl/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/o0;->a:Lio/appmetrica/analytics/impl/p0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/p0;->a:Landroid/content/Context;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/o1;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/o1;-><init>(Landroid/content/Context;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
