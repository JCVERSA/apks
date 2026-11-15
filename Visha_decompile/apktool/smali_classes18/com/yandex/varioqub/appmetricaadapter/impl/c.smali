.class public final Lcom/yandex/varioqub/appmetricaadapter/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/varioqub/appmetricaadapter/impl/d;


# instance fields
.field public a:Lio/appmetrica/analytics/IModuleReporter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V
    .locals 0

    .line 1
    new-instance p0, Lcom/yandex/varioqub/appmetricaadapter/impl/b;

    invoke-direct {p0, p2}, Lcom/yandex/varioqub/appmetricaadapter/impl/b;-><init>(Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V

    .line 2
    const-string p2, "appmetrica_uuid"

    invoke-static {p2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-static {p1, p0, p2}, Lio/appmetrica/analytics/AppMetrica;->requestStartupParams(Landroid/content/Context;Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lio/appmetrica/analytics/ModulesFacade;->getModuleReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IModuleReporter;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/varioqub/appmetricaadapter/impl/c;->a:Lio/appmetrica/analytics/IModuleReporter;

    return-void
.end method

.method public final a([B)V
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/yandex/varioqub/appmetricaadapter/impl/c;->a:Lio/appmetrica/analytics/IModuleReporter;

    const-string v0, "varioqub"

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, v0, p1}, Lio/appmetrica/analytics/IModuleReporter;->setSessionExtra(Ljava/lang/String;[B)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0, p1}, Lio/appmetrica/analytics/ModulesFacade;->setSessionExtra(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method public final b(Ljava/util/LinkedHashMap;)V
    .locals 0

    const-string p0, "com.yandex.varioqub.activate_config"

    invoke-static {p0, p1}, Lio/appmetrica/analytics/AppMetrica;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final c(Landroid/content/Context;Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V
    .locals 0

    new-instance p0, Lcom/yandex/varioqub/appmetricaadapter/impl/a;

    invoke-direct {p0, p2}, Lcom/yandex/varioqub/appmetricaadapter/impl/a;-><init>(Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V

    const-string p2, "appmetrica_device_id"

    invoke-static {p2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lio/appmetrica/analytics/AppMetrica;->requestStartupParams(Landroid/content/Context;Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    return-void
.end method
