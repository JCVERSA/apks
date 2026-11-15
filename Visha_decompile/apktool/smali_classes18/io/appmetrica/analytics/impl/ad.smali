.class public final Lio/appmetrica/analytics/impl/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerReporter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/q9;

.field public final b:Lio/appmetrica/analytics/impl/a6;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/q9;Lio/appmetrica/analytics/impl/a6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ad;->a:Lio/appmetrica/analytics/impl/q9;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ad;->b:Lio/appmetrica/analytics/impl/a6;

    return-void
.end method


# virtual methods
.method public final report(Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ad;->b:Lio/appmetrica/analytics/impl/a6;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/a6;->d(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v0

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getType()I

    move-result v1

    iput v1, v0, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getCustomType()I

    move-result v1

    iput v1, v0, Lio/appmetrica/analytics/impl/a6;->e:I

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/a6;->setName(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/a6;->setValue(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getValueBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/a6;->setValueBytes([B)V

    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;->getBytesTruncated()I

    move-result p1

    iput p1, v0, Lio/appmetrica/analytics/impl/a6;->g:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ad;->a:Lio/appmetrica/analytics/impl/q9;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/q9;->c:Lio/appmetrica/analytics/impl/vk;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/vk;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;

    move-result-object p1

    iget-wide v1, v0, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {p1, v1, v2}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;J)Lio/appmetrica/analytics/impl/xk;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    return-void
.end method
