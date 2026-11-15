.class public final Lcom/yandex/mobile/ads/impl/fj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vj0;

.field private final b:Lcom/yandex/mobile/ads/impl/uj0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/vj0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/uj0;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/uj0;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/fj0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/vj0;Lcom/yandex/mobile/ads/impl/uj0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/vj0;Lcom/yandex/mobile/ads/impl/uj0;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageSizeValidator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageSizeTypeProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fj0;->a:Lcom/yandex/mobile/ads/impl/vj0;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fj0;->b:Lcom/yandex/mobile/ads/impl/uj0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;)Lcom/yandex/mobile/ads/impl/xj0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;",
            ")",
            "Lcom/yandex/mobile/ads/impl/xj0;"
        }
    .end annotation

    const-string v0, "imageValues"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;->getHeight()I

    move-result v3

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/fj0;->a:Lcom/yandex/mobile/ads/impl/vj0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fj0;->b:Lcom/yandex/mobile/ads/impl/uj0;

    invoke-virtual {p0, v2, v3}, Lcom/yandex/mobile/ads/impl/uj0;->a(II)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/yandex/mobile/ads/impl/xj0;

    const/16 v6, 0x70

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/xj0;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fj0;->b:Lcom/yandex/mobile/ads/impl/uj0;

    invoke-virtual {p0, v2, v3}, Lcom/yandex/mobile/ads/impl/uj0;->a(II)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/yandex/mobile/ads/impl/xj0;

    const/16 v6, 0x70

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/xj0;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object v0
.end method
