.class public Lcom/mgtv/a/b/d;
.super Lcom/mgtv/a/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/b/a/a<",
        "Lcom/mgmi/model/VASTAd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private o:Lcom/mgmi/ads/api/render/AdWidgetInfo;

.field private p:Lcom/mgmi/model/r;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "paster"

    invoke-direct {p0, v0}, Lcom/mgtv/a/b/d;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/a/b/a/a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/mgtv/a/b/d;->b:I

    return-void
.end method

.method private B()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgtv/a/b/a/a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    invoke-virtual {v0}, Lcom/mgtv/a/a/a;->h()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mgtv/a/b/a/b;->r()V

    iput-object v1, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    :cond_1
    iput-object v1, p0, Lcom/mgtv/a/b/d;->q:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/a/b/a/a;->f:I

    iput v0, p0, Lcom/mgtv/a/b/a/a;->g:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 19
    iget p2, p0, Lcom/mgtv/a/b/a/a;->f:I

    div-int/lit16 p1, p1, 0x3e8

    sub-int/2addr p2, p1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/b/d;->o:Lcom/mgmi/ads/api/render/AdWidgetInfo;

    if-nez p1, :cond_1

    .line 21
    new-instance p1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mgtv/a/b/d;->o:Lcom/mgmi/ads/api/render/AdWidgetInfo;

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/mgtv/a/b/d;->b:I

    if-eq p1, p2, :cond_2

    .line 23
    iget-object p1, p0, Lcom/mgtv/a/b/d;->o:Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-virtual {p1, p2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setAdDrationRemain(I)V

    .line 24
    iput p2, p0, Lcom/mgtv/a/b/d;->b:I

    .line 25
    iget-object p1, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    sget-object p2, Lcom/mgmi/ads/api/a$a;->PLAYER_PROGRESS_UPDATE:Lcom/mgmi/ads/api/a$a;

    iget-object p0, p0, Lcom/mgtv/a/b/d;->o:Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-virtual {p1, p2, p0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p2, p0, Lcom/mgtv/a/b/d;->q:Ljava/util/List;

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/d/b/b;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/r;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/a/b/d;->p:Lcom/mgmi/model/r;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/mgmi/model/r;->a()I

    move-result p1

    iput p1, p0, Lcom/mgtv/a/b/a/a;->f:I

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/b/d;->p:Lcom/mgmi/model/r;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->b()I

    move-result p1

    iput p1, p0, Lcom/mgtv/a/b/a/a;->g:I

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/d;->b(Lcom/mgmi/model/VASTAd;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/mgtv/a/b/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;)Z
    .locals 1

    .line 8
    iget-object p1, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/a/b/d;->q:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 9
    :try_start_0
    iget v0, p0, Lcom/mgtv/a/b/d;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_0

    .line 10
    iget v0, p1, Lcom/mgmi/model/VASTAd;->show_type:I

    iput v0, p0, Lcom/mgtv/a/b/a/a;->c:I

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->q()V

    .line 14
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/b;->a(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/b/d;->q:Ljava/util/List;

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/mgtv/a/b/d;->B()V

    return-void

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 8
    iget v1, p0, Lcom/mgtv/a/b/d;->a:I

    if-lt v1, v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/mgtv/a/b/d;->B()V

    .line 10
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/i;->b()V

    return-void

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/mgtv/a/b/d;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/VASTAd;

    .line 12
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->isInteractAd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/mgtv/a/b/d;->B()V

    return-void

    .line 14
    :cond_2
    iget v2, p0, Lcom/mgtv/a/b/d;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mgtv/a/b/d;->a:I

    if-lt v2, v0, :cond_3

    .line 15
    invoke-direct {p0}, Lcom/mgtv/a/b/d;->B()V

    .line 16
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/i;->b()V

    return-void

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/mgtv/a/b/d;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_5

    .line 18
    iget v2, p0, Lcom/mgtv/a/b/a/a;->f:I

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/mgtv/a/b/a/a;->f:I

    .line 19
    iget v2, p0, Lcom/mgtv/a/b/a/a;->g:I

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/mgtv/a/b/a/a;->g:I

    .line 20
    invoke-virtual {p0, v0}, Lcom/mgtv/a/b/d;->a(Lcom/mgmi/model/VASTAd;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget v0, p0, Lcom/mgtv/a/b/a/a;->g:I

    invoke-virtual {p0, v0}, Lcom/mgtv/a/b/a/a;->b(I)V

    .line 22
    iget v0, p0, Lcom/mgtv/a/b/a/a;->f:I

    invoke-virtual {p0, v0}, Lcom/mgtv/a/b/a/a;->a(I)V

    .line 23
    invoke-virtual {p0}, Lcom/mgtv/a/b/d;->d()V

    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/mgtv/a/b/d;->b()V

    goto :goto_0

    .line 25
    :cond_5
    invoke-direct {p0}, Lcom/mgtv/a/b/d;->B()V

    :goto_0
    return-void
.end method

.method public b(Lcom/mgmi/model/VASTAd;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/a/a;->b()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 26
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/mgtv/a/d/e/a;

    if-eqz v0, :cond_0

    .line 27
    check-cast p0, Lcom/mgtv/a/d/e/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/e/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/d;->a(Lcom/mgmi/model/VASTAd;)Z

    move-result p0

    return p0
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/mgtv/a/b/a/a;->d()V

    return-void
.end method

.method public e_()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/mgtv/a/b/a/a;->e:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/mgtv/a/a/a;->a(IZ)V

    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/mgtv/a/b/a/b;->o()V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 0

    invoke-super {p0}, Lcom/mgtv/a/b/a/a;->g()V

    :try_start_0
    invoke-virtual {p0}, Lcom/mgtv/a/b/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public h_()V
    .locals 3

    iget v0, p0, Lcom/mgtv/a/b/d;->a:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_PREPARED:Lcom/mgmi/ads/api/a$a;

    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/mgtv/a/d/e/a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/a/d/e/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/e/a;->h()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
