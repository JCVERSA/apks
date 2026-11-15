.class public Lcom/mgtv/a/b/b;
.super Lcom/mgtv/a/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/b/a/a<",
        "Lcom/mgmi/net/bean/BootAdBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "boot"

    invoke-direct {p0, v0}, Lcom/mgtv/a/b/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/a/b/a/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    instance-of v0, p0, Lcom/mgtv/a/d/c/a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/a/d/c/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    instance-of v0, p0, Lcom/mgtv/a/d/c/a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/a/d/c/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a;->b(Landroid/view/View;)V

    :cond_0
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

    invoke-virtual {v0}, Lcom/mgtv/a/a/a;->f()V

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

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/b/a/b;->r()V

    :cond_0
    return-void
.end method
