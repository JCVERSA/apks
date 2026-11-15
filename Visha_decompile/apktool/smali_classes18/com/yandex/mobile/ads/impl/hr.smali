.class public final Lcom/yandex/mobile/ads/impl/hr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rl0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/rl0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/rl0;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/hr;-><init>(Lcom/yandex/mobile/ads/impl/rl0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rl0;)V
    .locals 1

    .line 3
    const-string v0, "installedPackagesJsonParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hr;->a:Lcom/yandex/mobile/ads/impl/rl0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ib0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    const-string v0, "jsonNativeAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conditionKey"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hr;->a:Lcom/yandex/mobile/ads/impl/rl0;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/rl0;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/ib0;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/ib0;-><init>(Ljava/util/ArrayList;)V

    return-object p1
.end method
