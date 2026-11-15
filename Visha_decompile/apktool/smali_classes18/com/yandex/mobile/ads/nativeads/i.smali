.class public final Lcom/yandex/mobile/ads/nativeads/i;
.super Lcom/yandex/mobile/ads/nativeads/e;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/SliderAd;


# instance fields
.field private final d:Lcom/yandex/mobile/ads/impl/b02;

.field private final e:Lcom/yandex/mobile/ads/nativeads/g;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b02;Lcom/yandex/mobile/ads/nativeads/g;)V
    .locals 1

    const-string v0, "sliderAdPrivate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdViewBinderAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/e;-><init>(Lcom/yandex/mobile/ads/impl/q61;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/i;->d:Lcom/yandex/mobile/ads/impl/b02;

    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/i;->e:Lcom/yandex/mobile/ads/nativeads/g;

    return-void
.end method


# virtual methods
.method public final bindSliderAd(Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder;)V
    .locals 1

    const-string v0, "viewBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/i;->e:Lcom/yandex/mobile/ads/nativeads/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/g;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder;)Lcom/yandex/mobile/ads/impl/k71;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/i;->d:Lcom/yandex/mobile/ads/impl/b02;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/b02;->a(Lcom/yandex/mobile/ads/impl/k71;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/nativeads/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/nativeads/i;

    iget-object p1, p1, Lcom/yandex/mobile/ads/nativeads/i;->d:Lcom/yandex/mobile/ads/impl/b02;

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/i;->d:Lcom/yandex/mobile/ads/impl/b02;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getNativeAds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/nativeads/NativeAd;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/i;->d:Lcom/yandex/mobile/ads/impl/b02;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/b02;->d()Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/q61;

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/e;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/nativeads/e;-><init>(Lcom/yandex/mobile/ads/impl/q61;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/i;->d:Lcom/yandex/mobile/ads/impl/b02;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
