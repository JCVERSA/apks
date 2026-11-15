.class public final Lcom/yandex/mobile/ads/impl/a12;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wr0;

.field private final b:Lcom/yandex/mobile/ads/impl/c12;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/wr0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/c12;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/c12;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/a12;-><init>(Lcom/yandex/mobile/ads/impl/wr0;Lcom/yandex/mobile/ads/impl/c12;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wr0;Lcom/yandex/mobile/ads/impl/c12;)V
    .locals 1

    .line 3
    const-string v0, "linkJsonParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a12;->a:Lcom/yandex/mobile/ads/impl/wr0;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/a12;->b:Lcom/yandex/mobile/ads/impl/c12;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/z02;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64EncodingParameters"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonAsset"

    const-string v1, "jsonAttribute"

    const-string v2, "name"

    invoke-static {p1, v0, v2, v1, v2}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const-string v1, "link"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/a12;->a:Lcom/yandex/mobile/ads/impl/wr0;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p2}, Lcom/yandex/mobile/ads/impl/wr0;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object p2

    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a12;->b:Lcom/yandex/mobile/ads/impl/c12;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/c12;->b(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/b12;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/z02;

    invoke-direct {p1, p2, v0, p0}, Lcom/yandex/mobile/ads/impl/z02;-><init>(Lcom/yandex/mobile/ads/impl/vr0;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/b12;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    const-string p1, "Native Ad json has not required attributes"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0
.end method
