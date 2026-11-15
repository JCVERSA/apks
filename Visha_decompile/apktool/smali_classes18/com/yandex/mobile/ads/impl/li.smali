.class public final Lcom/yandex/mobile/ads/impl/li;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/rt;)Ljava/util/Set;
    .locals 3

    const-string v0, "nativeAdAssets"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lxe9;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "body"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "call_to_action"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "domain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->e()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "favicon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->g()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v1

    const-string v2, "media"

    if-eqz v1, :cond_6

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->i()Lcom/yandex/mobile/ads/impl/xt;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "price"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->k()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "rating"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, "review_count"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v1, "sponsored"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v1, "warning"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->f()Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "feedback"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {v0}, Lxe9;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
