.class public final synthetic Lep1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/D0;

.field public final synthetic c:Lio/appmetrica/analytics/plugins/PluginErrorDetails;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/D0;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lep1;->b:Lio/appmetrica/analytics/impl/D0;

    iput-object p2, p0, Lep1;->c:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lep1;->b:Lio/appmetrica/analytics/impl/D0;

    iget-object p0, p0, Lep1;->c:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    invoke-static {v0, p0}, Lio/appmetrica/analytics/impl/D0;->a(Lio/appmetrica/analytics/impl/D0;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    return-void
.end method
