.class public final Lcom/yandex/mobile/ads/impl/no0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vu;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/vu;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/vu;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/no0;-><init>(Lcom/yandex/mobile/ads/impl/vu;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vu;)V
    .locals 1

    .line 3
    const-string v0, "creativeAssetsProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/no0;->a:Lcom/yandex/mobile/ads/impl/vu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/uu;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/he2;
    .locals 3

    const-string v0, "creative"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/no0;->a:Lcom/yandex/mobile/ads/impl/vu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/vu;->a(Lcom/yandex/mobile/ads/impl/uu;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/yandex/mobile/ads/impl/ig;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ig;->a()Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vr0;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vr0;->d()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/yandex/mobile/ads/impl/he2;

    invoke-direct {p2, p0, p1}, Lcom/yandex/mobile/ads/impl/he2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/uu;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/uu;->a()Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    const-string p2, "clickTracking"

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-static {p1}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_5
    new-instance p2, Lcom/yandex/mobile/ads/impl/he2;

    invoke-direct {p2, p0, p1}, Lcom/yandex/mobile/ads/impl/he2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    return-object p2
.end method
