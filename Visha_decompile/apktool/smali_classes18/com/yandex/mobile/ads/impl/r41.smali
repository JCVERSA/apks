.class public final Lcom/yandex/mobile/ads/impl/r41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/k62;

.field private final b:Lcom/yandex/mobile/ads/impl/y81;

.field private final c:Lcom/yandex/mobile/ads/impl/yz1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/k62;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/k62;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/y81;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/y81;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/yz1;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/yz1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/r41;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/k62;Lcom/yandex/mobile/ads/impl/y81;Lcom/yandex/mobile/ads/impl/yz1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/k62;Lcom/yandex/mobile/ads/impl/y81;Lcom/yandex/mobile/ads/impl/yz1;)V
    .locals 1

    .line 5
    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "trackingDataCreator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeGenericAdsCreator"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sliderAdBinderConfigurationCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/r41;->a:Lcom/yandex/mobile/ads/impl/k62;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/r41;->b:Lcom/yandex/mobile/ads/impl/y81;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/r41;->c:Lcom/yandex/mobile/ads/impl/yz1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/fc1;
    .locals 9

    .line 7
    const-string v0, "nativeAdBlock"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/r41;->a:Lcom/yandex/mobile/ads/impl/k62;

    .line 9
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/g41;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/y61;->i()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/k62;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r41;->a:Lcom/yandex/mobile/ads/impl/k62;

    .line 12
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/g41;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->g()Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/k62;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    .line 14
    new-instance p0, Lcom/yandex/mobile/ads/impl/fc1;

    .line 15
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/g41;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/g41;->a()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/g41;->c()Lcom/yandex/mobile/ads/impl/t4;

    move-result-object v8

    move-object v3, p0

    .line 17
    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/fc1;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V

    return-object p0
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/e51;)Lcom/yandex/mobile/ads/impl/k81;
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdBlock"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdFactoriesProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdControllers"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/gc0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/gc0;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/r41;->b:Lcom/yandex/mobile/ads/impl/y81;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/y81;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/gc0;Lcom/yandex/mobile/ads/impl/e51;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    new-instance v7, Lcom/yandex/mobile/ads/impl/j81;

    invoke-direct {v7, v1}, Lcom/yandex/mobile/ads/impl/j81;-><init>(Ljava/util/ArrayList;)V

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/r41;->c:Lcom/yandex/mobile/ads/impl/yz1;

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/yz1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/j81;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/gc0;)Lcom/yandex/mobile/ads/impl/kl;

    move-result-object v6

    .line 6
    new-instance p0, Lcom/yandex/mobile/ads/impl/k81;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/k81;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/j81;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/kl;Lcom/yandex/mobile/ads/impl/e51;)V

    return-object p0
.end method
