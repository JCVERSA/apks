.class public final Lcom/yandex/mobile/ads/impl/tj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/o92;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sj;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sj;)V
    .locals 1

    const-string v0, "base64Decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tj;->a:Lcom/yandex/mobile/ads/impl/sj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonAsset"

    const-string v1, "jsonAttribute"

    invoke-static {p2, v0, p1, v1, p1}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "null"

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tj;->a:Lcom/yandex/mobile/ads/impl/sj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    const-string p1, "Native Ad json has attribute with broken base64 encoding"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    const-string p1, "Native Ad json has not required attributes"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0
.end method
