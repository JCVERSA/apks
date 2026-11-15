.class public final Lcom/yandex/mobile/ads/impl/fa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/iy$g;)Ljava/util/List;
    .locals 8

    const-string v0, "adapter"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx71;->c()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/iy$d;->a:Lcom/yandex/mobile/ads/impl/iy$d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yandex/mobile/ads/impl/iy$e;

    const-string v2, "Info"

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->i()Lcom/yandex/mobile/ads/impl/sw;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/sw;->c:Lcom/yandex/mobile/ads/impl/sw;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "ID"

    :goto_1
    new-instance v2, Lcom/yandex/mobile/ads/impl/iy$f;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Lcom/yandex/mobile/ads/impl/iy$f;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->i()Lcom/yandex/mobile/ads/impl/sw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/sw;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Type"

    invoke-direct {v1, v3, v2}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/px;

    new-instance v3, Lcom/yandex/mobile/ads/impl/iy$f;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/px;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/px;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_6

    :cond_4
    sget-object v1, Lcom/yandex/mobile/ads/impl/iy$d;->a:Lcom/yandex/mobile/ads/impl/iy$d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yandex/mobile/ads/impl/iy$e;

    const-string v2, "CPM floors"

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/iy$e;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    :goto_3
    const-string v1, ""

    :goto_4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/ly;

    new-instance v3, Lcom/yandex/mobile/ads/impl/iy$f;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ly;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ly;->a()D

    move-result-wide v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpm: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    :goto_6
    invoke-static {v0}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
