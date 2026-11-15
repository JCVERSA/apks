.class final Lcom/yandex/mobile/ads/impl/of;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/ie;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/pf;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/yandex/mobile/ads/impl/jf;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ie;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/pf;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jf;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/of;->b:Lcom/yandex/mobile/ads/impl/ie;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/of;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/of;->d:Lcom/yandex/mobile/ads/impl/pf;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/of;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/of;->f:Lcom/yandex/mobile/ads/impl/jf;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/of;->b:Lcom/yandex/mobile/ads/impl/ie;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/of;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/ie;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/of;->d:Lcom/yandex/mobile/ads/impl/pf;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/of;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/of;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/of;->f:Lcom/yandex/mobile/ads/impl/jf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {v2}, Lio/appmetrica/analytics/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    move-result-object v0

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/jf;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/ReporterConfig$Builder;->withDataSendingEnabled(Z)Lio/appmetrica/analytics/ReporterConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/ReporterConfig$Builder;->build()Lio/appmetrica/analytics/ReporterConfig;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lio/appmetrica/analytics/AppMetrica;->activateReporter(Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/of;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/of;->e:Ljava/lang/String;

    invoke-static {v0, p0}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    move-result-object p0

    return-object p0
.end method
