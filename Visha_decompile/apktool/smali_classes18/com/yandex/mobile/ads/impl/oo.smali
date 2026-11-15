.class public final synthetic Lcom/yandex/mobile/ads/impl/oo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/po;Ljava/lang/String;I)Lcom/yandex/mobile/ads/impl/po;
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/po;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/yandex/mobile/ads/impl/po;

    invoke-direct {p0, p2, p3}, Lcom/yandex/mobile/ads/impl/po;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method
