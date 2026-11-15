.class public final Lio/appmetrica/analytics/impl/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Za;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/Pa;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/AppMetricaConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance p0, Lio/appmetrica/analytics/impl/Dc;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Dc;-><init>()V

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/Za;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/ReporterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    return-void
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/Pa;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/AppMetricaConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/Dc;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Dc;-><init>()V

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/ReporterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p0, Lio/appmetrica/analytics/impl/Zh;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Zh;-><init>()V

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/bb;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/AppMetricaConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance p0, Lio/appmetrica/analytics/impl/Zh;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Zh;-><init>()V

    return-object p0
.end method
