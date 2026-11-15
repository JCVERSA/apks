.class public Lcom/mgmi/platform/view/ViewGroup/widget/e;
.super Lcom/mgmi/platform/view/ViewGroup/widget/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgmi/platform/view/ViewGroup/widget/b<",
        "Lcom/mgmi/platform/view/ViewGroup/widget/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mgmi/platform/d;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/view/View;


# virtual methods
.method public a(Lcom/mgmi/platform/view/ViewGroup/widget/f;)Landroid/view/View;
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->b:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 5
    sget v1, Lcom/mgmi/R$layout;->mgmi_interact_player_widget_layout:I

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->b:Landroid/widget/RelativeLayout;

    .line 6
    sget v0, Lcom/mgmi/R$id;->closePlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/mgmi/platform/view/ViewGroup/widget/e$1;

    invoke-direct {v0, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/e$1;-><init>(Lcom/mgmi/platform/view/ViewGroup/widget/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->b:Landroid/widget/RelativeLayout;

    sget v0, Lcom/mgmi/R$id;->playebg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/mgmi/platform/view/ViewGroup/widget/e$2;

    invoke-direct {v0, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/e$2;-><init>(Lcom/mgmi/platform/view/ViewGroup/widget/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->b:Landroid/widget/RelativeLayout;

    sget v0, Lcom/mgmi/R$id;->progress_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->c:Landroid/widget/ProgressBar;

    .line 11
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->b:Landroid/widget/RelativeLayout;

    sget v0, Lcom/mgmi/R$id;->player_loading_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->d:Landroid/view/View;

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public bridge synthetic a(Lcom/mgmi/platform/view/ViewGroup/widget/g;)Landroid/view/View;
    .locals 0

    .line 1
    check-cast p1, Lcom/mgmi/platform/view/ViewGroup/widget/f;

    invoke-virtual {p0, p1}, Lcom/mgmi/platform/view/ViewGroup/widget/e;->a(Lcom/mgmi/platform/view/ViewGroup/widget/f;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->a:Lcom/mgmi/platform/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/platform/d;->a()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d()V

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/e;->c()V

    return-void
.end method

.method public j()V
    .locals 0

    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->j()V

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->a:Lcom/mgmi/platform/d;

    invoke-interface {p0}, Lcom/mgmi/platform/d;->b()V

    return-void
.end method

.method public k()V
    .locals 0

    invoke-super {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->k()V

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->a:Lcom/mgmi/platform/d;

    invoke-interface {p0}, Lcom/mgmi/platform/d;->c()V

    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->a:Lcom/mgmi/platform/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/platform/d;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->a:Lcom/mgmi/platform/d;

    invoke-interface {p0}, Lcom/mgmi/platform/d;->d()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/e;->d:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
