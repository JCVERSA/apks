.class public final Lcom/yandex/mobile/ads/impl/rr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/dh;

.field private final b:Lcom/yandex/mobile/ads/impl/el2;

.field private final c:Lcom/yandex/mobile/ads/impl/wr0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/dh;)V
    .locals 1

    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsJsonParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rr0;->a:Lcom/yandex/mobile/ads/impl/dh;

    new-instance p2, Lcom/yandex/mobile/ads/impl/el2;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/el2;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rr0;->b:Lcom/yandex/mobile/ads/impl/el2;

    new-instance p2, Lcom/yandex/mobile/ads/impl/wr0;

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/wr0;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rr0;->c:Lcom/yandex/mobile/ads/impl/wr0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/qr0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "parser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64EncodingParameters"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/qr0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/qr0$a;-><init>()V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rr0;->b:Lcom/yandex/mobile/ads/impl/el2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/el2;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "assets"

    invoke-static {v3, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rr0;->a:Lcom/yandex/mobile/ads/impl/dh;

    invoke-virtual {v2, v1, p2}, Lcom/yandex/mobile/ads/impl/dh;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/qr0$a;->a(Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string v3, "link"

    invoke-static {v3, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/rr0;->c:Lcom/yandex/mobile/ads/impl/wr0;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, p2}, Lcom/yandex/mobile/ads/impl/wr0;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/qr0$a;->a(Lcom/yandex/mobile/ads/impl/vr0;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qr0$a;->a()Lcom/yandex/mobile/ads/impl/qr0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Lorg/json/JSONException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
