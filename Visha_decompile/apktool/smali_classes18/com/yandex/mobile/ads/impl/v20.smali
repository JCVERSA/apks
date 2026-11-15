.class public final Lcom/yandex/mobile/ads/impl/v20;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/uo;

.field private b:Lcom/yandex/mobile/ads/impl/vo;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/uo;)V
    .locals 1

    const-string v0, "mainClickConnector"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v20;->a:Lcom/yandex/mobile/ads/impl/uo;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "assetName"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p1}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v20;->a:Lcom/yandex/mobile/ads/impl/uo;

    invoke-virtual {p0, p2, v0}, Lcom/yandex/mobile/ads/impl/uo;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v20;->b:Lcom/yandex/mobile/ads/impl/vo;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vo;->a()Ljava/util/LinkedHashMap;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object p0

    .line 6
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/uo;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p2, v0}, Lcom/yandex/mobile/ads/impl/uo;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vo;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v20;->b:Lcom/yandex/mobile/ads/impl/vo;

    return-void
.end method
