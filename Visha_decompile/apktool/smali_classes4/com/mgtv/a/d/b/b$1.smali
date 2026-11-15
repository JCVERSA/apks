.class Lcom/mgtv/a/d/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/a/d/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mgtv/a/c/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/b/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0}, Lcom/mgtv/a/c/e;->a()V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v0, p1}, Lcom/mgtv/a/d/b/b;->a(I)V

    .line 10
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0, p1, p2}, Lcom/mgtv/a/c/e;->a(II)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 18
    invoke-interface {p0, p1, p2}, Lcom/mgtv/a/c/e;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ldkd;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0, p1}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ldkd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ldkd;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mgtv/a/d/b/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 16
    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ZZZ)V
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 13
    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/a/c/e;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->m()V

    .line 3
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/mgtv/a/c/e;->b()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object v0, v0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/mgtv/a/c/e;->c()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->g()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->e()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz p0, :cond_0

    instance-of p1, p0, Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_0

    .line 2
    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getInteractJsonM()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    instance-of p1, p0, Lcom/mgmi/net/bean/BootAdBean;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lcom/mgmi/net/bean/BootAdBean;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p1, :cond_1

    .line 4
    check-cast p0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->interact_json:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0}, Lcom/mgtv/a/c/e;->e()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/mgtv/a/c/e;->f()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->l()V

    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->g()V

    :cond_0
    return-void
.end method

.method public h()Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public i()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b$1;->k()Lcom/mgmi/ads/api/AdSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/AdSize;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Lcom/mgmi/ads/api/AdSize;
    .locals 2

    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    instance-of v0, p0, Lcom/mgtv/a/c/b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/a/c/b;

    invoke-virtual {p0}, Lcom/mgtv/a/c/b;->s()Lcom/mgadplus/brower/ImgoAdWebView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    new-instance v1, Lcom/mgmi/ads/api/AdSize;

    invoke-direct {v1, v0, p0}, Lcom/mgmi/ads/api/AdSize;-><init>(II)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/mgmi/ads/api/AdSize;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/mgmi/ads/api/AdSize;-><init>(II)V

    return-object p0
.end method

.method public l()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b$1;->a:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result p0

    return p0
.end method
