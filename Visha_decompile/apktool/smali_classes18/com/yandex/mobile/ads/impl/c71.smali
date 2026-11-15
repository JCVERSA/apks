.class public final Lcom/yandex/mobile/ads/impl/c71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ir1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/ir1<",
        "Lcom/yandex/mobile/ads/impl/y61;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vi2;

.field private final b:Lcom/yandex/mobile/ads/impl/k91;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/wc1;->a()Lcom/yandex/mobile/ads/impl/wi2;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/k91;

    invoke-direct {v1, p1, p2}, Lcom/yandex/mobile/ads/impl/k91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/c71;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/vi2;Lcom/yandex/mobile/ads/impl/k91;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/vi2;Lcom/yandex/mobile/ads/impl/k91;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "volleyNetworkResponseDecoder"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeJsonParser"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/c71;->a:Lcom/yandex/mobile/ads/impl/vi2;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/c71;->b:Lcom/yandex/mobile/ads/impl/k91;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/y61;
    .locals 1

    .line 1
    const-string v0, "stringResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64EncodingParameters"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c71;->b:Lcom/yandex/mobile/ads/impl/k91;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/k91;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/yandex/mobile/ads/impl/t61; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :catch_1
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/Object;
    .locals 2

    .line 5
    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/c71;->a:Lcom/yandex/mobile/ads/impl/vi2;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/vi2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/wj;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object p1

    :cond_1
    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/wj;-><init>(Ljava/util/Map;)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/c71;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
