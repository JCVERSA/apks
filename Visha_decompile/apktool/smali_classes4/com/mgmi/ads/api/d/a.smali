.class public Lcom/mgmi/ads/api/d/a;
.super Lcom/mgmi/ads/api/d/b;
.source "SourceFile"


# instance fields
.field private f:Lcom/mgmi/ads/api/e/g;

.field private g:Lcom/mgmi/platform/d;

.field private h:Lcom/mgmi/e/a/d;

.field private i:Lcom/mgmi/net/bean/b;

.field private j:Lcom/mgmi/ads/api/f/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/d/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/mgmi/model/r;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mgmi/model/r;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p0, -0x2

    return p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/mgmi/model/r;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/mgmi/model/r;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/mgmi/model/r;->e()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gdt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getAdFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opposdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 p0, -0x5

    return p0

    .line 14
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    .line 15
    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getVastTargetURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 p0, -0x3

    return p0

    :cond_6
    const/4 p0, -0x4

    return p0

    :cond_7
    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->h:Lcom/mgmi/e/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->i:Lcom/mgmi/net/bean/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/net/bean/b;->i()Lcom/mgmi/g/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->i:Lcom/mgmi/net/bean/b;

    invoke-virtual {v0}, Lcom/mgmi/net/bean/b;->i()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->x()I

    move-result v0

    const/16 v1, 0x11e4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->i:Lcom/mgmi/net/bean/b;

    .line 6
    invoke-virtual {v0}, Lcom/mgmi/net/bean/b;->i()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->b()I

    move-result v0

    const/16 v1, 0x11ee

    if-eq v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->h:Lcom/mgmi/e/a/d;

    iget-object p0, p0, Lcom/mgmi/ads/api/d/a;->i:Lcom/mgmi/net/bean/b;

    invoke-virtual {v0, p0}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/net/bean/b;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/mgmi/model/i;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->h:Lcom/mgmi/e/a/d;

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lcom/mgmi/e/g;

    invoke-direct {v0}, Lcom/mgmi/e/g;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/mgmi/ads/api/d/b;->b:Lcom/mgmi/ads/api/c/a;

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Lcom/mgmi/ads/api/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/d/a;->h:Lcom/mgmi/e/a/d;

    invoke-virtual {p0, p1, p2, v0}, Lcom/mgmi/e/a/d;->a(ILcom/mgmi/model/i;Lcom/mgmi/e/g;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/d;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mgmi/ads/api/d/b;->e:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V
    .locals 4

    .line 16
    sget-object v0, Lcom/mgmi/ads/api/h;->AD_PLAY_END:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/h;->PAUSE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/h;->RESUME:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/h;->AD_PLAY_FIRST_FRAME:Lcom/mgmi/ads/api/h;

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/h;->AD_PLAY_ERROR:Lcom/mgmi/ads/api/h;

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->f:Lcom/mgmi/ads/api/e/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->f:Lcom/mgmi/ads/api/e/g;

    invoke-virtual {v0, p1, p2}, Lcom/mgmi/ads/api/e/g;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/mgmi/ads/api/d/a;->j:Lcom/mgmi/ads/api/f/b;

    if-eqz p0, :cond_1

    .line 22
    invoke-interface {p0, p1}, Lcom/mgmi/ads/api/f/a;->a(Lcom/mgmi/ads/api/h;)V

    :cond_1
    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->f:Lcom/mgmi/ads/api/e/g;

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/mgmi/ads/api/e/g;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    if-eqz v0, :cond_4

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/mgmi/ads/api/e/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_4
    sget-object v0, Lcom/mgmi/ads/api/h;->CONTENT_ONEND:Lcom/mgmi/ads/api/h;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, p0, Lcom/mgmi/ads/api/d/b;->c:Lcom/mgmi/ads/api/a;

    if-eqz v0, :cond_5

    .line 29
    sget-object v1, Lcom/mgmi/ads/api/a$a;->RESUME_POSITIVE_REQUESTED:Lcom/mgmi/ads/api/a$a;

    .line 30
    new-instance v2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    const-string v3, "ADS_TYPE_BACK_VIDEO"

    invoke-virtual {v2, v3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setWidgetType(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    .line 31
    :cond_5
    :goto_0
    sget-object v0, Lcom/mgmi/ads/api/h;->AD_ONPAUSE:Lcom/mgmi/ads/api/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/mgmi/ads/api/h;->AD_ONRESUME:Lcom/mgmi/ads/api/h;

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 33
    iget-object v0, p0, Lcom/mgmi/ads/api/d/b;->b:Lcom/mgmi/ads/api/c/a;

    if-eqz v0, :cond_6

    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/mgmi/ads/api/c/a;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    .line 35
    :cond_6
    iget-object p0, p0, Lcom/mgmi/ads/api/d/a;->j:Lcom/mgmi/ads/api/f/b;

    if-eqz p0, :cond_7

    .line 36
    invoke-interface {p0, p1}, Lcom/mgmi/ads/api/f/a;->a(Lcom/mgmi/ads/api/h;)V

    :cond_7
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;Lcom/mgmi/ads/api/c/a;)V
    .locals 7

    .line 37
    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->f:Lcom/mgmi/ads/api/e/g;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/mgmi/ads/api/e/g;

    iget-object v1, p0, Lcom/mgmi/ads/api/d/b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v5, p0, Lcom/mgmi/ads/api/d/a;->g:Lcom/mgmi/platform/d;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mgmi/ads/api/e/g;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/ads/api/d/a;Lcom/mgmi/platform/d;Lcom/mgmi/ads/api/c/a;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/d/a;->f:Lcom/mgmi/ads/api/e/g;

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/d/a;->f:Lcom/mgmi/ads/api/e/g;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/g;->a(Lcom/mgmi/model/VASTAd;)V

    return-void
.end method

.method public a(Lcom/mgmi/model/r;Lcom/mgmi/ads/api/e/b;Lcom/mgmi/ads/api/c/a;Lcom/mgmi/ads/api/a;Lcom/mgmi/platform/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mgmi/ads/api/d/b;->a(Lcom/mgmi/model/r;Lcom/mgmi/ads/api/e/b;Lcom/mgmi/ads/api/c/a;Lcom/mgmi/ads/api/a;)V

    .line 2
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ads/api/d/a;->h:Lcom/mgmi/e/a/d;

    .line 3
    iput-object p5, p0, Lcom/mgmi/ads/api/d/a;->g:Lcom/mgmi/platform/d;

    return-void
.end method

.method public a(Lcom/mgmi/net/bean/b;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgmi/ads/api/d/a;->i:Lcom/mgmi/net/bean/b;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/mgmi/ads/api/d/a;->j:Lcom/mgmi/ads/api/f/b;

    if-eqz p0, :cond_1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 48
    :try_start_0
    invoke-interface {p0, v0}, Lcom/mgmi/ads/api/f/b;->a(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p0, v0}, Lcom/mgmi/ads/api/f/b;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 50
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/b;->d()V

    iput-object v1, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->f:Lcom/mgmi/ads/api/e/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/g;->a()V

    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/d/b;->b:Lcom/mgmi/ads/api/c/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mgmi/ads/api/c/a;->e()V

    iget-object v0, p0, Lcom/mgmi/ads/api/d/b;->b:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgmi/ads/api/d/b;->b:Lcom/mgmi/ads/api/c/a;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/c/a;->d()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iput-object v1, p0, Lcom/mgmi/ads/api/d/b;->b:Lcom/mgmi/ads/api/c/a;

    :cond_3
    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->j:Lcom/mgmi/ads/api/f/b;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/mgmi/ads/api/f/a;->c()V

    iput-object v1, p0, Lcom/mgmi/ads/api/d/a;->j:Lcom/mgmi/ads/api/f/b;

    :cond_4
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->f:Lcom/mgmi/ads/api/e/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/b;->f()V

    :cond_1
    iget-object p0, p0, Lcom/mgmi/ads/api/d/a;->j:Lcom/mgmi/ads/api/f/b;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/mgmi/ads/api/f/a;->a()V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/d/a;->f:Lcom/mgmi/ads/api/e/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/b;->e()V

    :cond_1
    iget-object p0, p0, Lcom/mgmi/ads/api/d/a;->j:Lcom/mgmi/ads/api/f/b;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/mgmi/ads/api/f/a;->b()V

    :cond_2
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/d/b;->b:Lcom/mgmi/ads/api/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/c/a;->f()V

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/b;->h()V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/ads/api/d/a;->j:Lcom/mgmi/ads/api/f/b;

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/mgmi/ads/api/f/b;->b(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/b;->i()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/b;->j()V

    :cond_0
    return-void
.end method
