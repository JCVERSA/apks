.class public final Lio/appmetrica/analytics/impl/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/mc;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final c:J

.field public d:Z

.field public final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/mc;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/h2;->a:Lio/appmetrica/analytics/impl/mc;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/h2;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iput-wide p3, p0, Lio/appmetrica/analytics/impl/h2;->c:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/h2;->d:Z

    new-instance p1, Lygd;

    invoke-direct {p1, p0}, Lygd;-><init>(Lio/appmetrica/analytics/impl/h2;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/h2;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/h2;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/h2;->a:Lio/appmetrica/analytics/impl/mc;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mc;->a:Lio/appmetrica/analytics/impl/nc;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T2;->h:Lio/appmetrica/analytics/impl/ni;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/xh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ni;->c:Lio/appmetrica/analytics/impl/oi;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/oi;->a(Lio/appmetrica/analytics/impl/pf;)V

    return-void
.end method
