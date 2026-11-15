.class public final Lcom/yandex/mobile/ads/impl/ny0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/e40;

.field private final b:Lcom/yandex/mobile/ads/impl/vj0;

.field private final c:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/e40;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/e40;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/vj0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/vj0;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/ny0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/e40;Lcom/yandex/mobile/ads/impl/vj0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/e40;Lcom/yandex/mobile/ads/impl/vj0;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawableConverter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageSizeValidator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ny0;->a:Lcom/yandex/mobile/ads/impl/e40;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ny0;->b:Lcom/yandex/mobile/ads/impl/vj0;

    .line 8
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ih1;->b(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ny0;->c:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/LinkedHashSet;
    .locals 8

    const-string v0, "images"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;->getHeight()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ny0;->b:Lcom/yandex/mobile/ads/impl/vj0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v2, :cond_1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ny0;->c:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    new-instance v1, Lcom/yandex/mobile/ads/impl/xj0;

    const/4 v6, 0x0

    const/16 v7, 0x78

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/xj0;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final b(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 4

    const-string v0, "nativeAdImages"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ny0;->a:Lcom/yandex/mobile/ads/impl/e40;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/e40;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
