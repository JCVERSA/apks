.class public final Lio/appmetrica/analytics/impl/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ja;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Za;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 11
    new-instance p0, Lio/appmetrica/analytics/impl/ci;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/ci;-><init>()V

    return-object p0
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/AppMetricaConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .locals 0

    .line 5
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .locals 0

    .line 6
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/ReporterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/StartupParamsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/StartupParamsCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    sget-object p0, Lio/appmetrica/analytics/StartupParamsCallback$Reason;->UNKNOWN:Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lio/appmetrica/analytics/StartupParamsCallback;->onRequestError(Lio/appmetrica/analytics/StartupParamsCallback$Reason;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 9
    return-void
.end method

.method public final b(Z)V
    .locals 0

    return-void
.end method

.method public final c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/ReporterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/impl/Zh;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Zh;-><init>()V

    return-object p0
.end method

.method public final clearAppEnvironment()V
    .locals 0

    return-void
.end method

.method public final d()Lio/appmetrica/analytics/impl/ea;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/impl/ea;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/ea;-><init>()V

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/AdvIdentifiersResult;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/AdvIdentifiersResult;

    new-instance v0, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    sget-object v1, Lio/appmetrica/analytics/AdvIdentifiersResult$Details;->INTERNAL_ERROR:Lio/appmetrica/analytics/AdvIdentifiersResult$Details;

    const/4 v2, 0x0

    const-string v3, "Device user is in locked state"

    invoke-direct {v0, v2, v1, v3}, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/AdvIdentifiersResult$Details;Ljava/lang/String;)V

    new-instance v4, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    invoke-direct {v4, v2, v1, v3}, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/AdvIdentifiersResult$Details;Ljava/lang/String;)V

    new-instance v5, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;

    invoke-direct {v5, v2, v1, v3}, Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/AdvIdentifiersResult$Details;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4, v5}, Lio/appmetrica/analytics/AdvIdentifiersResult;-><init>(Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;Lio/appmetrica/analytics/AdvIdentifiersResult$AdvId;)V

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/pc;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/impl/pc;

    new-instance v0, Lio/appmetrica/analytics/impl/Dc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Dc;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/G7;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/G7;-><init>(Lio/appmetrica/analytics/impl/Pa;)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/pc;-><init>(Lio/appmetrica/analytics/impl/Pa;Lio/appmetrica/analytics/impl/G7;)V

    return-object p0
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
