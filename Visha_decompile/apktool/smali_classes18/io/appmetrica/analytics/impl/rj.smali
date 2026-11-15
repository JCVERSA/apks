.class public final Lio/appmetrica/analytics/impl/rj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Xa;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/plugins/PluginErrorDetails;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rj;->a:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ya;)V
    .locals 0

    invoke-interface {p1}, Lio/appmetrica/analytics/IReporter;->getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rj;->a:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/plugins/IPluginReporter;->reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    return-void
.end method
