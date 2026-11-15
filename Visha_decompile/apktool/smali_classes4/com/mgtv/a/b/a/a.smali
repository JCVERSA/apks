.class public abstract Lcom/mgtv/a/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected c:I

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Z

.field protected i:Z

.field protected j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Lcom/mgtv/a/d/b/b;

.field protected l:Lcom/mgtv/a/a/a;

.field protected m:Lcom/mgtv/a/b/a/b;

.field protected n:Lcom/mgmi/ads/api/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/a/b/a/a;->f:I

    iput v0, p0, Lcom/mgtv/a/b/a/a;->g:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mgtv/a/b/a/a;->h:Z

    iput-boolean v0, p0, Lcom/mgtv/a/b/a/a;->i:Z

    iput-object p1, p0, Lcom/mgtv/a/b/a/a;->d:Ljava/lang/String;

    new-instance p1, Lcom/mgtv/a/a/a;

    invoke-direct {p1}, Lcom/mgtv/a/a/a;-><init>()V

    iput-object p1, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getSspPrice()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lwrd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg4d;->j(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/mgtv/a/b/a/a;->f:I

    .line 19
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/b;->b(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1
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

    .line 21
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/d/b/b;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    return-void
.end method

.method public a(Lcom/mgtv/a/b/a/b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Lcom/mgtv/a/d/b/b;->d(Ljava/lang/String;)V

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0, p1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/a/b/a/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ZLcom/mgmi/e/a;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v1, :cond_1

    .line 30
    instance-of v2, v1, Lcom/mgtv/a/d/c/a;

    if-eqz v2, :cond_0

    .line 31
    check-cast v1, Lcom/mgtv/a/d/c/a;

    invoke-virtual {v1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/net/bean/BootAdBean;

    invoke-virtual {v0, p1, p0, p2}, Lcom/mgtv/a/a/a;->a(ZLcom/mgmi/net/bean/BootAdBean;Lcom/mgmi/e/a;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, p1, p0, p2}, Lcom/mgtv/a/a/a;->a(ZLcom/mgmi/model/VASTAd;Lcom/mgmi/e/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)Z
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgtv/a/b/a/a;->j:Ljava/lang/ref/WeakReference;

    .line 7
    const-string v0, "paster"

    iget-object v2, p0, Lcom/mgtv/a/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/mgtv/a/d/e/a;

    invoke-direct {v0, p1, p2}, Lcom/mgtv/a/d/e/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    goto :goto_0

    .line 9
    :cond_1
    const-string v0, "pause"

    iget-object v2, p0, Lcom/mgtv/a/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Lcom/mgtv/a/d/f/a;

    invoke-direct {v0, p1, p2}, Lcom/mgtv/a/d/f/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    goto :goto_0

    .line 11
    :cond_2
    const-string v0, "boot"

    iget-object v2, p0, Lcom/mgtv/a/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    new-instance v0, Lcom/mgtv/a/d/c/a;

    invoke-direct {v0, p1, p2}, Lcom/mgtv/a/d/c/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    goto :goto_0

    .line 13
    :cond_3
    const-string v0, "Corner"

    iget-object v2, p0, Lcom/mgtv/a/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    new-instance v0, Lcom/mgtv/a/d/d/a;

    invoke-direct {v0, p1, p2}, Lcom/mgtv/a/d/d/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    goto :goto_0

    .line 15
    :cond_4
    const-string v0, "banner"

    iget-object v2, p0, Lcom/mgtv/a/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    new-instance v0, Lcom/mgtv/a/d/a/a;

    invoke-direct {v0, p1, p2}, Lcom/mgtv/a/d/a/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    .line 17
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public b(I)V
    .locals 1

    .line 8
    iput p1, p0, Lcom/mgtv/a/b/a/a;->g:I

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/mgtv/a/d/b/b;->c(I)V

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz p0, :cond_2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mgtv/a/a/a;->a(Z)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/mgmi/model/VASTAd;

    iget v0, v0, Lcom/mgmi/model/VASTAd;->show_type:I

    iput v0, p0, Lcom/mgtv/a/b/a/a;->c:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->q()V

    .line 7
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/b;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/a/b/a/a;->i:Z

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->d()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e_()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    invoke-virtual {v0}, Lcom/mgtv/a/a/a;->b()V

    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/mgtv/a/b/a/b;->o()V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/b/a/b;->q()V

    :cond_0
    return-void
.end method

.method public f_()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->a()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public g_()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->b()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public h_()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/b/a/b;->p()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->k()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public p()Lcom/mgmi/ads/api/a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    return-object p0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mgtv/a/b/a/a$1;

    invoke-direct {v1, p0}, Lcom/mgtv/a/b/a/a$1;-><init>(Lcom/mgtv/a/b/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/a/d/b/b;->a(Lcom/mgtv/a/c/e;)V

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    new-instance v1, Lcom/mgtv/a/b/a/a$2;

    invoke-direct {v1, p0}, Lcom/mgtv/a/b/a/a$2;-><init>(Lcom/mgtv/a/b/a/a;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/a/d/b/b;->a(Lcom/mgtv/a/d/b/d;)V

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->r()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->s()V

    iput-object v1, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    :cond_1
    return-void
.end method

.method public t()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->o()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mgtv/a/d/c/a;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->isSelfRender()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/a/a;->b()V

    :cond_1
    return-void
.end method

.method public z()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->u()Lcom/mgtv/a/d/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->u()Lcom/mgtv/a/d/b/d;

    move-result-object p0

    new-instance v0, Ldkd;

    invoke-direct {v0}, Ldkd;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method
