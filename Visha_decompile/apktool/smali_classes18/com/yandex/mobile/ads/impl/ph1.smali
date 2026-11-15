.class public final Lcom/yandex/mobile/ads/impl/ph1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/o92;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    const-string p0, "jsonObject"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "jsonAsset"

    const-string v0, "jsonAttribute"

    invoke-static {p2, p0, p1, v0, p1}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "null"

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    const-string p1, "Native Ad json has not required attributes"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0
.end method
