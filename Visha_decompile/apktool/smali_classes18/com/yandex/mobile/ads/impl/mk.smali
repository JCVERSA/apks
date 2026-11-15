.class public final Lcom/yandex/mobile/ads/impl/mk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yg0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/pd0;Lcom/yandex/mobile/ads/impl/hd0;Lcom/yandex/mobile/ads/impl/ld0;Lcom/yandex/mobile/ads/impl/xc0;Lcom/yandex/mobile/ads/impl/ld0;)Lcom/yandex/mobile/ads/impl/gd0;
    .locals 0

    .line 4
    const-string p0, "parentHtmlWebView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "htmlWebViewListener"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rewardListener"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onCloseButtonListener"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "impressionListener"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p0, Lcom/yandex/mobile/ads/impl/kk;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/kk;-><init>(Lcom/yandex/mobile/ads/impl/pd0;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/lk;->a(Lcom/yandex/mobile/ads/impl/dh0;)V

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/qj;Lcom/yandex/mobile/ads/impl/bu1$b;Lcom/yandex/mobile/ads/impl/ve2;Lcom/yandex/mobile/ads/impl/pk0;)Lcom/yandex/mobile/ads/impl/xg0;
    .locals 0

    .line 1
    const-string p0, "parentHtmlWebView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "htmlWebViewListener"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "videoLifecycleListener"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "impressionListener"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/yandex/mobile/ads/impl/lk;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/lk;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/lk;->a(Lcom/yandex/mobile/ads/impl/dh0;)V

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/dh0;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/n21;)Lcom/yandex/mobile/ads/impl/xg0;
    .locals 0

    .line 7
    const-string p0, "parentHtmlWebView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "htmlWebViewListener"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "videoLifecycleListener"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "impressionListener"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rewardListener"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onCloseButtonListener"

    invoke-static {p6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p0, Lcom/yandex/mobile/ads/impl/lk;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/lk;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/lk;->a(Lcom/yandex/mobile/ads/impl/dh0;)V

    return-object p0
.end method
