.class public abstract Lcom/mgtv/a/d/b/b;
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

.field protected d:Z

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected h:Lcom/mgmi/model/VASTStaticResource;

.field protected i:Lcom/mgmi/model/VASTMediaFile;

.field protected j:Landroid/content/Context;

.field protected k:Landroid/view/ViewGroup;

.field protected l:Lcom/mgtv/a/d/b/e;

.field protected m:Lcom/mgtv/a/c/c;

.field protected n:Lcom/mgtv/a/d/b/a;

.field protected o:Lcom/mgtv/a/c/e;

.field protected p:Lcom/mgtv/a/d/b/d;

.field protected q:Lcom/mgtv/a/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/d/b/b;->d:Z

    iput-boolean v0, p0, Lcom/mgtv/a/d/b/b;->e:Z

    new-instance v0, Lcom/mgtv/a/d/b/b$1;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/b/b$1;-><init>(Lcom/mgtv/a/d/b/b;)V

    iput-object v0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    new-instance p1, Lcom/mgtv/a/d/b/e;

    invoke-direct {p1}, Lcom/mgtv/a/d/b/e;-><init>()V

    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0}, Lcom/mgtv/a/c/c;->j()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->a(I)V

    :cond_0
    return-void
.end method

.method public abstract a(Landroid/content/Context;)V
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

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/a/c/e;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    return-void
.end method

.method public a(Lcom/mgtv/a/d/b/d;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    .line 11
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->a(Lcom/mgtv/a/d/b/d;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p0, p1}, Lcom/mgtv/a/c/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public a(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;)Z"
        }
    .end annotation

    .line 4
    const/4 p0, 0x1

    return p0
.end method

.method public b()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/mgtv/a/c/c;->k()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->b(I)V

    :cond_0
    return-void
.end method

.method public abstract b(Landroid/content/Context;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract c()V
.end method

.method public c(I)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->c(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    .line 2
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
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mgtv/a/d/b/b;->e:Z

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/mgtv/a/c/c;->c()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->d()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public j()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    instance-of p0, p0, Lcom/mgtv/a/c/h;

    return p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/a/d/b/b;->e:Z

    return p0
.end method

.method public l()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/b/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->j:Landroid/content/Context;

    return-object p0
.end method

.method public o()I
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    instance-of v0, p0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    iget p0, p0, Lcom/mgmi/model/VASTAd;->show_type:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public p()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->f:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mgmi/platform/e;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/platform/e;->b(Landroid/content/Context;)I

    move-result v0

    if-le p0, v0, :cond_1

    const-string p0, "1"

    return-object p0

    :cond_1
    const-string p0, "2"

    return-object p0
.end method

.method public r()Z
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->f:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mgmi/platform/e;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/platform/e;->b(Landroid/content/Context;)I

    move-result v0

    if-le p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public s()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "BaseRender release  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/d/b/b;->e:Z

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->e()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/e;->b()V

    iput-object v1, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    :cond_1
    iput-object v1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    iput-object v1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    return-void
.end method

.method public t()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public u()Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public v()I
    .locals 0

    iget p0, p0, Lcom/mgtv/a/d/b/b;->c:I

    return p0
.end method
