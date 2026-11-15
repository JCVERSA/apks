.class public final synthetic Lgp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/D0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lio/appmetrica/analytics/plugins/PluginErrorDetails;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/D0;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgp1;->b:Lio/appmetrica/analytics/impl/D0;

    iput-object p2, p0, Lgp1;->c:Ljava/lang/String;

    iput-object p3, p0, Lgp1;->d:Ljava/lang/String;

    iput-object p4, p0, Lgp1;->e:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lgp1;->b:Lio/appmetrica/analytics/impl/D0;

    iget-object v1, p0, Lgp1;->c:Ljava/lang/String;

    iget-object v2, p0, Lgp1;->d:Ljava/lang/String;

    iget-object p0, p0, Lgp1;->e:Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    invoke-static {v0, v1, v2, p0}, Lio/appmetrica/analytics/impl/D0;->a(Lio/appmetrica/analytics/impl/D0;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    return-void
.end method
