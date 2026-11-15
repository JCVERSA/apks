.class public abstract Lcom/mgtv/a/d/b/a;
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
.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected o:Landroid/view/View;

.field protected p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

.field protected q:Landroid/view/View;

.field protected r:Landroid/view/View;

.field protected s:Landroid/view/View;

.field protected t:Landroid/view/ViewGroup;

.field protected u:Landroid/widget/ImageView;

.field protected v:Lcom/mgtv/a/d/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgtv/a/d/b/a;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/d/b/a;->l:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->r:Landroid/view/View;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 12
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->r:Landroid/view/View;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->r:Landroid/view/View;

    invoke-static {p0, p2}, Ll4d;->f(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 3
    iput-object p2, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->a(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->f()V

    return-void
.end method

.method public a(Lcom/mgtv/a/d/b/d;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

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
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->u:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 15
    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 16
    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method

.method public a(FF)Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/mgtv/a/d/b/a;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mgtv/a/d/b/a;->j:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->r:Landroid/view/View;

    invoke-static {p0, p1, p2}, Ll4d;->e(Landroid/view/View;FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgtv/a/d/b/a;->h:I

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCanSkipTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    iput p1, p0, Lcom/mgtv/a/d/b/a;->i:I

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->g(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->f(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->a(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->b(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/a;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public e(I)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lcom/mgtv/a/d/b/a;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/mgtv/a/d/b/d;->a(ILjava/lang/Object;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget p1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_open:I

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setIvAdVoiceSrc(I)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    sget p1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_close:I

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setIvAdVoiceSrc(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/mgtv/a/d/b/a$1;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/b/a$1;-><init>(Lcom/mgtv/a/d/b/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 5
    instance-of v1, v0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    new-instance v1, Lcom/mgtv/a/d/b/a$2;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/b/a$2;-><init>(Lcom/mgtv/a/d/b/a;)V

    invoke-virtual {v0, v1}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->setTapclickListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lcom/mgtv/a/d/b/a$3;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/b/a$3;-><init>(Lcom/mgtv/a/d/b/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 9
    new-instance v1, Lcom/mgtv/a/d/b/a$4;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/b/a$4;-><init>(Lcom/mgtv/a/d/b/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->g()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public h()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    return-object p0
.end method

.method public i()Z
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->m:Ljava/lang/String;

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

.method public j()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    return-object p0
.end method
