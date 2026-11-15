.class public final Lcom/yandex/mobile/ads/impl/rl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ql0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ql0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ql0;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/rl0;-><init>(Lcom/yandex/mobile/ads/impl/ql0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ql0;)V
    .locals 1

    .line 3
    const-string v0, "installedPackageJsonParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rl0;->a:Lcom/yandex/mobile/ads/impl/ql0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "installedPackages"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/rl0;->a:Lcom/yandex/mobile/ads/impl/ql0;

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "jsonInstalledPackage"

    invoke-static {v5, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "name"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/yandex/mobile/ads/impl/l91;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v7

    const-string v8, "Native Ad json has not required attributes"

    if-eqz v7, :cond_3

    const-string v7, "jsonAsset"

    const-string v9, "jsonAttribute"

    invoke-static {v5, v7, v6, v9, v6}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "null"

    invoke-static {v6, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    sget v7, Lcom/yandex/mobile/ads/impl/oa;->b:I

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "minVersion"

    invoke-static {v7, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_0

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "maxVersion"

    invoke-static {v8, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, 0x7fffffff

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_1

    move v9, v5

    :cond_1
    new-instance v5, Lcom/yandex/mobile/ads/impl/pl0;

    invoke-direct {v5, v7, v9, v6}, Lcom/yandex/mobile/ads/impl/pl0;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {p0, v8}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {p0, v8}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v1
.end method
