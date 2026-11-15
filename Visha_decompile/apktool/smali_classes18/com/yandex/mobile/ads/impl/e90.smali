.class public final Lcom/yandex/mobile/ads/impl/e90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/y80;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/y80;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/y80;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/e90;-><init>(Lcom/yandex/mobile/ads/impl/y80;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/y80;)V
    .locals 1

    .line 3
    const-string v0, "appearanceParametersProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e90;->a:Lcom/yandex/mobile/ads/impl/y80;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;Lcom/yandex/mobile/ads/feed/FeedAdAppearance;)Lcom/yandex/mobile/ads/impl/v7;
    .locals 2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e90;->a:Lcom/yandex/mobile/ads/impl/y80;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "appearance"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lky5;->e()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/feed/FeedAdAppearance;->getCardCornerRadius()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/feed/FeedAdAppearance;->getCardCornerRadius()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "card_corner_radius"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/feed/FeedAdAppearance;->getCardWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/feed/FeedAdAppearance;->getCardWidth()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "card_width"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p0}, Lky5;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object p0

    :cond_3
    invoke-static {}, Lky5;->e()Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;->getParameters()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    invoke-interface {p2, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p2}, Lky5;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    new-instance p2, Lcom/yandex/mobile/ads/impl/v7$a;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    invoke-direct {p2, v1}, Lcom/yandex/mobile/ads/impl/v7$a;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;->getAge()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-object v1, v0

    :goto_2
    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/v7$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;->getGender()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    move-object v1, v0

    :goto_3
    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/v7$a;->c(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p2

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;->getContextQuery()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_a
    move-object v1, v0

    :goto_4
    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/v7$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p2

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;->getContextTags()Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :cond_b
    move-object v1, v0

    :goto_5
    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/v7$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p2

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;->getLocation()Landroid/location/Location;

    move-result-object v0

    :cond_c
    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/v7$a;->a(Landroid/location/Location;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/v7$a;->a(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v7$a;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object p0

    return-object p0
.end method
