.class public final Lcom/yandex/mobile/ads/impl/qa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b0<",
        "Lcom/yandex/mobile/ads/impl/oa0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q82;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q82;)V
    .locals 1

    const-string v0, "urlJsonParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qa0;->a:Lcom/yandex/mobile/ads/impl/q82;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/x;
    .locals 11

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonAsset"

    const-string v1, "type"

    const-string v2, "jsonAttribute"

    invoke-static {p1, v0, v1, v2, v1}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Native Ad json has not required attributes"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "null"

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    const-string v5, "items"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "title"

    invoke-static {v9, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v9, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v9}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/yandex/mobile/ads/impl/qa0;->a:Lcom/yandex/mobile/ads/impl/q82;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "url"

    invoke-static {v10, v8}, Lcom/yandex/mobile/ads/impl/q82;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/yandex/mobile/ads/impl/oa0$a;

    invoke-direct {v10, v9, v8}, Lcom/yandex/mobile/ads/impl/oa0$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {p0, v3}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lcom/yandex/mobile/ads/impl/oa0;

    invoke-direct {p0, v1, v5}, Lcom/yandex/mobile/ads/impl/oa0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {p0, v3}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {p0, v3}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0
.end method
