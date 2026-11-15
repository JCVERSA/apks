.class public Lcom/mgmi/ads/api/a/m;
.super Lcom/mgmi/ads/api/a/e;
.source "SourceFile"


# instance fields
.field protected u:Lcom/mgmi/ads/api/d/a;

.field private v:Lcom/mgmi/net/bean/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/e;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/mgmi/ads/api/d/a;

    invoke-direct {v0, p1}, Lcom/mgmi/ads/api/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/mgmi/model/r;)V
    .locals 8

    .line 35
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgmi/model/r;->a(Lcom/mgmi/g/a;)V

    .line 37
    :cond_0
    new-instance v0, Lcom/mgmi/ads/api/c/a;

    iget-object v3, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->l()Lcom/mgmi/platform/d;

    move-result-object v4

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v5

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    .line 38
    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->n()Landroid/view/ViewGroup;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/mgmi/ads/api/c/a;-><init>(Landroid/content/Context;Lcom/mgmi/ads/api/d/b;Lcom/mgmi/platform/d;Lcom/mgmi/ads/api/a;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 39
    iget-object v1, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz v1, :cond_5

    .line 40
    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/g/a;->t()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 41
    new-instance v7, Lcom/mgmi/ads/api/e/h;

    iget-object v5, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/mgmi/ads/api/e/h;-><init>(Landroid/content/Context;Lcom/mgmi/model/r;Lcom/mgmi/ads/api/c/a;Lcom/mgmi/ads/api/d/b;Lcom/mgmi/g/a;)V

    .line 42
    iget-object v1, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz v1, :cond_5

    .line 43
    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v2}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v5

    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v2}, Lcom/mgmi/ads/api/a/d;->m()Lcom/mgmi/platform/d;

    move-result-object v6

    move-object v2, p2

    move-object v3, v7

    move-object v4, v0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/mgmi/ads/api/d/a;->a(Lcom/mgmi/model/r;Lcom/mgmi/ads/api/e/b;Lcom/mgmi/ads/api/c/a;Lcom/mgmi/ads/api/a;Lcom/mgmi/platform/d;Landroid/content/Context;)V

    .line 44
    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/b;->j()V

    goto/16 :goto_2

    .line 45
    :cond_2
    new-instance v7, Lcom/mgmi/ads/api/e/a/a;

    iget-object v5, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/mgmi/ads/api/e/a/a;-><init>(Landroid/content/Context;Lcom/mgmi/model/r;Lcom/mgmi/ads/api/c/a;Lcom/mgmi/ads/api/d/b;Lcom/mgmi/g/a;)V

    .line 46
    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    instance-of v2, v1, Lcom/mgmi/ads/api/a/n;

    if-eqz v2, :cond_4

    .line 47
    check-cast v1, Lcom/mgmi/ads/api/a/n;

    .line 48
    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/n;->u()Lcom/mgmi/ads/api/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgmi/ads/api/c/a;->a(Lcom/mgmi/ads/api/i;)V

    .line 49
    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v2}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v2}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/ads/api/a;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/mgmi/ads/api/c/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_3
    const-string v2, "2"

    invoke-virtual {v0, v2}, Lcom/mgmi/ads/api/c/a;->a(Ljava/lang/String;)V

    .line 52
    :goto_1
    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/n;->v()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/mgmi/ads/api/e/a/a;->a(Ljava/lang/ref/WeakReference;)V

    .line 53
    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/n;->u()Lcom/mgmi/ads/api/i;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/ads/api/i;)V

    .line 54
    :cond_4
    iget-object v1, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz v1, :cond_5

    .line 55
    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v2}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v5

    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v2}, Lcom/mgmi/ads/api/a/d;->m()Lcom/mgmi/platform/d;

    move-result-object v6

    move-object v2, p2

    move-object v3, v7

    move-object v4, v0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/mgmi/ads/api/d/a;->a(Lcom/mgmi/model/r;Lcom/mgmi/ads/api/e/b;Lcom/mgmi/ads/api/c/a;Lcom/mgmi/ads/api/a;Lcom/mgmi/platform/d;Landroid/content/Context;)V

    .line 56
    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/b;->j()V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/mgmi/g/a;Lcom/mgmi/ads/api/a/d;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 63
    const-string v0, "vod"

    invoke-virtual {p1}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0, p2}, Lcom/mgmi/ads/api/d/a;->a(Lcom/mgmi/ads/api/a/d;)V

    :cond_0
    return-void
.end method

.method private e(Lcom/mgmi/ads/api/a/d;)V
    .locals 1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/g/a;->t()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "live"

    invoke-static {p0}, Lcom/mgmi/thirdparty/a/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgmi/thirdparty/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private o()V
    .locals 3

    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/i;->c()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_PRE_REQUEST_REACTDATA_SUCCESS:Lcom/mgmi/ads/api/a$a;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v1

    new-instance v2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->a()V

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/a;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/d/a;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    .line 59
    :cond_0
    sget-object p0, Lcom/mgmi/ads/api/h;->PIP_ENTER:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 60
    invoke-static {}, Lcom/mgmi/ads/api/e/e;->a()Lcom/mgmi/ads/api/e/e;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/e;->a(Z)V

    goto :goto_0

    .line 61
    :cond_1
    sget-object p0, Lcom/mgmi/ads/api/h;->PIP_QUIT:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 62
    invoke-static {}, Lcom/mgmi/ads/api/e/e;->a()Lcom/mgmi/ads/api/e/e;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/e;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/g/a;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->e:Lcom/mgmi/e/a/d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/g/a;->x()I

    move-result v0

    const/16 v1, 0x11e4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/g/a;->b()I

    move-result v0

    const/16 v1, 0x11ee

    if-eq v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/mgmi/net/bean/b;

    invoke-direct {v0}, Lcom/mgmi/net/bean/b;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/a/m;->v:Lcom/mgmi/net/bean/b;

    .line 6
    invoke-virtual {v0, p1}, Lcom/mgmi/net/bean/b;->a(Lcom/mgmi/g/a;)V

    .line 7
    iget-object p1, p0, Lcom/mgmi/ads/api/a/m;->v:Lcom/mgmi/net/bean/b;

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/net/bean/b;->c(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/mgmi/ads/api/a/m;->v:Lcom/mgmi/net/bean/b;

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mgmi/net/bean/b;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->e:Lcom/mgmi/e/a/d;

    iget-object v0, p0, Lcom/mgmi/ads/api/a/m;->v:Lcom/mgmi/net/bean/b;

    invoke-virtual {p1, v0}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/net/bean/b;)V

    .line 10
    iget-object p1, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz p1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->v:Lcom/mgmi/net/bean/b;

    invoke-virtual {p1, p0}, Lcom/mgmi/ads/api/d/a;->a(Lcom/mgmi/net/bean/b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/r;)V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 22
    :cond_1
    invoke-super {p0, p1}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/model/r;)V

    .line 23
    invoke-direct {p0}, Lcom/mgmi/ads/api/a/m;->o()V

    .line 24
    invoke-static {p1}, Lcom/mgmi/ads/api/d/a;->a(Lcom/mgmi/model/r;)I

    move-result v1

    const/4 v2, -0x2

    const v3, 0xaae61

    if-ne v1, v2, :cond_2

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/mgmi/ads/api/a/m;->a(Landroid/content/Context;Lcom/mgmi/model/r;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1, v3}, Lcom/mgmi/ads/api/a/m;->a(ZI)V

    return-void

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 27
    invoke-direct {p0, v0, p1}, Lcom/mgmi/ads/api/a/m;->a(Landroid/content/Context;Lcom/mgmi/model/r;)V

    .line 28
    sget-object p1, Lcom/mgmi/ads/api/a$a;->NO_PRE_AD:Lcom/mgmi/ads/api/a$a;

    .line 29
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v2, "ADS_ONLINE_VIDEO"

    invoke-direct {v1, v2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_3
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1, v3}, Lcom/mgmi/ads/api/a/m;->a(ZI)V

    return-void

    :cond_4
    const/4 v2, -0x3

    if-ne v1, v2, :cond_5

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/mgmi/ads/api/a/m;->a(Landroid/content/Context;Lcom/mgmi/model/r;)V

    return-void

    :cond_5
    const/4 v2, -0x4

    if-ne v1, v2, :cond_6

    .line 33
    const-string v1, "VdoAdsloader"

    const-string v2, "startManager"

    invoke-static {v1, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, v0, p1}, Lcom/mgmi/ads/api/a/m;->a(Landroid/content/Context;Lcom/mgmi/model/r;)V

    :cond_6
    return-void
.end method

.method public a(ZI)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    const-string v0, "ADS_ONLINE_VIDEO"

    if-eqz p1, :cond_0

    .line 14
    sget-object p1, Lcom/mgmi/ads/api/a$a;->VIP_START_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    .line 15
    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v1

    new-instance v2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-direct {v2, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setErrorCode(I)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "VdoAdsloader"

    const-string v1, "request vod ad onRequestAdfail"

    invoke-static {p1, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lcom/mgmi/ads/api/a$a;->START_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    .line 18
    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v1

    new-instance v2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-direct {v2, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setErrorCode(I)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/m;->n()V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->b()V

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/a;->c()V

    :cond_0
    return-void
.end method

.method public b(Lcom/mgmi/ads/api/a/d;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/i;->b()V

    .line 5
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/m;->e(Lcom/mgmi/ads/api/a/d;)V

    .line 6
    new-instance v0, Lcom/mgmi/ads/api/a/m$1;

    invoke-direct {v0, p0}, Lcom/mgmi/ads/api/a/m$1;-><init>(Lcom/mgmi/ads/api/a/m;)V

    const-string v1, "VdoAdsloader"

    invoke-virtual {p0, p1, v0, v1}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/a/m;->a(Lcom/mgmi/g/a;)V

    .line 8
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mgmi/ads/api/a/m;->a(Lcom/mgmi/g/a;Lcom/mgmi/ads/api/a/d;)V

    :cond_0
    return-void
.end method

.method public b_()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/a;->g()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->c()V

    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/a;->d()V

    :cond_0
    return-void
.end method

.method public c_()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->u:Lcom/mgmi/ads/api/d/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/d/a;->h()V

    :cond_0
    return-void
.end method

.method public d(Lcom/mgmi/ads/api/a/d;)V
    .locals 1

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/mgmi/g/a;->t()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    const-string v0, "social_live"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgmi/g/a;->b(Ljava/lang/String;)Lcom/mgmi/g/a;

    goto :goto_0

    :cond_0
    const-string p1, "live"

    invoke-virtual {p0, p1}, Lcom/mgmi/g/a;->b(Ljava/lang/String;)Lcom/mgmi/g/a;

    :goto_0
    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p0

    const-string p1, "2"

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/mgmi/g/a;->n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/mgmi/g/a;->n()Ljava/lang/String;

    move-result-object p0

    const-string p1, "a1001"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p0

    const-string p1, "4"

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string p1, "a1003"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p0

    const-string p1, "6"

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string p1, "a1002"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p0

    const-string p1, "5"

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/j;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "a1005"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p0

    const-string p1, "8"

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/j;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p0

    const-string p1, "1000"

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/j;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sc_room"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p0

    const-string p1, "7"

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/j;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p1

    const-string v0, "feed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v0}, Lcom/mgmi/g/a;->b(Ljava/lang/String;)Lcom/mgmi/g/a;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p0

    const-string p1, "3"

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/j;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/j;->a(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->e:Lcom/mgmi/e/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/m;->v:Lcom/mgmi/net/bean/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/net/bean/b;->i()Lcom/mgmi/g/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/m;->v:Lcom/mgmi/net/bean/b;

    invoke-virtual {v0}, Lcom/mgmi/net/bean/b;->i()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->x()I

    move-result v0

    const/16 v1, 0x11e4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/m;->v:Lcom/mgmi/net/bean/b;

    invoke-virtual {v0}, Lcom/mgmi/net/bean/b;->i()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->b()I

    move-result v0

    const/16 v1, 0x11ee

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->e:Lcom/mgmi/e/a/d;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/m;->v:Lcom/mgmi/net/bean/b;

    invoke-virtual {v0, p0}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/net/bean/b;)V

    :cond_0
    return-void
.end method
