.class public final Lcom/yandex/mobile/ads/impl/wy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b0<",
        "Lcom/yandex/mobile/ads/impl/uy;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q82;

.field private final b:Lcom/yandex/mobile/ads/impl/ck1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/ck1;)V
    .locals 1

    const-string v0, "urlJsonParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferredPackagesParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wy;->a:Lcom/yandex/mobile/ads/impl/q82;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wy;->b:Lcom/yandex/mobile/ads/impl/ck1;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/x;
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonAsset"

    const-string v1, "jsonAttribute"

    const-string v2, "type"

    invoke-static {p1, v0, v2, v1, v2}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wy;->a:Lcom/yandex/mobile/ads/impl/q82;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "fallbackUrl"

    invoke-static {v1, p1}, Lcom/yandex/mobile/ads/impl/q82;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preferredPackages"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy;->b:Lcom/yandex/mobile/ads/impl/ck1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck1;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/uy;

    invoke-direct {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/uy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    const-string p1, "Native Ad json has not required attributes"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0
.end method
