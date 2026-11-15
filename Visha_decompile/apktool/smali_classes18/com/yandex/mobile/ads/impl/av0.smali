.class public final Lcom/yandex/mobile/ads/impl/av0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fj0;)V
    .locals 1

    const-string v0, "imageAssetConverter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/av0;->a:Lcom/yandex/mobile/ads/impl/fj0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdMedia;)Lcom/yandex/mobile/ads/impl/ex0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdMedia;",
            ")",
            "Lcom/yandex/mobile/ads/impl/ex0;"
        }
    .end annotation

    const-string v0, "imageValues"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/wu0;

    invoke-virtual {p3}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdMedia;->getAspectRatio()F

    move-result p3

    invoke-direct {v1, v0, p3}, Lcom/yandex/mobile/ads/impl/wu0;-><init>(Ljava/lang/String;F)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/av0;->a:Lcom/yandex/mobile/ads/impl/fj0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/fj0;->a(Ljava/util/Map;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object p0

    if-eqz p0, :cond_1

    filled-new-array {p0}, [Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object p0

    invoke-static {p0}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-nez v1, :cond_2

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    new-instance p1, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-direct {p1, v1, v0, p0}, Lcom/yandex/mobile/ads/impl/ex0;-><init>(Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/lb2;Ljava/util/List;)V

    return-object p1
.end method
