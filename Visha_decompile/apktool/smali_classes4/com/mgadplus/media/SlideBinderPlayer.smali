.class public Lcom/mgadplus/media/SlideBinderPlayer;
.super Lcom/mgadplus/media/BinderPlayer;
.source "SourceFile"


# instance fields
.field public K:Z


# virtual methods
.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mgadplus/media/SlideBinderPlayer;->K:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/mgadplus/media/BinderPlayer;->e()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/mgadplus/media/SlideBinderPlayer;->K:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->C:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/mgadplus/media/BinderPlayer;->a(FF)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0}, Lcom/mgadplus/media/BinderPlayer;->a(FF)V

    :cond_2
    :goto_0
    return-void
.end method
