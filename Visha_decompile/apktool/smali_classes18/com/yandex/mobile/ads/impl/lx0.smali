.class public final Lcom/yandex/mobile/ads/impl/lx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bx0;

.field private final b:Lcom/yandex/mobile/ads/impl/b31;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/bx0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/bx0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/b31;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/b31;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/lx0;-><init>(Lcom/yandex/mobile/ads/impl/bx0;Lcom/yandex/mobile/ads/impl/b31;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bx0;Lcom/yandex/mobile/ads/impl/b31;)V
    .locals 1

    .line 4
    const-string v0, "mediaSubViewBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidWebViewFactory"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lx0;->a:Lcom/yandex/mobile/ads/impl/bx0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lx0;->b:Lcom/yandex/mobile/ads/impl/b31;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/ic1;Lcom/yandex/mobile/ads/impl/ox0;)Lcom/yandex/mobile/ads/impl/aw1;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/tj2;
        }
    .end annotation

    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "media"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "impressionEventsObservable"

    invoke-static {p3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeWebViewController"

    invoke-static {p4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mediaViewRenderController"

    invoke-static {p5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/lx0;->b:Lcom/yandex/mobile/ads/impl/b31;

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "context"

    invoke-static {v4, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/d31;->c:Lcom/yandex/mobile/ads/impl/d31$a;

    invoke-virtual {v1, v4}, Lcom/yandex/mobile/ads/impl/d31$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/d31;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/mobile/ads/impl/d31;->b(Lcom/yandex/mobile/ads/impl/wu0;)Lcom/yandex/mobile/ads/impl/w21;

    move-result-object p2

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Lcom/yandex/mobile/ads/impl/w21;

    invoke-direct {p2, v4}, Lcom/yandex/mobile/ads/impl/w21;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/tj2;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/tj2;-><init>()V

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/w21;->k()Lcom/yandex/mobile/ads/impl/n21;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/yandex/mobile/ads/impl/n21;->a(Lcom/yandex/mobile/ads/impl/r11;)V

    invoke-virtual {v1, p4}, Lcom/yandex/mobile/ads/impl/n21;->a(Lcom/yandex/mobile/ads/impl/s11;)V

    invoke-virtual {v1, p4}, Lcom/yandex/mobile/ads/impl/n21;->a(Lcom/yandex/mobile/ads/impl/ze1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lx0;->a:Lcom/yandex/mobile/ads/impl/bx0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mraidWebView"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p3, "getContext(...)"

    invoke-static {p0, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/yandex/mobile/ads/impl/w80;->e:Lcom/yandex/mobile/ads/impl/w80;

    invoke-static {p0, p3}, Lcom/yandex/mobile/ads/impl/x80;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w80;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p0, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/y21;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/y21;-><init>(Lcom/yandex/mobile/ads/impl/w21;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/aw1;

    new-instance p3, Lcom/yandex/mobile/ads/impl/wg2;

    invoke-direct {p3, p0}, Lcom/yandex/mobile/ads/impl/wg2;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    invoke-direct {p2, p1, p0, p5, p3}, Lcom/yandex/mobile/ads/impl/aw1;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/y21;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/wg2;)V

    return-object p2
.end method
