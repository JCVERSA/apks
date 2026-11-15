.class public final Lcom/yandex/mobile/ads/impl/ca2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vi2;

.field private final b:Lcom/yandex/mobile/ads/impl/ua2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/wc1;->a()Lcom/yandex/mobile/ads/impl/wi2;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ua2;

    invoke-direct {v1, p1, p2}, Lcom/yandex/mobile/ads/impl/ua2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/ca2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/vi2;Lcom/yandex/mobile/ads/impl/ua2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/vi2;Lcom/yandex/mobile/ads/impl/ua2;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "volleyNetworkResponseDecoder"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vastXmlParser"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ca2;->a:Lcom/yandex/mobile/ads/impl/vi2;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ca2;->b:Lcom/yandex/mobile/ads/impl/ua2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/z92;
    .locals 4

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ca2;->a:Lcom/yandex/mobile/ads/impl/vi2;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/vi2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/wj;

    iget-object v2, p1, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v2

    :cond_0
    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/wj;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ca2;->b:Lcom/yandex/mobile/ads/impl/ua2;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/ua2;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/u92;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/yandex/mobile/ads/impl/vh0;->J:Lcom/yandex/mobile/ads/impl/vh0;

    sget v3, Lcom/yandex/mobile/ads/impl/nf0;->b:I

    const-string v3, "responseHeaders"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "httpHeader"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, v2

    :goto_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/z92;

    invoke-direct {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/z92;-><init>(Lcom/yandex/mobile/ads/impl/u92;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_4
    :goto_2
    return-object v2
.end method
