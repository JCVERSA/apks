.class public final Lcom/yandex/mobile/ads/impl/rf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/StartupParamsCallback;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/nf;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/nf;)V
    .locals 1

    const-string v0, "appMetricaStartupParamsCallback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rf;->a:Lcom/yandex/mobile/ads/impl/nf;

    return-void
.end method


# virtual methods
.method public final onReceive(Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 5

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rf;->a:Lcom/yandex/mobile/ads/impl/nf;

    new-instance v0, Lcom/yandex/mobile/ads/impl/lf;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lio/appmetrica/analytics/StartupParamsCallback$Result;->parameters:Ljava/util/Map;

    if-eqz v2, :cond_0

    const-string v3, "appmetrica_uuid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/StartupParamsItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/appmetrica/analytics/StartupParamsItem;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p1, Lio/appmetrica/analytics/StartupParamsCallback$Result;->parameters:Ljava/util/Map;

    if-eqz v3, :cond_1

    const-string v4, "appmetrica_device_id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/StartupParamsItem;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lio/appmetrica/analytics/StartupParamsItem;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p1, Lio/appmetrica/analytics/StartupParamsCallback$Result;->parameters:Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string v4, "appmetrica_get_ad_url"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/StartupParamsItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lio/appmetrica/analytics/StartupParamsItem;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/nf;->a(Lcom/yandex/mobile/ads/impl/lf;)V

    return-void
.end method

.method public final onRequestError(Lio/appmetrica/analytics/StartupParamsCallback$Reason;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 0

    const-string p2, "reason"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rf;->a:Lcom/yandex/mobile/ads/impl/nf;

    sget-object p2, Lio/appmetrica/analytics/StartupParamsCallback$Reason;->NETWORK:Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/yandex/mobile/ads/impl/mf;->c:Lcom/yandex/mobile/ads/impl/mf;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/appmetrica/analytics/StartupParamsCallback$Reason;->INVALID_RESPONSE:Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/yandex/mobile/ads/impl/mf;->d:Lcom/yandex/mobile/ads/impl/mf;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/yandex/mobile/ads/impl/mf;->b:Lcom/yandex/mobile/ads/impl/mf;

    :goto_0
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/nf;->a(Lcom/yandex/mobile/ads/impl/mf;)V

    return-void
.end method
