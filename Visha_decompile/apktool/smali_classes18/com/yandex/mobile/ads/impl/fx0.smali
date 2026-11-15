.class public final Lcom/yandex/mobile/ads/impl/fx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ug;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/ug<",
        "Lcom/yandex/mobile/ads/impl/ex0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ow0;

.field private final b:Lcom/yandex/mobile/ads/impl/ye2;

.field private final c:Lcom/yandex/mobile/ads/impl/pj0;

.field private final d:Lcom/yandex/mobile/ads/impl/dk0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/xj;Lcom/yandex/mobile/ads/impl/ow0;Lcom/yandex/mobile/ads/impl/ye2;Lcom/yandex/mobile/ads/impl/pj0;Lcom/yandex/mobile/ads/impl/dk0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "base64EncodingParameters"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaParser"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoParser"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageParser"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageValuesParser"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fx0;->a:Lcom/yandex/mobile/ads/impl/ow0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/fx0;->b:Lcom/yandex/mobile/ads/impl/ye2;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/fx0;->c:Lcom/yandex/mobile/ads/impl/pj0;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/fx0;->d:Lcom/yandex/mobile/ads/impl/dk0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    const-string v0, "jsonAsset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Native Ad json has not required attributes"

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fx0;->a:Lcom/yandex/mobile/ads/impl/ow0;

    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ow0;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    check-cast v0, Lcom/yandex/mobile/ads/impl/wu0;

    const-string v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/fx0;->d:Lcom/yandex/mobile/ads/impl/dk0;

    invoke-virtual {v4, v1}, Lcom/yandex/mobile/ads/impl/dk0;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/fx0;->c:Lcom/yandex/mobile/ads/impl/pj0;

    const-string v6, "image"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Lcom/yandex/mobile/ads/impl/pj0;->b(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v5

    :goto_2
    check-cast v4, Lcom/yandex/mobile/ads/impl/xj0;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    :cond_3
    if-eqz v4, :cond_4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fx0;->b:Lcom/yandex/mobile/ads/impl/ye2;

    const-string v4, "video"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ye2;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_5
    move-object p0, v5

    :goto_3
    check-cast p0, Lcom/yandex/mobile/ads/impl/lb2;

    if-nez v0, :cond_8

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_6
    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {p0, v2}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    new-instance p1, Lcom/yandex/mobile/ads/impl/ex0;

    if-eqz v1, :cond_9

    invoke-static {v1}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    :cond_9
    invoke-direct {p1, v0, p0, v5}, Lcom/yandex/mobile/ads/impl/ex0;-><init>(Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/lb2;Ljava/util/List;)V

    return-object p1

    :cond_a
    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {p0, v2}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0
.end method
