.class public Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ls7d;


# instance fields
.field public b:Lb9d;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Z


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->e:Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->b:Lb9d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v1}, Lb9d;->a(FF)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->c:Landroid/widget/ImageView;

    sget v0, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_open:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public getControlView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getmTimeView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mgmi/R$id;->close:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->b:Lb9d;

    invoke-interface {p0}, Lb9d;->a()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/mgmi/R$id;->mgmi_play_control_mute:I

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->e:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->e:Z

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->b:Lb9d;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0}, Lb9d;->a(FF)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->c:Landroid/widget/ImageView;

    sget p1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_open:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->e:Z

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->b:Lb9d;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lb9d;->a(FF)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->c:Landroid/widget/ImageView;

    sget p1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_close:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMediaPlayer(Lb9d;)V
    .locals 1
    .param p1    # Lb9d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->b:Lb9d;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lb9d;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->e:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget p0, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_close:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/IncentVideoControl;->c:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    sget p1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_open:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
