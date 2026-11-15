.class public final Lcom/yandex/mobile/ads/impl/qm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rt;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rt;)V
    .locals 1

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/qm2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/qm2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAge()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFavicon()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->e()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/sm2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/sm2;-><init>(Lcom/yandex/mobile/ads/impl/tt;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getIcon()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->g()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/sm2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/sm2;-><init>(Lcom/yandex/mobile/ads/impl/tt;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getImage()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/sm2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/sm2;-><init>(Lcom/yandex/mobile/ads/impl/tt;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMedia()Lcom/yandex/mobile/ads/nativeads/NativeAdMedia;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->i()Lcom/yandex/mobile/ads/impl/xt;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/vm2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/vm2;-><init>(Lcom/yandex/mobile/ads/impl/xt;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRating()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->k()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getReviewCount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSponsored()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWarning()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isFeedbackAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->f()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qm2;->a:Lcom/yandex/mobile/ads/impl/rt;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YandexNativeAdAssetsAdapter(assets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
