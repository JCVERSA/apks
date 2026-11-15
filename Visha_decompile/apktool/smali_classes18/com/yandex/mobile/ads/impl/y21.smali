.class public final Lcom/yandex/mobile/ads/impl/y21;
.super Lcom/yandex/mobile/ads/impl/vg2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/vg2<",
        "Lcom/yandex/mobile/ads/impl/w21;",
        "Lcom/yandex/mobile/ads/impl/wu0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/w21;)V
    .locals 1

    const-string v0, "mraidWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/yandex/mobile/ads/impl/wu0;

    .line 2
    const-string p3, "asset"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "viewConfigurator"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/w21;

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2, p0, p1}, Lcom/yandex/mobile/ads/impl/yg2;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ig;)V

    .line 5
    new-instance p3, Lcom/yandex/mobile/ads/impl/i21;

    invoke-direct {p3, p0}, Lcom/yandex/mobile/ads/impl/i21;-><init>(Lcom/yandex/mobile/ads/impl/w21;)V

    invoke-interface {p2, p1, p3}, Lcom/yandex/mobile/ads/impl/yg2;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/ap;)V

    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/yandex/mobile/ads/impl/w21;

    check-cast p2, Lcom/yandex/mobile/ads/impl/wu0;

    .line 7
    const-string p0, "mraidWebView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "media"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/yandex/mobile/ads/impl/w21;

    check-cast p2, Lcom/yandex/mobile/ads/impl/wu0;

    const-string p0, "mraidWebView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "media"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/wu0;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/wu0;->a()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/w21;->setAspectRatio(F)V

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/w21;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
