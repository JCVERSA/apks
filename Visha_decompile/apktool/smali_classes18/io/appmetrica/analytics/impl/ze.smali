.class public final Lio/appmetrica/analytics/impl/ze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ac;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/zc;

.field public final b:Lio/appmetrica/analytics/impl/zc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x9;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Le;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/zc;

    invoke-direct {v0, p2, p3, p4}, Lio/appmetrica/analytics/impl/zc;-><init>(Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Le;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ze;->a:Lio/appmetrica/analytics/impl/zc;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ze;->b:Lio/appmetrica/analytics/impl/zc;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/zc;->b()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/ua;->a()Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;

    move-result-object p2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object p4, Lio/appmetrica/analytics/impl/O7;->a:Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->w()Lio/appmetrica/analytics/impl/Uj;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Uj;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    new-instance v1, Lm4e;

    invoke-direct {v1, p0, p1}, Lm4e;-><init>(Lio/appmetrica/analytics/impl/ze;Lio/appmetrica/analytics/impl/x9;)V

    invoke-virtual {p2, p3, p4, v0, v1}, Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;->subscribe(JLio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrierCallback;)V

    :cond_0
    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/ze;Lio/appmetrica/analytics/impl/x9;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ze;->a:Lio/appmetrica/analytics/impl/zc;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/zc;->a()V

    .line 3
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/x9;->a()Lio/appmetrica/analytics/impl/w9;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/x5;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/x5;->d()V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/J8;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ze;->b:Lio/appmetrica/analytics/impl/zc;

    return-object p0
.end method
