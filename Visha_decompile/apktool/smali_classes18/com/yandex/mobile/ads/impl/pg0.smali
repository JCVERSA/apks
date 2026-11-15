.class public abstract Lcom/yandex/mobile/ads/impl/pg0;
.super Lcom/yandex/mobile/ads/impl/ck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/ck<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final w:Lcom/yandex/mobile/ads/impl/cf1;

.field private final x:Lcom/yandex/mobile/ads/impl/wn1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/su;->a()Lnk1;

    move-result-object v4

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/cf1;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/cf1;-><init>()V

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/wn1;->b:Lcom/yandex/mobile/ads/impl/wn1$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wn1$a;->a()Lcom/yandex/mobile/ads/impl/wn1;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/pg0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lnk1;Lcom/yandex/mobile/ads/impl/cf1;Lcom/yandex/mobile/ads/impl/wn1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lnk1;Lcom/yandex/mobile/ads/impl/cf1;Lcom/yandex/mobile/ads/impl/wn1;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openBiddingReadyResponseProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseStorage"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/yandex/mobile/ads/impl/ck;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/o3;Lnk1;)V

    .line 7
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/pg0;->w:Lcom/yandex/mobile/ads/impl/cf1;

    .line 8
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/pg0;->x:Lcom/yandex/mobile/ads/impl/wn1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ak;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/mobile/ads/impl/ak<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/u3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v3

    sget-object v1, Lcom/yandex/mobile/ads/impl/sx1;->a:Lcom/yandex/mobile/ads/impl/sx1$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/sx1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/sx1;

    move-result-object v8

    new-instance v9, Lcom/yandex/mobile/ads/impl/qg0;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/qg0;-><init>()V

    new-instance v10, Lcom/yandex/mobile/ads/impl/d8;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/d8;-><init>()V

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/u3;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/sx1;Lcom/yandex/mobile/ads/impl/cd1;Lcom/yandex/mobile/ads/impl/d8;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v7;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pg0;->w:Lcom/yandex/mobile/ads/impl/cf1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/vq0;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "jsonObject"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    const-string v2, "response"

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pg0;->x:Lcom/yandex/mobile/ads/impl/wn1;

    invoke-virtual {p0, v0, p2}, Lcom/yandex/mobile/ads/impl/wn1;->a(Lcom/yandex/mobile/ads/impl/ak;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
