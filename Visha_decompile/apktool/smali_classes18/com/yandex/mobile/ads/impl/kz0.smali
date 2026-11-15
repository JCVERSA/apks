.class public final Lcom/yandex/mobile/ads/impl/kz0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rz0;

.field private final b:Lcom/yandex/mobile/ads/impl/a01;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/rz0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/rz0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/a01;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/a01;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/kz0;-><init>(Lcom/yandex/mobile/ads/impl/rz0;Lcom/yandex/mobile/ads/impl/a01;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rz0;Lcom/yandex/mobile/ads/impl/a01;)V
    .locals 1

    .line 4
    const-string v0, "mediationNetworkValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationNetworksDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kz0;->a:Lcom/yandex/mobile/ads/impl/rz0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kz0;->b:Lcom/yandex/mobile/ads/impl/a01;

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "ads-mediation"

    goto :goto_0

    :cond_0
    const-string p1, "single"

    :goto_0
    sget v0, Lcom/yandex/mobile/ads/impl/mz0;->e:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/mz0$a;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kz0;->b:Lcom/yandex/mobile/ads/impl/a01;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/a01;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/mobile/ads/impl/qz0;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/kz0;->a:Lcom/yandex/mobile/ads/impl/rz0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/rz0;->a(Lcom/yandex/mobile/ads/impl/qz0;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string p0, "integration_type"

    invoke-static {p0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/qz0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qz0;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v0, "networks"

    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p0, p1}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
