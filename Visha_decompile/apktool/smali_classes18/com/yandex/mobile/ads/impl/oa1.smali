.class public final Lcom/yandex/mobile/ads/impl/oa1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gx0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/gx0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/gx0;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/oa1;->a:Lcom/yandex/mobile/ads/impl/gx0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/s41;)Z
    .locals 3

    const-string v0, "nativeAdBlock"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/g41;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/oa1;->a:Lcom/yandex/mobile/ads/impl/gx0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/gx0;->a(Lcom/yandex/mobile/ads/impl/g41;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ex0;->c()Lcom/yandex/mobile/ads/impl/lb2;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lb2;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_2
    invoke-static {p0, v0}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->g()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/mb2;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p0, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p0, 0x0

    :goto_4
    return p0
.end method
