.class public final Lcom/yandex/mobile/ads/impl/ap0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a01;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/a01;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/a01;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ap0;-><init>(Lcom/yandex/mobile/ads/impl/a01;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/a01;)V
    .locals 1

    .line 3
    const-string v0, "mediationNetworksDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ap0;->a:Lcom/yandex/mobile/ads/impl/a01;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ap0;->a:Lcom/yandex/mobile/ads/impl/a01;

    sget v0, Lcom/yandex/mobile/ads/impl/mz0;->e:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/mz0$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/a01;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/qz0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/qz0;->b()Ljava/util/List;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/qz0$c;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/qz0$c;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
