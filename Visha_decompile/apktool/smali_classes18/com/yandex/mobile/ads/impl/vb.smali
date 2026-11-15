.class public final Lcom/yandex/mobile/ads/impl/vb;
.super Lcom/yandex/mobile/ads/impl/yf1;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final k:Lcom/yandex/mobile/ads/impl/wb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/au0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/au0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/vb;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/au0;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/au0;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/gf1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/gf1;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v1, Lcom/yandex/mobile/ads/impl/wb;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/wb;-><init>(Lcom/yandex/mobile/ads/impl/gf1;)V

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/vb;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/au0;Lcom/yandex/mobile/ads/impl/gf1;Lcom/yandex/mobile/ads/impl/wb;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/au0;Lcom/yandex/mobile/ads/impl/gf1;Lcom/yandex/mobile/ads/impl/wb;)V
    .locals 1

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manufacturerChecker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optOutRepository"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "adtuneOptOutWebViewController"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/vb;->k:Lcom/yandex/mobile/ads/impl/wb;

    .line 9
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/au0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0, p4}, Lcom/yandex/mobile/ads/impl/yf1;->setHtmlWebViewErrorListener(Lcom/yandex/mobile/ads/impl/ch0;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vb;->k:Lcom/yandex/mobile/ads/impl/wb;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/wb;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final setAdtuneWebViewListener(Lcom/yandex/mobile/ads/impl/xb;)V
    .locals 1

    const-string v0, "adtuneOptOutWebViewListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vb;->k:Lcom/yandex/mobile/ads/impl/wb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wb;->a(Lcom/yandex/mobile/ads/impl/xb;)V

    return-void
.end method
