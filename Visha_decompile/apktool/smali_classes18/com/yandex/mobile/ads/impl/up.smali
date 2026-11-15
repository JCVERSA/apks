.class public final Lcom/yandex/mobile/ads/impl/up;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ug;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/ug<",
        "Lcom/yandex/mobile/ads/impl/tp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    const-string p0, "jsonAsset"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/tp;

    sget-object p1, Lcom/yandex/mobile/ads/impl/tp$a;->c:Lcom/yandex/mobile/ads/impl/tp$a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/tp;-><init>(Lcom/yandex/mobile/ads/impl/tp$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/tp;

    sget-object v2, Lcom/yandex/mobile/ads/impl/tp$a;->b:Lcom/yandex/mobile/ads/impl/tp$a;

    const-string v3, "jsonAttribute"

    invoke-static {p1, p0, v0, v3, v0}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "null"

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p0}, Lcom/yandex/mobile/ads/impl/tp;-><init>(Lcom/yandex/mobile/ads/impl/tp$a;Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    const-string p1, "Native Ad json has not required attributes"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0
.end method
