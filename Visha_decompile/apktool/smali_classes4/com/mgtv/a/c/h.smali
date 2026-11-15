.class public Lcom/mgtv/a/c/h;
.super Lcom/mgtv/a/c/a;
.source "SourceFile"


# instance fields
.field protected s:Lcom/hunantv/media/widget/MgtvVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "VideoPlayerCore"

    const-string v1, "PreRollVideoAd initPlayer"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/hunantv/media/widget/MgtvVideoView;-><init>(Landroid/content/Context;IZZ)V

    iput-object v0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    .line 3
    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setDisableAudioFocus(Z)V

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/hunantv/media/report/ReportParams;

    invoke-direct {v0}, Lcom/hunantv/media/report/ReportParams;-><init>()V

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    .line 5
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/h$1;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/h$1;-><init>(Lcom/mgtv/a/c/h;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnCompletionListener(Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;)V

    .line 6
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/h$2;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/h$2;-><init>(Lcom/mgtv/a/c/h;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnErrorListener(Lcom/hunantv/media/widget/IVideoView$OnErrorListener;)V

    .line 7
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/h$3;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/h$3;-><init>(Lcom/mgtv/a/c/h;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnInfoListener(Lcom/hunantv/media/widget/IVideoView$OnInfoListener;)V

    .line 8
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/h$4;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/h$4;-><init>(Lcom/mgtv/a/c/h;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnPauseListener(Lcom/hunantv/media/widget/IVideoView$OnPauseListener;)V

    .line 9
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/h$5;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/h$5;-><init>(Lcom/mgtv/a/c/h;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnPreparedListener(Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;)V

    .line 10
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/h$6;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/h$6;-><init>(Lcom/mgtv/a/c/h;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnStartListener(Lcom/hunantv/media/widget/IVideoView$OnStartListener;)V

    .line 11
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/h$7;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/h$7;-><init>(Lcom/mgtv/a/c/h;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnVideoSizeChangedListener(Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;)V

    .line 12
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/h$8;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/h$8;-><init>(Lcom/mgtv/a/c/h;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnUpdateStatusListener(Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;)V

    .line 13
    iget-object p1, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v0, Lcom/mgtv/a/c/h$9;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/h$9;-><init>(Lcom/mgtv/a/c/h;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setVolume(FF)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    invoke-virtual {p0, p1, p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setVolume(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lcom/mgtv/a/c/a;->a(Ljava/lang/String;)Z

    .line 15
    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->setVideoPath(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mgtv/a/c/a;->c()V

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->start()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/c/h;->s()I

    move-result v1

    invoke-virtual {p0}, Lcom/mgtv/a/c/h;->h()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mgtv/a/c/e;->a(II)V

    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/c/a;->a(J)V

    return-void
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->getDuration()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/mgtv/a/c/a;->b:I

    return p0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->isPlaying()Z

    :cond_0
    invoke-super {p0}, Lcom/mgtv/a/c/a;->i()Z

    move-result p0

    return p0
.end method

.method public j()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/a/c/a;->j()V

    const-string v0, "VideoPlayerCore"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/a/c/a;->k()V

    const-string v0, "VideoPlayerCore"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->start()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/a/c/a;->l()V

    const-string v0, "VideoPlayerCore"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->stop()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/a/c/a;->q()V

    const-string v0, "VideoPlayerCore"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->release()V

    :cond_0
    return-void
.end method

.method public s()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
