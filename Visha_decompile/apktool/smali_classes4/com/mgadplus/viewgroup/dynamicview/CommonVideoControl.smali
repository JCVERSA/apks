.class public Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ls7d;


# instance fields
.field public b:Lb9d;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

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
    .locals 1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->d:Landroid/widget/ImageView;

    sget v0, Lcom/mgmi/R$drawable;->mgmi_feed_play_control_pause:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->e:Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->b:Lb9d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v1}, Lb9d;->a(FF)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->c:Landroid/widget/ImageView;

    sget v0, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_open:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
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

    sget v0, Lcom/mgmi/R$id;->mgmi_play_control_playpause:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->b:Lb9d;

    invoke-interface {p1}, Lb9d;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->b:Lb9d;

    invoke-interface {p1}, Lb9d;->pause()V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->d:Landroid/widget/ImageView;

    sget p1, Lcom/mgmi/R$drawable;->mgmi_feed_play_control_pause:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->b:Lb9d;

    invoke-interface {p1}, Lb9d;->resume()V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->d:Landroid/widget/ImageView;

    sget p1, Lcom/mgmi/R$drawable;->mgmi_feed_play_control_play:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/mgmi/R$id;->mgmi_play_control_mute:I

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->e:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->e:Z

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->b:Lb9d;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0}, Lb9d;->a(FF)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->c:Landroid/widget/ImageView;

    sget p1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_open:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->e:Z

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->b:Lb9d;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lb9d;->a(FF)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->c:Landroid/widget/ImageView;

    sget p1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_close:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setMediaPlayer(Lb9d;)V
    .locals 1
    .param p1    # Lb9d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->b:Lb9d;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lb9d;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->e:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget p0, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_close:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonVideoControl;->c:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    sget p1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_open:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
