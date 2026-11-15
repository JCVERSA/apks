.class Lcom/mgtv/a/d/f/a$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/f/a$a;->b(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mgtv/a/c/d<",
        "Lcom/mgmi/model/VASTAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/f/a$a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/f/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/ViewGroup;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->C(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->D(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/a/c/d;->a(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->aa(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->ab(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->a()V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->c:Lcom/mgtv/a/d/f/a/a;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Lcom/mgtv/a/d/b/a;->a(I)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->am(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->an(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/a/c/e;->a(II)V

    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->h:Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;->a()V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->ao(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->ap(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/a/c/e;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;Ldkd;)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p1, p1, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->A(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->B(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method

.method public a(Ldkd;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->y(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->z(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ldkd;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/d/f/a$a$2;->a(Lcom/mgmi/model/VASTAd;Ldkd;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->M(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->N(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/a/c/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->h:Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;->a()V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->aq(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->ar(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p1, p1, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->as(Lcom/mgtv/a/d/f/a;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p1, p1, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->as(Lcom/mgtv/a/d/f/a;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->getCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/f/a;->s()V

    :goto_0
    return-void
.end method

.method public a(ZZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->ac(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->ad(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->b()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->O(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->P(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/a/c/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->ae(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->af(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->c()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->Q(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->R(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/a/c/d;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->h:Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;->a()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->ag(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->ah(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->d()V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->S(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->T(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/a/c/d;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->W(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->X(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/a/c/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->ai(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->aj(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->e()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->ak(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->al(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->f()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->Y(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->Z(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/a/c/d;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->at(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->au(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/a/c/e;->g()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->as(Lcom/mgtv/a/d/f/a;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->as(Lcom/mgtv/a/d/f/a;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/a/c/a;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->as(Lcom/mgtv/a/d/f/a;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->c()Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/a/c/a;->c()V

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/c/a;->a(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->E(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->F(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/d;->h()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->G(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->H(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/d;->i()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->I(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->J(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/d;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/mgmi/ads/api/AdSize;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/mgmi/ads/api/AdSize;-><init>(II)V

    invoke-virtual {p0}, Lcom/mgmi/ads/api/AdSize;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Lcom/mgmi/ads/api/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->K(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->L(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/d;->k()Lcom/mgmi/ads/api/AdSize;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/mgmi/ads/api/AdSize;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/mgmi/ads/api/AdSize;-><init>(II)V

    return-object p0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->U(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$2;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->V(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/a/c/d;->l()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
