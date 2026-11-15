.class public final Lcom/yandex/mobile/ads/impl/n61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/de2;

.field private final b:Lcom/yandex/mobile/ads/impl/o31;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/de2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/de2;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/o31;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/o31;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/n61;-><init>(Lcom/yandex/mobile/ads/impl/de2;Lcom/yandex/mobile/ads/impl/o31;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/de2;Lcom/yandex/mobile/ads/impl/o31;)V
    .locals 1

    .line 4
    const-string v0, "aspectRatioProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiBannerRatioProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n61;->a:Lcom/yandex/mobile/ads/impl/de2;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/n61;->b:Lcom/yandex/mobile/ads/impl/o31;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ex0;)Lcom/yandex/mobile/ads/impl/xt;
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->c()Lcom/yandex/mobile/ads/impl/lb2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->b()Lcom/yandex/mobile/ads/impl/wu0;

    move-result-object p1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n61;->a:Lcom/yandex/mobile/ads/impl/de2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lb2;->b()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "videoAdInfo"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/kb1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kb1;->getAdHeight()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kb1;->getAdWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kb1;->getAdHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    const p1, 0x3fe38e39

    :goto_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/xt;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/xt;-><init>(F)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n61;->b:Lcom/yandex/mobile/ads/impl/o31;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/o31;->a(Ljava/util/List;)D

    move-result-wide p0

    double-to-float p0, p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/xt;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/xt;-><init>(F)V

    move-object p0, p1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    new-instance p0, Lcom/yandex/mobile/ads/impl/xt;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wu0;->a()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/xt;-><init>(F)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
