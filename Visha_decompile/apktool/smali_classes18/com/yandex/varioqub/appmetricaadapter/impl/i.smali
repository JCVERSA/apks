.class public final Lcom/yandex/varioqub/appmetricaadapter/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/varioqub/appmetricaadapter/impl/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V
    .locals 0

    .line 2
    new-instance p0, Lcom/yandex/varioqub/appmetricaadapter/impl/h;

    invoke-direct {p0, p2}, Lcom/yandex/varioqub/appmetricaadapter/impl/h;-><init>(Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V

    .line 3
    const-string p2, "yandex_mobile_metrica_uuid"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p1, p0, p2}, Lcom/yandex/metrica/p;->a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a([B)V
    .locals 0

    .line 5
    const-string p0, "varioqub"

    invoke-static {p0, p1}, Lcom/yandex/metrica/ModulesFacade;->setSessionExtra(Ljava/lang/String;[B)V

    return-void
.end method

.method public final b(Ljava/util/LinkedHashMap;)V
    .locals 0

    const-string p0, "com.yandex.varioqub.activate_config"

    invoke-static {p0, p1}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final c(Landroid/content/Context;Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V
    .locals 0

    new-instance p0, Lcom/yandex/varioqub/appmetricaadapter/impl/g;

    invoke-direct {p0, p2}, Lcom/yandex/varioqub/appmetricaadapter/impl/g;-><init>(Lcom/yandex/varioqub/analyticadapter/AdapterIdentifiersCallback;)V

    const-string p2, "yandex_mobile_metrica_device_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/yandex/metrica/p;->a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;[Ljava/lang/String;)V

    return-void
.end method
