.class public final Lcom/yandex/mobile/ads/impl/xd0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/wd0;
    .locals 9

    const-string v0, "adRequestData"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/wd0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v7;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v7;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v7;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v7;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v7;->d()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v7;->h()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v7;->i()Lcom/yandex/mobile/ads/impl/nq1;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/wd0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/nq1;)V

    return-object v0
.end method
