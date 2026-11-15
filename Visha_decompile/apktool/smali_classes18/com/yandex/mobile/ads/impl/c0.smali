.class public final Lcom/yandex/mobile/ads/impl/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/q82;

.field private final c:Lcom/yandex/mobile/ads/impl/a72;

.field private final d:Lcom/yandex/mobile/ads/impl/f10;

.field private final e:Lcom/yandex/mobile/ads/impl/g30;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/yandex/mobile/ads/impl/b0<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 6

    .line 1
    new-instance v2, Lcom/yandex/mobile/ads/impl/q82;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/q82;-><init>()V

    .line 2
    new-instance v3, Lcom/yandex/mobile/ads/impl/a72;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/a72;-><init>()V

    .line 3
    new-instance v4, Lcom/yandex/mobile/ads/impl/f10;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/f10;-><init>()V

    .line 4
    new-instance v5, Lcom/yandex/mobile/ads/impl/g30;

    invoke-direct {v5, p1}, Lcom/yandex/mobile/ads/impl/g30;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/c0;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/a72;Lcom/yandex/mobile/ads/impl/f10;Lcom/yandex/mobile/ads/impl/g30;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/a72;Lcom/yandex/mobile/ads/impl/f10;Lcom/yandex/mobile/ads/impl/g30;)V
    .locals 1

    .line 6
    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlJsonParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingUrlsParser"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "designJsonParser"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitDesignParser"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c0;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c0;->b:Lcom/yandex/mobile/ads/impl/q82;

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/c0;->c:Lcom/yandex/mobile/ads/impl/a72;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/c0;->d:Lcom/yandex/mobile/ads/impl/f10;

    .line 12
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/c0;->e:Lcom/yandex/mobile/ads/impl/g30;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/b0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yandex/mobile/ads/impl/xj;",
            ")",
            "Lcom/yandex/mobile/ads/impl/b0<",
            "*>;"
        }
    .end annotation

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

    const-string v2, "type"

    invoke-static {p1, v0, v2, v1, v2}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "null"

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/c0;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/lb;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c0;->b:Lcom/yandex/mobile/ads/impl/q82;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/c0;->c:Lcom/yandex/mobile/ads/impl/a72;

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/lb;-><init>(Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/a72;)V

    const-string v1, "adtune"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v0, Lcom/yandex/mobile/ads/impl/p20;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c0;->d:Lcom/yandex/mobile/ads/impl/f10;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/c0;->e:Lcom/yandex/mobile/ads/impl/g30;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/c0;->c:Lcom/yandex/mobile/ads/impl/a72;

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/xj;->a()Z

    move-result v5

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/yandex/mobile/ads/impl/p20;-><init>(Lcom/yandex/mobile/ads/impl/f10;Lcom/yandex/mobile/ads/impl/g30;Lcom/yandex/mobile/ads/impl/a72;Z)V

    const-string v1, "divkit_adtune"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-instance v0, Lcom/yandex/mobile/ads/impl/np;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/np;-><init>()V

    const-string v1, "close"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    new-instance v0, Lcom/yandex/mobile/ads/impl/wy;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c0;->b:Lcom/yandex/mobile/ads/impl/q82;

    new-instance v5, Lcom/yandex/mobile/ads/impl/ck1;

    invoke-direct {v5, v1}, Lcom/yandex/mobile/ads/impl/ck1;-><init>(Lcom/yandex/mobile/ads/impl/q82;)V

    invoke-direct {v0, v1, v5}, Lcom/yandex/mobile/ads/impl/wy;-><init>(Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/ck1;)V

    const-string v1, "deeplink"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-instance v0, Lcom/yandex/mobile/ads/impl/qa0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c0;->b:Lcom/yandex/mobile/ads/impl/q82;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/qa0;-><init>(Lcom/yandex/mobile/ads/impl/q82;)V

    const-string v1, "feedback"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-instance v0, Lcom/yandex/mobile/ads/impl/d12;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c0;->a:Lcom/yandex/mobile/ads/impl/sp1;

    new-instance v7, Lcom/yandex/mobile/ads/impl/a12;

    new-instance v8, Lcom/yandex/mobile/ads/impl/wr0;

    invoke-direct {v8, v1}, Lcom/yandex/mobile/ads/impl/wr0;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    invoke-direct {v7, v8}, Lcom/yandex/mobile/ads/impl/a12;-><init>(Lcom/yandex/mobile/ads/impl/wr0;)V

    invoke-direct {v0, v1, p2, v7}, Lcom/yandex/mobile/ads/impl/d12;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/xj;Lcom/yandex/mobile/ads/impl/a12;)V

    const-string p2, "social_action"

    invoke-static {p2, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/c0;->f:Ljava/util/Map;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/b0;

    return-object p0

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    const-string p1, "Native Ad json has not required attributes"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0
.end method
