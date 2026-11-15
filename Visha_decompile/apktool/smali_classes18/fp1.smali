.class public final synthetic Lfp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/D0;

.field public final synthetic c:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/D0;Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfp1;->b:Lio/appmetrica/analytics/impl/D0;

    iput-object p2, p0, Lfp1;->c:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    iput-object p3, p0, Lfp1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfp1;->b:Lio/appmetrica/analytics/impl/D0;

    iget-object v1, p0, Lfp1;->c:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    iget-object p0, p0, Lfp1;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lio/appmetrica/analytics/impl/D0;->a(Lio/appmetrica/analytics/impl/D0;Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    return-void
.end method
