.class public final Lcom/yandex/mobile/ads/impl/v21;
.super Lcom/yandex/mobile/ads/impl/x21;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/dh0;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/x21$a;Lcom/yandex/mobile/ads/impl/m21;)V
    .locals 1

    const-string v0, "parentHtmlWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlWebViewListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoLifecycleListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCloseButtonListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlWebViewMraidListener"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidController"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p7, p8}, Lcom/yandex/mobile/ads/impl/x21;-><init>(Lcom/yandex/mobile/ads/impl/yf1;Lcom/yandex/mobile/ads/impl/dh0;Lcom/yandex/mobile/ads/impl/x21$a;Lcom/yandex/mobile/ads/impl/m21;)V

    invoke-virtual {p8, p3}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/ve2;)V

    invoke-virtual {p8, p4}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/r11;)V

    invoke-virtual {p8, p5}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/s11;)V

    invoke-virtual {p8, p6}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/ze1;)V

    return-void
.end method
