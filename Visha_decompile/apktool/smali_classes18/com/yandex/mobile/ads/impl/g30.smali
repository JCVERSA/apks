.class public final Lcom/yandex/mobile/ads/impl/g30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/f20;

.field private final c:Lcom/yandex/mobile/ads/impl/h20;

.field private final d:Lcom/yandex/mobile/ads/impl/d30;

.field private final e:Lcom/yandex/mobile/ads/impl/sj;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 6

    .line 1
    new-instance v2, Lcom/yandex/mobile/ads/impl/f20;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/f20;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 2
    new-instance v3, Lcom/yandex/mobile/ads/impl/h20;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/h20;-><init>()V

    .line 3
    new-instance v4, Lcom/yandex/mobile/ads/impl/d30;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/d30;-><init>()V

    .line 4
    new-instance v5, Lcom/yandex/mobile/ads/impl/sj;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/sj;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/g30;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/f20;Lcom/yandex/mobile/ads/impl/h20;Lcom/yandex/mobile/ads/impl/d30;Lcom/yandex/mobile/ads/impl/sj;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/f20;Lcom/yandex/mobile/ads/impl/h20;Lcom/yandex/mobile/ads/impl/d30;Lcom/yandex/mobile/ads/impl/sj;)V
    .locals 1

    .line 6
    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divDataCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divDataTagCreator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64Decoder"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g30;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/g30;->b:Lcom/yandex/mobile/ads/impl/f20;

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/g30;->c:Lcom/yandex/mobile/ads/impl/h20;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/g30;->d:Lcom/yandex/mobile/ads/impl/d30;

    .line 12
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/g30;->e:Lcom/yandex/mobile/ads/impl/sj;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/a10;Z)Lcom/yandex/mobile/ads/impl/b30;
    .locals 11

    const-string v0, "templates"

    const-string v1, "design"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/g10;->c:Lcom/yandex/mobile/ads/impl/g10;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/g10;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/a10;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/a10;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/a10;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/g30;->e:Lcom/yandex/mobile/ads/impl/sj;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "card"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    move-object v6, p2

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/a10;->a()Ljava/util/List;

    move-result-object v7

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g30;->b:Lcom/yandex/mobile/ads/impl/f20;

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1, v5, v6}, Lcom/yandex/mobile/ads/impl/f20;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/yandex/div2/DivData;

    move-result-object v8

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g30;->c:Lcom/yandex/mobile/ads/impl/h20;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lei2;

    invoke-direct {v9, p1}, Lei2;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g30;->d:Lcom/yandex/mobile/ads/impl/d30;

    invoke-virtual {p1, v5}, Lcom/yandex/mobile/ads/impl/d30;->a(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v10

    if-eqz v8, :cond_2

    new-instance p1, Lcom/yandex/mobile/ads/impl/b30;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/yandex/mobile/ads/impl/b30;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;Lcom/yandex/div2/DivData;Lei2;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g30;->a:Lcom/yandex/mobile/ads/impl/sp1;

    const-string p2, "Failed to parse DivKit design"

    invoke-interface {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v2
.end method
