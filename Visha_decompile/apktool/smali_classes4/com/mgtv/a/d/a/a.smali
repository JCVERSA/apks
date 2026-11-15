.class public Lcom/mgtv/a/d/a/a;
.super Lcom/mgtv/a/d/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/d/b/b<",
        "Lcom/mgmi/model/VASTChannelAd;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/d/b/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/a/d/a/a;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/d/a/a;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/a/d/a/a;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->d()V

    return-void
.end method

.method public static synthetic c(Lcom/mgtv/a/d/a/a;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->d()V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a;->c()V

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

    .line 7
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    instance-of v0, p1, Lcom/mgtv/a/d/a/a/a;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/mgtv/a/d/a/a/a;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1, p0}, Lcom/mgtv/a/d/a/a/a;->a(Lcom/mgmi/model/VASTAd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->a()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/a/a;->d(Landroid/content/Context;)V

    .line 6
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p1, :cond_1

    .line 7
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/mgtv/a/d/b/a;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->b()V

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/mgtv/a/d/a/a/a;

    invoke-virtual {v0}, Lcom/mgtv/a/d/a/a/a;->b()V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/mgtv/a/c/e;->e()V

    :cond_1
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {v1}, Lcom/mgtv/a/d/b/a;->j()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v2, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mgtv/a/d/b/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/model/VASTAd;)Lcom/mgtv/a/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    invoke-interface {p1, v0}, Lcom/mgtv/a/c/c;->a(Lcom/mgtv/a/c/e;)V

    .line 12
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mgtv/a/c/a;->b(I)V

    .line 13
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mgtv/a/c/a;->a(I)V

    .line 14
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    check-cast p0, Lcom/mgtv/a/c/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/mgtv/a/c/a;->a(ZZI)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    new-instance v0, Lcom/mgtv/a/d/a/a/a;

    invoke-direct {v0}, Lcom/mgtv/a/d/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    .line 3
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/mgtv/a/d/b/a;->a(Lcom/mgtv/a/d/b/d;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/a/a;->a(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/a/a;->b(Landroid/content/Context;)V

    .line 7
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->j:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 10
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 12
    const-string v0, ""

    const-string v1, "\u6e32\u67d3\u5931\u8d25"

    const/16 v2, -0x6e

    invoke-interface {p0, v0, v2, v1}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v1, :cond_2

    .line 15
    iput-object v1, p0, Lcom/mgtv/a/d/b/b;->i:Lcom/mgmi/model/VASTMediaFile;

    .line 16
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mgtv/a/c/c;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v1, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mgtv/a/c/c;->a(Ljava/lang/String;)Z

    .line 19
    :cond_4
    :goto_0
    new-instance v0, Lcom/mgtv/a/d/a/a$1;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/a/a$1;-><init>(Lcom/mgtv/a/d/a/a;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lj4d;->c(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->e()V

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/b/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/c/c;->c()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/b/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->j:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v1, :cond_6

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    const-string v0, ""

    const-string v1, "\u6e32\u67d3\u5931\u8d25"

    const/16 v2, -0x6e

    invoke-interface {p0, v0, v2, v1}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/mgtv/a/d/b/b;->i:Lcom/mgmi/model/VASTMediaFile;

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mgtv/a/c/c;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v1, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mgtv/a/c/c;->a(Ljava/lang/String;)Z

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    instance-of v0, v0, Lcom/mgtv/a/c/f;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/d/a/a;->b:Z

    new-instance v0, Lcom/mgtv/a/d/a/a$2;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/a/a$2;-><init>(Lcom/mgtv/a/d/a/a;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lj4d;->c(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/d/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    :goto_1
    return-void
.end method

.method public i()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/a/d/a/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a;->b()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/d/a/a;->b:Z

    iget-boolean v0, p0, Lcom/mgtv/a/d/a/a;->a:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/mgtv/a/d/a/a;->c(Lcom/mgtv/a/d/a/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a;->d()V

    :goto_0
    return-void
.end method

.method public j()Z
    .locals 3

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    instance-of v0, p0, Lcom/mgtv/a/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lcom/mgtv/a/c/h;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    instance-of p0, p0, Lcom/mgtv/a/c/b;

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method
