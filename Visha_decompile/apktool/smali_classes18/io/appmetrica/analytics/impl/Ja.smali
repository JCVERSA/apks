.class public interface abstract Lio/appmetrica/analytics/impl/Ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Nc;
.implements Lio/appmetrica/analytics/impl/H6;
.implements Lio/appmetrica/analytics/impl/ab;


# virtual methods
.method public abstract synthetic a()Lio/appmetrica/analytics/impl/Za;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract synthetic a(ILandroid/os/Bundle;)V
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract synthetic a(Landroid/location/Location;)V
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .param p1    # Lio/appmetrica/analytics/AppMetricaConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .param p1    # Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract a(Lio/appmetrica/analytics/ReporterConfig;)V
    .param p1    # Lio/appmetrica/analytics/ReporterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    .param p1    # Lio/appmetrica/analytics/StartupParamsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/StartupParamsCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synthetic a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract synthetic a(Z)V
.end method

.method public abstract synthetic b(Z)V
.end method

.method public abstract c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;
    .param p1    # Lio/appmetrica/analytics/ReporterConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract synthetic clearAppEnvironment()V
.end method

.method public abstract d()Lio/appmetrica/analytics/impl/ea;
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract g()Ljava/util/Map;
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

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
.end method

.method public abstract h()Lio/appmetrica/analytics/AdvIdentifiersResult;
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract i()Lio/appmetrica/analytics/impl/pc;
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract synthetic putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract synthetic setDataSendingEnabled(Z)V
.end method

.method public abstract synthetic setUserProfileID(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
