.class public final Lcom/yandex/mobile/ads/impl/in0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/hn0;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/gn0;

    new-instance v4, Lcom/yandex/mobile/ads/impl/vu;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/vu;-><init>()V

    new-instance v5, Lcom/yandex/mobile/ads/impl/z12;

    invoke-direct {v5, p0, p1}, Lcom/yandex/mobile/ads/impl/z12;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/kz;

    invoke-direct {v6, p0}, Lcom/yandex/mobile/ads/impl/kz;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/gn0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/vu;Lcom/yandex/mobile/ads/impl/z12;Lcom/yandex/mobile/ads/impl/kz;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gn0;->a()Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/hn0;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/hn0;-><init>(Ljava/util/List;)V

    return-object p1
.end method
