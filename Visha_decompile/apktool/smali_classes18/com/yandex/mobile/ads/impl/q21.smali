.class public final Lcom/yandex/mobile/ads/impl/q21;
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
    .locals 8

    .line 7
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

    .line 8
    new-instance p0, Lcom/yandex/mobile/ads/impl/o21;

    .line 9
    new-instance v6, Lcom/yandex/mobile/ads/impl/x21$a;

    invoke-direct {v6, p2}, Lcom/yandex/mobile/ads/impl/x21$a;-><init>(Lcom/yandex/mobile/ads/impl/dh0;)V

    .line 10
    new-instance v7, Lcom/yandex/mobile/ads/impl/m21;

    invoke-direct {v7, p1}, Lcom/yandex/mobile/ads/impl/m21;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/o21;-><init>(Lcom/yandex/mobile/ads/impl/pd0;Lcom/yandex/mobile/ads/impl/hd0;Lcom/yandex/mobile/ads/impl/ld0;Lcom/yandex/mobile/ads/impl/xc0;Lcom/yandex/mobile/ads/impl/ld0;Lcom/yandex/mobile/ads/impl/x21$a;Lcom/yandex/mobile/ads/impl/m21;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/x21;->a(Lcom/yandex/mobile/ads/impl/dh0;)V

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/qj;Lcom/yandex/mobile/ads/impl/bu1$b;Lcom/yandex/mobile/ads/impl/ve2;Lcom/yandex/mobile/ads/impl/pk0;)Lcom/yandex/mobile/ads/impl/xg0;
    .locals 7

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
    new-instance p0, Lcom/yandex/mobile/ads/impl/p21;

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/x21$a;

    invoke-direct {v5, p2}, Lcom/yandex/mobile/ads/impl/x21$a;-><init>(Lcom/yandex/mobile/ads/impl/dh0;)V

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/m21;

    invoke-direct {v6, p1}, Lcom/yandex/mobile/ads/impl/m21;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/p21;-><init>(Lcom/yandex/mobile/ads/impl/qj;Lcom/yandex/mobile/ads/impl/bu1$b;Lcom/yandex/mobile/ads/impl/ve2;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/x21$a;Lcom/yandex/mobile/ads/impl/m21;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/x21;->a(Lcom/yandex/mobile/ads/impl/dh0;)V

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/dh0;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/n21;)Lcom/yandex/mobile/ads/impl/xg0;
    .locals 9

    .line 13
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

    .line 14
    new-instance p0, Lcom/yandex/mobile/ads/impl/v21;

    .line 15
    new-instance v7, Lcom/yandex/mobile/ads/impl/x21$a;

    invoke-direct {v7, p2}, Lcom/yandex/mobile/ads/impl/x21$a;-><init>(Lcom/yandex/mobile/ads/impl/dh0;)V

    .line 16
    new-instance v8, Lcom/yandex/mobile/ads/impl/m21;

    invoke-direct {v8, p1}, Lcom/yandex/mobile/ads/impl/m21;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 17
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/v21;-><init>(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/dh0;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/x21$a;Lcom/yandex/mobile/ads/impl/m21;)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/x21;->a(Lcom/yandex/mobile/ads/impl/dh0;)V

    return-object p0
.end method
