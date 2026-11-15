.class public final Lcom/yandex/mobile/ads/impl/vq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/b10;Lcom/yandex/mobile/ads/impl/sp1;)Lcom/yandex/mobile/ads/impl/ar;
    .locals 10

    const-string v0, "nativeAd"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTypeSpecificBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->getAdAssets()Lcom/yandex/mobile/ads/impl/rt;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/ar;

    new-instance v9, Lcom/yandex/mobile/ads/impl/be0;

    new-instance v7, Lcom/yandex/mobile/ads/impl/eh;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/yandex/mobile/ads/impl/eh;-><init>(Ljava/util/Collection;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/k41;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/k41;-><init>()V

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/be0;-><init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/eh;Lcom/yandex/mobile/ads/impl/k41;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/yc;

    new-instance p1, Lcom/yandex/mobile/ads/impl/n51;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/n51;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/yc;-><init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/n51;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/xv0;

    new-instance p2, Lcom/yandex/mobile/ads/impl/a51;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/a51;-><init>()V

    invoke-direct {p1, v0, p2}, Lcom/yandex/mobile/ads/impl/xv0;-><init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/a51;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/nn1;

    new-instance p4, Lcom/yandex/mobile/ads/impl/on1;

    invoke-direct {p4}, Lcom/yandex/mobile/ads/impl/on1;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/h41;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/h41;-><init>()V

    new-instance v3, Lcom/yandex/mobile/ads/impl/a51;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/a51;-><init>()V

    invoke-direct {p2, v0, p4, v2, v3}, Lcom/yandex/mobile/ads/impl/nn1;-><init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/on1;Lcom/yandex/mobile/ads/impl/h41;Lcom/yandex/mobile/ads/impl/a51;)V

    const/4 p4, 0x5

    new-array p4, p4, [Lcom/yandex/mobile/ads/impl/b10;

    const/4 v0, 0x0

    aput-object v9, p4, v0

    const/4 v0, 0x1

    aput-object p0, p4, v0

    const/4 p0, 0x2

    aput-object p1, p4, p0

    const/4 p0, 0x3

    aput-object p2, p4, p0

    const/4 p0, 0x4

    aput-object p3, p4, p0

    invoke-direct {v1, p4}, Lcom/yandex/mobile/ads/impl/ar;-><init>([Lcom/yandex/mobile/ads/impl/b10;)V

    return-object v1
.end method
