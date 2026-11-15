.class public final Lcom/yandex/mobile/ads/impl/vc1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yandex/mobile/ads/impl/sp1;)Lcom/yandex/mobile/ads/impl/wu1;
    .locals 9

    const-string v0, "reporter"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/wu1;

    new-instance v3, Lcom/yandex/mobile/ads/impl/f32;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/f32;-><init>()V

    new-instance v4, Lcom/yandex/mobile/ads/impl/z32;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/z32;-><init>()V

    new-instance v5, Lcom/yandex/mobile/ads/impl/m50;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/m50;-><init>()V

    new-instance v6, Lcom/yandex/mobile/ads/impl/gl;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/gl;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/g60;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/g60;-><init>()V

    new-instance v8, Lcom/yandex/mobile/ads/impl/u6;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/u6;-><init>()V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/wu1;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/hr1;Lcom/yandex/mobile/ads/impl/z32;Lcom/yandex/mobile/ads/impl/m50;Lcom/yandex/mobile/ads/impl/gl;Lcom/yandex/mobile/ads/impl/g60;Lcom/yandex/mobile/ads/impl/u6;)V

    return-object v0
.end method
