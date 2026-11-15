.class public final Lcom/yandex/mobile/ads/impl/fw1;
.super Lfd7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfd7;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/dw1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/cw1;Lcom/yandex/mobile/ads/impl/dw1;)V
    .locals 0

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fw1;->a:Lcom/yandex/mobile/ads/impl/dw1;

    invoke-direct {p0, p1}, Lfd7;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Laf5;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf5;",
            "Lcom/yandex/mobile/ads/impl/hx0;",
            "Lcom/yandex/mobile/ads/impl/hx0;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/yandex/mobile/ads/impl/hx0;

    check-cast p2, Lcom/yandex/mobile/ads/impl/hx0;

    invoke-static {p3, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fw1;->a:Lcom/yandex/mobile/ads/impl/dw1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/dw1;->d(Lcom/yandex/mobile/ads/impl/dw1;)Lcom/monetization/ads/nativeads/CustomizableMediaView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fw1;->a:Lcom/yandex/mobile/ads/impl/dw1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dw1;->c(Lcom/yandex/mobile/ads/impl/dw1;)Lcom/yandex/mobile/ads/impl/ex0;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/hx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/ew1;

    invoke-direct {p2, p3, p1, p0}, Lcom/yandex/mobile/ads/impl/ew1;-><init>(Lcom/yandex/mobile/ads/impl/hx0;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
