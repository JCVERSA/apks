.class public final Lcom/yandex/mobile/ads/impl/fi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lcom/yandex/mobile/ads/impl/gi;
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/gi;

    new-instance v1, Lcom/yandex/mobile/ads/impl/kx1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/kx1;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/di;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/di;-><init>(Lcom/yandex/mobile/ads/impl/kx1;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/af;->a()Lcom/yandex/mobile/ads/impl/ze;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/gi;-><init>(Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/di;Lcom/yandex/mobile/ads/impl/hi;)V

    return-object v0
.end method
