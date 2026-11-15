.class public final Lcom/yandex/mobile/ads/impl/m20;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/sp1;)Lcom/yandex/mobile/ads/impl/b10;
    .locals 11

    const-string v0, "nativeAdPrivate"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickConnector"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/mobile/ads/impl/b02;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/a02;

    move-object v2, p0

    check-cast v2, Lcom/yandex/mobile/ads/impl/b02;

    new-instance v7, Lcom/yandex/mobile/ads/impl/l41;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/l41;-><init>()V

    new-instance v8, Lcom/yandex/mobile/ads/impl/r61;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/r61;-><init>()V

    new-instance v9, Lcom/yandex/mobile/ads/impl/eh;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/r61;->b(Lcom/yandex/mobile/ads/impl/q61;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/yandex/mobile/ads/impl/eh;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/a02;-><init>(Lcom/yandex/mobile/ads/impl/b02;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/j41;Lcom/yandex/mobile/ads/impl/r61;Lcom/yandex/mobile/ads/impl/eh;)V

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/yandex/mobile/ads/impl/m51;

    new-instance v7, Lcom/yandex/mobile/ads/impl/l41;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/l41;-><init>()V

    new-instance v8, Lcom/yandex/mobile/ads/impl/r61;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/r61;-><init>()V

    new-instance v10, Lcom/yandex/mobile/ads/impl/eh;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/r61;->a(Lcom/yandex/mobile/ads/impl/q61;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/yandex/mobile/ads/impl/eh;-><init>(Ljava/util/Collection;)V

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/m51;-><init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/j41;Lcom/yandex/mobile/ads/impl/r61;Lcom/yandex/mobile/ads/impl/eh;)V

    :goto_0
    return-object v0
.end method
