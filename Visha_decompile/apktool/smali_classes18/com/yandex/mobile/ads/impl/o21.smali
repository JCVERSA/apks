.class public final Lcom/yandex/mobile/ads/impl/o21;
.super Lcom/yandex/mobile/ads/impl/x21;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gd0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pd0;Lcom/yandex/mobile/ads/impl/hd0;Lcom/yandex/mobile/ads/impl/ld0;Lcom/yandex/mobile/ads/impl/xc0;Lcom/yandex/mobile/ads/impl/ld0;Lcom/yandex/mobile/ads/impl/x21$a;Lcom/yandex/mobile/ads/impl/m21;)V
    .locals 1

    const-string v0, "parentHtmlWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlWebViewListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileAdsSchemeRewardListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCloseButtonListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlWebViewMraidListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidController"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p6, p7}, Lcom/yandex/mobile/ads/impl/x21;-><init>(Lcom/yandex/mobile/ads/impl/yf1;Lcom/yandex/mobile/ads/impl/dh0;Lcom/yandex/mobile/ads/impl/x21$a;Lcom/yandex/mobile/ads/impl/m21;)V

    invoke-virtual {p7, p4}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/ze1;)V

    invoke-virtual {p7, p3}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/s11;)V

    invoke-virtual {p7, p5}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/r11;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/x21;->b()Lcom/yandex/mobile/ads/impl/m21;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m21;->b()V

    return-void
.end method
