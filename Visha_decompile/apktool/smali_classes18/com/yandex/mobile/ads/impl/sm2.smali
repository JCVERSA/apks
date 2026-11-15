.class public final Lcom/yandex/mobile/ads/impl/sm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/NativeAdImage;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tt;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tt;)V
    .locals 1

    const-string v0, "image"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sm2;->a:Lcom/yandex/mobile/ads/impl/tt;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/sm2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/sm2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sm2;->a:Lcom/yandex/mobile/ads/impl/tt;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/sm2;->a:Lcom/yandex/mobile/ads/impl/tt;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sm2;->a:Lcom/yandex/mobile/ads/impl/tt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->a()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sm2;->a:Lcom/yandex/mobile/ads/impl/tt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->b()I

    move-result p0

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sm2;->a:Lcom/yandex/mobile/ads/impl/tt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->d()I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sm2;->a:Lcom/yandex/mobile/ads/impl/tt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sm2;->a:Lcom/yandex/mobile/ads/impl/tt;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YandexNativeAdImageAdapter(image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
