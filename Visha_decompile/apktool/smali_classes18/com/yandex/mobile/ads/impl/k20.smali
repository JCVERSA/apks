.class public final Lcom/yandex/mobile/ads/impl/k20;
.super Lcf2;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zr;

.field private final b:Lcom/yandex/mobile/ads/impl/l20;

.field private final c:Lcom/yandex/mobile/ads/impl/v20;

.field private final d:Lcom/yandex/mobile/ads/impl/k30;

.field private final e:Lcom/yandex/mobile/ads/impl/j30;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/v20;)V
    .locals 9

    .line 1
    new-instance v7, Lcom/yandex/mobile/ads/impl/k30;

    new-instance v0, Lcom/yandex/mobile/ads/impl/lh1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/z62;->d:Lcom/yandex/mobile/ads/impl/z62;

    invoke-direct {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/lh1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z62;)V

    invoke-direct {v7, v0}, Lcom/yandex/mobile/ads/impl/k30;-><init>(Lcom/yandex/mobile/ads/impl/lh1;)V

    .line 2
    new-instance v8, Lcom/yandex/mobile/ads/impl/j30;

    invoke-direct {v8, p2, p3}, Lcom/yandex/mobile/ads/impl/j30;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/k20;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/v20;Lcom/yandex/mobile/ads/impl/k30;Lcom/yandex/mobile/ads/impl/j30;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/v20;Lcom/yandex/mobile/ads/impl/k30;Lcom/yandex/mobile/ads/impl/j30;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/zr;",
            "Lcom/yandex/mobile/ads/impl/l20;",
            "Lcom/yandex/mobile/ads/impl/v20;",
            "Lcom/yandex/mobile/ads/impl/k30;",
            "Lcom/yandex/mobile/ads/impl/j30;",
            ")V"
        }
    .end annotation

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contentCloseListener"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "delegate"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clickHandler"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "trackingUrlHandler"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "trackAnalyticsHandler"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcf2;-><init>()V

    .line 6
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/k20;->a:Lcom/yandex/mobile/ads/impl/zr;

    .line 7
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/k20;->b:Lcom/yandex/mobile/ads/impl/l20;

    .line 8
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/k20;->c:Lcom/yandex/mobile/ads/impl/v20;

    .line 9
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/k20;->d:Lcom/yandex/mobile/ads/impl/k30;

    .line 10
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/k20;->e:Lcom/yandex/mobile/ads/impl/j30;

    return-void
.end method

.method private final a(Lorg/json/JSONObject;Landroid/net/Uri;Lsv2;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileads"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5a5c588

    const/4 v3, 0x1

    if-eq v1, v2, :cond_6

    const p3, 0x33a6483b

    if-eq v1, p3, :cond_4

    const p3, 0x3ad40e7b

    if-eq v1, p3, :cond_2

    const p1, 0x4bb9d424    # 2.4356936E7f

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "trackUrl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k20;->d:Lcom/yandex/mobile/ads/impl/k30;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/k30;->a(Landroid/net/Uri;)V

    goto :goto_1

    .line 4
    :cond_2
    const-string p3, "trackAnalytics"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k20;->e:Lcom/yandex/mobile/ads/impl/j30;

    invoke-virtual {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/j30;->a(Landroid/net/Uri;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 6
    :cond_4
    const-string p1, "closeAd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k20;->a:Lcom/yandex/mobile/ads/impl/zr;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/zr;->f()V

    goto :goto_1

    .line 8
    :cond_6
    const-string p1, "click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 9
    :cond_7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k20;->c:Lcom/yandex/mobile/ads/impl/v20;

    invoke-interface {p3}, Lsv2;->getView()Landroid/view/View;

    move-result-object p1

    const-string p3, "getView(...)"

    invoke-static {p1, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/v20;->a(Landroid/net/Uri;Landroid/view/View;)V

    goto :goto_1

    .line 10
    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k20;->b:Lcom/yandex/mobile/ads/impl/l20;

    invoke-interface {p0, p2}, Lcom/yandex/mobile/ads/impl/l20;->a(Landroid/net/Uri;)Z

    move-result v3

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    return v3
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/vo;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k20;->c:Lcom/yandex/mobile/ads/impl/v20;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/v20;->a(Lcom/yandex/mobile/ads/impl/vo;)V

    return-void
.end method

.method public final handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z
    .locals 2

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcf2;->handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/yandex/div2/DivAction;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/yandex/div2/DivAction;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    invoke-direct {p0, p1, p3, p2}, Lcom/yandex/mobile/ads/impl/k20;->a(Lorg/json/JSONObject;Landroid/net/Uri;Lsv2;)Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final handleAction(Lwp2;Lsv2;Loj3;)Z
    .locals 2

    .line 4
    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcf2;->handleAction(Lwp2;Lsv2;Loj3;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1}, Lwp2;->getUrl()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lwp2;->getPayload()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    invoke-direct {p0, p1, p3, p2}, Lcom/yandex/mobile/ads/impl/k20;->a(Lorg/json/JSONObject;Landroid/net/Uri;Lsv2;)Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
