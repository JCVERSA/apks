.class public final Lio/appmetrica/analytics/impl/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public final c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

.field public final d:Lio/appmetrica/analytics/impl/dj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;Lio/appmetrica/analytics/impl/dj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/aj;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/aj;->b:Landroid/content/Context;

    sget-object p1, Lio/appmetrica/analytics/impl/Zi;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->SELF_DIAGNOSTIC_MANUAL:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    goto :goto_0

    :cond_1
    sget-object p1, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->SELF_DIAGNOSTIC_MAIN:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    :goto_0
    iput-object p4, p0, Lio/appmetrica/analytics/impl/aj;->d:Lio/appmetrica/analytics/impl/dj;

    return-void
.end method
