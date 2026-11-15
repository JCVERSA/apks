.class public final Lcom/yandex/mobile/ads/impl/a31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dh0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/w21;

.field private final b:Lcom/yandex/mobile/ads/impl/n21;

.field private final c:Lcom/yandex/mobile/ads/impl/qe2;

.field private final d:Lcom/yandex/mobile/ads/impl/vj2;

.field private final e:Lcom/yandex/mobile/ads/impl/l21;

.field private final f:Lcom/yandex/mobile/ads/impl/zg0;

.field private final g:Lcom/yandex/mobile/ads/impl/ju1;

.field private h:Lcom/yandex/mobile/ads/impl/zo;

.field private i:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/n21;)V
    .locals 8

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/qe2;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/qe2;-><init>()V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/vj2;

    invoke-direct {v4, p1}, Lcom/yandex/mobile/ads/impl/vj2;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/l21;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/l21;-><init>()V

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/zg0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/zg0;-><init>()V

    .line 5
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yf1;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 7
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/a31;-><init>(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/vj2;Lcom/yandex/mobile/ads/impl/l21;Lcom/yandex/mobile/ads/impl/zg0;Lcom/yandex/mobile/ads/impl/ju1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/vj2;Lcom/yandex/mobile/ads/impl/l21;Lcom/yandex/mobile/ads/impl/zg0;Lcom/yandex/mobile/ads/impl/ju1;)V
    .locals 1

    .line 8
    const-string v0, "mraidWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidEventsObservable"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEventController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewLoadingNotifier"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidCompatibilityDetector"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlWebViewAdapterFactoryProvider"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a31;->a:Lcom/yandex/mobile/ads/impl/w21;

    .line 11
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/a31;->b:Lcom/yandex/mobile/ads/impl/n21;

    .line 12
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/a31;->c:Lcom/yandex/mobile/ads/impl/qe2;

    .line 13
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/a31;->d:Lcom/yandex/mobile/ads/impl/vj2;

    .line 14
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/a31;->e:Lcom/yandex/mobile/ads/impl/l21;

    .line 15
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/a31;->f:Lcom/yandex/mobile/ads/impl/zg0;

    .line 16
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/a31;->g:Lcom/yandex/mobile/ads/impl/ju1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/a31;->i:Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 0

    .line 2
    const-string p0, "adFetchRequestError"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yf1;Ljava/util/Map;)V
    .locals 0

    .line 3
    const-string p0, "webView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "trackingParameters"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zo;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a31;->h:Lcom/yandex/mobile/ads/impl/zo;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 4
    const-string v0, "customUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a31;->g:Lcom/yandex/mobile/ads/impl/ju1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->S()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/a31;->i:Z

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a31;->h:Lcom/yandex/mobile/ads/impl/zo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/a31;->a:Lcom/yandex/mobile/ads/impl/w21;

    invoke-interface {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/zo;->a(Lcom/yandex/mobile/ads/impl/w21;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/a31;->i:Z

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a31;->d:Lcom/yandex/mobile/ads/impl/vj2;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/vj2;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "htmlResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a31;->e:Lcom/yandex/mobile/ads/impl/l21;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/l21;->a(Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/a31;->f:Lcom/yandex/mobile/ads/impl/zg0;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/q21;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/q21;-><init>()V

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/mk;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/mk;-><init>()V

    goto :goto_0

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/a31;->a:Lcom/yandex/mobile/ads/impl/w21;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/a31;->c:Lcom/yandex/mobile/ads/impl/qe2;

    .line 8
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/a31;->b:Lcom/yandex/mobile/ads/impl/n21;

    move-object v3, p0

    move-object v5, v7

    move-object v6, v7

    .line 9
    invoke-interface/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/yg0;->a(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/dh0;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/n21;Lcom/yandex/mobile/ads/impl/n21;)Lcom/yandex/mobile/ads/impl/xg0;

    move-result-object p0

    .line 10
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/xg0;->a(Ljava/lang/String;)V

    return-void
.end method
