.class public final Lcom/yandex/mobile/ads/impl/ha;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/k62;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/k62;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/k62;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ha;-><init>(Lcom/yandex/mobile/ads/impl/k62;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/k62;)V
    .locals 1

    .line 3
    const-string v0, "trackingDataCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ha;->a:Lcom/yandex/mobile/ads/impl/k62;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/s41;)Lcom/yandex/mobile/ads/impl/fc1;
    .locals 6

    const-string v0, "nativeAdBlock"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->b()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ha;->a:Lcom/yandex/mobile/ads/impl/k62;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/impl/k62;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ha;->a:Lcom/yandex/mobile/ads/impl/k62;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->g()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/impl/k62;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->d()Lcom/yandex/mobile/ads/impl/t4;

    move-result-object v5

    new-instance p0, Lcom/yandex/mobile/ads/impl/fc1;

    const-string v4, "ad_unit"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/fc1;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V

    return-object p0
.end method
