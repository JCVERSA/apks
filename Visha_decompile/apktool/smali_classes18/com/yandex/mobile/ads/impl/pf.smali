.class public final Lcom/yandex/mobile/ads/impl/pf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jf;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/qf;
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMetricaPolicyConfigurator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appAdAnalyticsActivator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/of;

    move-object v1, v0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/of;-><init>(Lcom/yandex/mobile/ads/impl/ie;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/pf;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jf;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/yandex/mobile/ads/impl/qf;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/qf;-><init>(Lyi5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    .line 16
    :try_start_0
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 17
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 5
    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->getUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 7
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/nf;)V
    .locals 1

    .line 10
    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "listener"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :try_start_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/rf;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/rf;-><init>(Lcom/yandex/mobile/ads/impl/nf;)V

    .line 12
    invoke-static {}, Lcom/yandex/mobile/ads/impl/sf;->a()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-static {p1, p0, v0}, Lio/appmetrica/analytics/AppMetrica;->requestStartupParams(Landroid/content/Context;Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 14
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    .line 15
    sget-object p0, Lcom/yandex/mobile/ads/impl/mf;->b:Lcom/yandex/mobile/ads/impl/mf;

    invoke-interface {p2, p0}, Lcom/yandex/mobile/ads/impl/nf;->a(Lcom/yandex/mobile/ads/impl/mf;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/xe;)V
    .locals 0

    .line 8
    const-string p0, "listener"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    const-string p0, "AppMetrica SDK does not support autograb feature since version 6.0.0"

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/xe;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
