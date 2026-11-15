.class public Lcom/mgadplus/viewgroup/dynamicview/CommonVideoCover;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ls7d;


# instance fields
.field public b:Lb9d;


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public getControlView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mgmi/R$id;->mgmi_cover_left_botton:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoCover;->b:Lb9d;

    invoke-interface {p0}, Lb9d;->g()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/mgmi/R$id;->mgmi_cover_right_botton:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoCover;->b:Lb9d;

    invoke-interface {p0}, Lb9d;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaPlayer(Lb9d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoCover;->b:Lb9d;

    return-void
.end method
