.class public final Lcom/yandex/mobile/ads/impl/qp1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/yandex/mobile/ads/impl/pp1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pp1;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pp1;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/pp1;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/collections/a;->s(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/pp1;

    invoke-direct {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p1
.end method
