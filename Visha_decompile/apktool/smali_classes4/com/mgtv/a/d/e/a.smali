.class public Lcom/mgtv/a/d/e/a;
.super Lcom/mgtv/a/d/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/d/b/b<",
        "Lcom/mgmi/model/VASTAd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/d/b/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/a/d/e/a;->c()V

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/a/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/mgtv/a/d/e/a;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 33
    iget-boolean v0, p0, Lcom/mgtv/a/d/e/a;->a:Z

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/e/a;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-nez v0, :cond_2

    .line 38
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/e/a;->d(Landroid/content/Context;)V

    .line 39
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p1, :cond_3

    .line 40
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/mgtv/a/d/b/a;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lcom/mgtv/a/d/b/e;->a(Z)V

    .line 32
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0, p2}, Lcom/mgtv/a/d/b/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;)Z
    .locals 4

    .line 2
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/b;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->j:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 4
    instance-of v1, v0, Lcom/mgmi/model/VASTAd;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/mgmi/model/VASTAd;

    .line 6
    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->isInteractAd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->isInteractValide()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTMediaFile;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTMediaFile;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iput-boolean v2, p0, Lcom/mgtv/a/d/b/b;->d:Z

    goto :goto_0

    .line 12
    :cond_0
    iput-boolean p1, p0, Lcom/mgtv/a/d/b/b;->d:Z

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/e/a;->b(Lcom/mgmi/model/VASTAd;)V

    return v2

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/d/b/b;->h:Lcom/mgmi/model/VASTStaticResource;

    .line 16
    iput v2, p0, Lcom/mgtv/a/d/b/b;->c:I

    :goto_1
    move v0, v2

    goto :goto_2

    .line 17
    :cond_2
    iput p1, p0, Lcom/mgtv/a/d/b/b;->c:I

    .line 18
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v1, :cond_3

    .line 20
    iput-object v1, p0, Lcom/mgtv/a/d/b/b;->i:Lcom/mgmi/model/VASTMediaFile;

    goto :goto_1

    :cond_4
    move v0, p1

    .line 21
    :goto_2
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v3, :cond_5

    .line 23
    iput-object v3, p0, Lcom/mgtv/a/d/b/b;->i:Lcom/mgmi/model/VASTMediaFile;

    move v0, v2

    :cond_6
    if-eqz v0, :cond_c

    .line 24
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->j:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/mgtv/a/d/e/a;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    return p1

    .line 25
    :cond_7
    iget v1, p0, Lcom/mgtv/a/d/b/b;->c:I

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    goto :goto_3

    .line 26
    :cond_8
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->i:Lcom/mgmi/model/VASTMediaFile;

    if-nez v1, :cond_9

    return p1

    .line 27
    :cond_9
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/mgtv/a/c/c;->a(Ljava/lang/String;)Z

    goto :goto_4

    .line 28
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->h:Lcom/mgmi/model/VASTStaticResource;

    if-nez v1, :cond_b

    return p1

    .line 29
    :cond_b
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/mgtv/a/c/c;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :goto_4
    return v0

    :catchall_0
    :cond_d
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/e/a;->a(Lcom/mgmi/model/VASTAd;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/mgtv/a/d/b/b;->c:I

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/a/d/b/e;->a(ILcom/mgtv/a/c/e;)Lcom/mgtv/a/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p1, :cond_1

    .line 5
    check-cast p1, Lcom/mgtv/a/c/a;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mgtv/a/c/a;->a(I)V

    :cond_1
    return-void
.end method

.method public b(Lcom/mgmi/model/VASTAd;)V
    .locals 0

    if-nez p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0}, Lcom/mgtv/a/c/e;->d()V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-boolean p0, p0, Lcom/mgtv/a/d/b/b;->d:Z

    invoke-virtual {p1, p0}, Lcom/mgmi/model/VASTAd;->setmSupoortClick(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 9
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/mgtv/a/d/e/a/a;

    if-eqz v0, :cond_0

    .line 10
    check-cast p0, Lcom/mgtv/a/d/e/a/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/e/a/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mgtv/a/d/e/a/a;

    invoke-direct {v0}, Lcom/mgtv/a/d/e/a/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/mgtv/a/d/b/a;->a(Lcom/mgtv/a/d/b/d;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/e/a;->b(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/e/a;->a(Landroid/content/Context;)V

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/b;->d(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->e()V

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/e;->a()V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/c/c;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mgtv/a/d/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
