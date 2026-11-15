.class public final Lcom/yandex/mobile/ads/impl/v51;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/eq1;

.field private final c:Lcom/yandex/mobile/ads/impl/qk$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/qk$a<",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/wn1;

.field private final e:Lcom/yandex/mobile/ads/impl/cf1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/qk$a;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/wn1;->b:Lcom/yandex/mobile/ads/impl/wn1$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wn1$a;->a()Lcom/yandex/mobile/ads/impl/wn1;

    move-result-object v5

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/cf1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/cf1;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/v51;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/wn1;Lcom/yandex/mobile/ads/impl/cf1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/wn1;Lcom/yandex/mobile/ads/impl/cf1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/eq1;",
            "Lcom/yandex/mobile/ads/impl/qk$a<",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;>;",
            "Lcom/yandex/mobile/ads/impl/wn1;",
            "Lcom/yandex/mobile/ads/impl/cf1;",
            ")V"
        }
    .end annotation

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseStorage"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openBiddingReadyResponseProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v51;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/v51;->b:Lcom/yandex/mobile/ads/impl/eq1;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/v51;->c:Lcom/yandex/mobile/ads/impl/qk$a;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/v51;->d:Lcom/yandex/mobile/ads/impl/wn1;

    .line 10
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/v51;->e:Lcom/yandex/mobile/ads/impl/cf1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/v7;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/u51;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/hq1<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/v7;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/mobile/ads/impl/u51;"
        }
    .end annotation

    move-object v0, p0

    move-object v3, p1

    const-string v1, "requestPolicy"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfiguration"

    move-object v4, p2

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adRequestData"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    move-object/from16 v5, p4

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "query"

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/yandex/mobile/ads/impl/u51;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/v51;->a:Landroid/content/Context;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/v51;->b:Lcom/yandex/mobile/ads/impl/eq1;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/v51;->c:Lcom/yandex/mobile/ads/impl/qk$a;

    new-instance v9, Lcom/yandex/mobile/ads/impl/o61;

    invoke-direct {v9, p1}, Lcom/yandex/mobile/ads/impl/o61;-><init>(Lcom/yandex/mobile/ads/impl/hq1;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/x61;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/x61;-><init>()V

    move-object v1, v12

    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/u51;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/o61;Lcom/yandex/mobile/ads/impl/x61;)V

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/v7;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/v51;->e:Lcom/yandex/mobile/ads/impl/cf1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/vq0;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "jsonObject"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    const-string v3, "response"

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/v51;->d:Lcom/yandex/mobile/ads/impl/wn1;

    invoke-virtual {v0, v12, v1}, Lcom/yandex/mobile/ads/impl/wn1;->a(Lcom/yandex/mobile/ads/impl/ak;Ljava/lang/String;)V

    :cond_2
    return-object v12
.end method
