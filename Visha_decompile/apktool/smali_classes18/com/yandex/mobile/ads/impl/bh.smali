.class public final Lcom/yandex/mobile/ads/impl/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zj0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/zj0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/zj0;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/bh;-><init>(Lcom/yandex/mobile/ads/impl/zj0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zj0;)V
    .locals 1

    .line 3
    const-string v0, "imageValueValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bh;->a:Lcom/yandex/mobile/ads/impl/zj0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "images"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ig;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ig;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-static {v4, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v2, Lcom/yandex/mobile/ads/impl/xj0;

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bh;->a:Lcom/yandex/mobile/ads/impl/zj0;

    check-cast v2, Lcom/yandex/mobile/ads/impl/xj0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2}, Lcom/yandex/mobile/ads/impl/zj0;->a(Lcom/yandex/mobile/ads/impl/xj0;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v4, "media"

    invoke-static {v4, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v2, Lcom/yandex/mobile/ads/impl/ex0;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v4, "null cannot be cast to non-null type com.monetization.ads.network.model.MediaValue"

    invoke-static {v2, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/xj0;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ex0;->c()Lcom/yandex/mobile/ads/impl/lb2;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ex0;->b()Lcom/yandex/mobile/ads/impl/wu0;

    move-result-object v3

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bh;->a:Lcom/yandex/mobile/ads/impl/zj0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2}, Lcom/yandex/mobile/ads/impl/zj0;->a(Lcom/yandex/mobile/ads/impl/xj0;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method
