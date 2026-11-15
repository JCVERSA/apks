.class public final Lio/appmetrica/analytics/impl/W4;
.super Lio/appmetrica/analytics/impl/xh;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/pf;)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v0}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/b4;->b()Lio/appmetrica/analytics/internal/CounterConfiguration;

    move-result-object p0

    sget-object p1, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->COMMUTATION:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setReporterType(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
