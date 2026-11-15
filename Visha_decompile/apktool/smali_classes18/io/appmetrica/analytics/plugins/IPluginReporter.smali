.class public interface abstract Lio/appmetrica/analytics/plugins/IPluginReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .param p1    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .param p1    # Lio/appmetrica/analytics/plugins/PluginErrorDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
