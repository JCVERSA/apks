.class public final Lcom/yandex/mobile/ads/impl/p21;
.super Lcom/yandex/mobile/ads/impl/x21;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qj;Lcom/yandex/mobile/ads/impl/bu1$b;Lcom/yandex/mobile/ads/impl/ve2;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/x21$a;Lcom/yandex/mobile/ads/impl/m21;)V
    .locals 1

    const-string v0, "parentHtmlWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlWebViewListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoLifecycleListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlWebViewMraidListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidController"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/yandex/mobile/ads/impl/x21;-><init>(Lcom/yandex/mobile/ads/impl/yf1;Lcom/yandex/mobile/ads/impl/dh0;Lcom/yandex/mobile/ads/impl/x21$a;Lcom/yandex/mobile/ads/impl/m21;)V

    invoke-virtual {p6, p3}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/ve2;)V

    invoke-virtual {p6, p4}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/r11;)V

    return-void
.end method
