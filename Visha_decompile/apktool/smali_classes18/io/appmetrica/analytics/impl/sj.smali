.class public final Lio/appmetrica/analytics/impl/sj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Xa;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/sj;->a:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/sj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ya;)V
    .locals 1

    invoke-interface {p1}, Lio/appmetrica/analytics/IReporter;->getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;

    move-result-object p1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/sj;->a:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sj;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lio/appmetrica/analytics/plugins/IPluginReporter;->reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    return-void
.end method
