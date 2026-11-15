.class public final Lio/appmetrica/analytics/impl/Be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/appmetrica/analytics/impl/De;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/De;Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Be;->c:Lio/appmetrica/analytics/impl/De;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Be;->a:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Be;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Be;->c:Lio/appmetrica/analytics/impl/De;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/De;->d:Lio/appmetrica/analytics/coreapi/internal/backport/Provider;

    invoke-interface {v0}, Lio/appmetrica/analytics/coreapi/internal/backport/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Ya;

    invoke-interface {v0}, Lio/appmetrica/analytics/IReporter;->getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Be;->a:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Be;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/plugins/IPluginReporter;->reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    return-void
.end method
