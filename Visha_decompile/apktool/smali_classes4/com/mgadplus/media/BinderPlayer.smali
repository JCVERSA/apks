.class public Lcom/mgadplus/media/BinderPlayer;
.super Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/media/a$a;
.implements Lb9d;


# instance fields
.field public A:J

.field public B:Z

.field public C:Z

.field public D:Lcom/mgmi/e/a/d;

.field public E:Lcom/mgmi/e/g;

.field public F:Z

.field public G:Lcom/mgmi/model/VASTAd;

.field public H:Landroid/os/Handler;

.field public I:Z

.field public J:Z

.field public x:Lcom/hunantv/media/widget/MgtvVideoView;

.field public y:Ls7d;

.field public z:Ls7d;


# direct methods
.method public static synthetic n(Lcom/mgadplus/media/BinderPlayer;)Lcom/mgmi/e/g;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->E:Lcom/mgmi/e/g;

    return-object p0
.end method

.method public static synthetic q(Lcom/mgadplus/media/BinderPlayer;)Lcom/mgmi/e/a/d;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->D:Lcom/mgmi/e/a/d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(FF)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/mgadplus/media/BinderPlayer;->C:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/mgadplus/media/BinderPlayer;->C:Z

    .line 5
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/media/BinderPlayer;->C:Z

    return p0
.end method

.method public c()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->z:Ls7d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ls7d;->b()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgadplus/media/BinderPlayer;->p(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->B:Z

    invoke-virtual {p0}, Lcom/mgadplus/media/BinderPlayer;->r()V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/mgadplus/media/BinderPlayer;->c()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->C:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setVolume(FF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setVolume(FF)V

    :goto_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->B:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g()V
    .locals 3

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->B:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->y:Ls7d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ls7d;->d()V

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->z:Ls7d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ls7d;->b()V

    :cond_1
    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->F:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgadplus/media/BinderPlayer;->o(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->y:Ls7d;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ls7d;->getControlView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->y:Ls7d;

    invoke-interface {v0}, Ls7d;->getControlView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v0, v2}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->z:Ls7d;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ls7d;->getControlView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->z:Ls7d;

    invoke-interface {v0}, Ls7d;->getControlView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v0, v2}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->z:Ls7d;

    invoke-interface {p0}, Ls7d;->b()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->stop()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public getBinding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/media/BinderPlayer;->B:Z

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->B:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getCurrentPosition()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->I:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/mgadplus/media/BinderPlayer;->A:J

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getDuration()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public final o(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->F:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgadplus/media/a;->b()Lcom/mgadplus/media/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/mgadplus/media/a;->a(Landroid/content/Context;Lcom/mgadplus/media/a$a;)Lcom/hunantv/media/widget/MgtvVideoView;

    move-result-object p1

    iput-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/hunantv/media/widget/MgtvVideoView;-><init>(Landroid/content/Context;IZZ)V

    iput-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/mgadplus/media/BinderPlayer;->J:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p1, v2}, Lcom/hunantv/media/widget/MgtvVideoView;->setAspectRatio(I)V

    :cond_2
    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/hunantv/media/report/ReportParams;

    invoke-direct {v0}, Lcom/hunantv/media/report/ReportParams;-><init>()V

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v0, v2}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    invoke-virtual {p0}, Lcom/mgadplus/media/BinderPlayer;->e()V

    invoke-virtual {p0, v1}, Lcom/mgadplus/media/BinderPlayer;->p(Z)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {p1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {p0, p1}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/mgadplus/media/BinderPlayer;->c()V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnStartListener(Lcom/hunantv/media/widget/IVideoView$OnStartListener;)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnInfoListener(Lcom/hunantv/media/widget/IVideoView$OnInfoListener;)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnErrorListener(Lcom/hunantv/media/widget/IVideoView$OnErrorListener;)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnCompletionListener(Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnPauseListener(Lcom/hunantv/media/widget/IVideoView$OnPauseListener;)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {p1, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgadplus/media/BinderPlayer$a;

    invoke-direct {v0, p0}, Lcom/mgadplus/media/BinderPlayer$a;-><init>(Lcom/mgadplus/media/BinderPlayer;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnStartListener(Lcom/hunantv/media/widget/IVideoView$OnStartListener;)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgadplus/media/BinderPlayer$b;

    invoke-direct {v0, p0}, Lcom/mgadplus/media/BinderPlayer$b;-><init>(Lcom/mgadplus/media/BinderPlayer;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnInfoListener(Lcom/hunantv/media/widget/IVideoView$OnInfoListener;)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgadplus/media/BinderPlayer$c;

    invoke-direct {v0, p0}, Lcom/mgadplus/media/BinderPlayer$c;-><init>(Lcom/mgadplus/media/BinderPlayer;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnErrorListener(Lcom/hunantv/media/widget/IVideoView$OnErrorListener;)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgadplus/media/BinderPlayer$d;

    invoke-direct {v0, p0}, Lcom/mgadplus/media/BinderPlayer$d;-><init>(Lcom/mgadplus/media/BinderPlayer;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnCompletionListener(Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;)V

    iget-object p1, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgadplus/media/BinderPlayer$e;

    invoke-direct {v0, p0}, Lcom/mgadplus/media/BinderPlayer$e;-><init>(Lcom/mgadplus/media/BinderPlayer;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnPauseListener(Lcom/hunantv/media/widget/IVideoView$OnPauseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->B:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->I:Z

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->H:Landroid/os/Handler;

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/media/BinderPlayer;->B:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh2d;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->start()V

    :cond_0
    return-void
.end method

.method public setIncentiveVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/media/BinderPlayer;->J:Z

    return-void
.end method

.method public setMediaControlVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->y:Ls7d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ls7d;->getControlView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public setTimeOut(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/media/BinderPlayer;->x:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->setBufferTimeout(I)V

    :cond_0
    return-void
.end method
