.class public Lcom/mgtv/thirdsdk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

.field private c:Lcom/mgtv/thirdsdk/playcore/b;

.field private d:Lcom/mgtv/thirdsdk/playcore/b;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-direct {v0, p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    :cond_0
    return-void
.end method


# virtual methods
.method public adClick()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->p()V

    :cond_0
    return-void
.end method

.method public changeDefination(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(I)V

    :cond_0
    return-void
.end method

.method public getAdTotalDuration()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->t()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBufferedPercentage()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->s()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBufferingPosition()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->r()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getControlLayout()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getControlLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentDefinition()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/b;->g()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/b;->g()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->g()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->am:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->g()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->l()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentSubtitleSource()Lcom/mgtv/ssp/play/bean/SubTitleData;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->C()Lcom/mgtv/ssp/play/bean/SubTitleData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultDefinition()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->o()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getDefinitionSizeMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->x()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisPlayView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->z()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLoadingSpeed()J
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/b;->g()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->g()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    iget-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ad:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlaySpeed()F
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->u()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->g()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayerStatus()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/b;->g()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->g()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e;->k()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRealDuration()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->c()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoDuration()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->j()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->h()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoPreDuration()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->k()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->i()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->setFrom(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->init()V

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/c;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a;->b:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-direct {v0, p1, v1}, Lcom/mgtv/thirdsdk/playcore/c;-><init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/a;->a:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/a;->e:Z

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/b;->g(Z)V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    invoke-interface {p1}, Lcom/mgtv/thirdsdk/playcore/b;->a()V

    iget-object p1, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    :cond_1
    return-void
.end method

.method public isFullScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->w()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLocalPlay()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->v()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->y()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPreview()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupport3X()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->E()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lockScreen(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->k(Z)V

    :cond_0
    return-void
.end method

.method public noticeAdScreenChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->j(Z)V

    :cond_0
    return-void
.end method

.method public noticePlayViewMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->g(I)V

    :cond_0
    return-void
.end method

.method public onActivityStart(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->d(Z)V

    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MgtvPlayer onActivityStop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz v1, :cond_0

    const-string v1, "mPlayerControl onActivityStop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->n()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->A()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->B()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->d()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->f()V

    :cond_0
    return-void
.end method

.method public playByUser()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->D()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->m()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->b(I)V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->e(I)V

    :cond_0
    return-void
.end method

.method public setBookmark(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->d(I)V

    :cond_0
    return-void
.end method

.method public setBufferStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->c(Z)V

    :cond_0
    return-void
.end method

.method public setDefaultDefination(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->c(I)V

    :cond_0
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a;->a:Ljava/lang/String;

    const-string v0, "live"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setJumpBeforeOrEnd(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public setOnAdListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;)V

    :cond_0
    return-void
.end method

.method public setOnAuthResultListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;)V

    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;)V

    :cond_0
    return-void
.end method

.method public setOnSourcePrepareListener(Lcom/mgtv/ssp/c;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/ssp/c;)V

    :cond_0
    return-void
.end method

.method public setOnStopAdListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdStopListener;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdStopListener;)V

    :cond_0
    return-void
.end method

.method public setOnVideoListener(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;)V

    :cond_0
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(F)V

    :cond_0
    return-void
.end method

.method public setPlayStatusChangeListener(Lcom/mgtv/thirdsdk/playcore/d;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/thirdsdk/playcore/d;)V

    :cond_0
    return-void
.end method

.method public setRequestPauseAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/a;->e:Z

    return-void
.end method

.method public setScreenOrientationChangeListener(Lcom/mgtv/thirdsdk/playcore/f;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/thirdsdk/playcore/f;)V

    :cond_0
    return-void
.end method

.method public setSspAccountCallback(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V

    :cond_0
    return-void
.end method

.method public setSspVipCallback(Lcom/mgtv/ssp/authbase/c;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/ssp/authbase/c;)V

    :cond_0
    return-void
.end method

.method public setSupportChangeOrientation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->h(Z)V

    :cond_0
    return-void
.end method

.method public setSupportChangeScreenMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->i(Z)V

    :cond_0
    return-void
.end method

.method public setVolumeProcess(Lcom/mgtv/thirdsdk/playcore/c$c;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Lcom/mgtv/thirdsdk/playcore/c$c;)V

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->q()V

    :cond_0
    return-void
.end method

.method public startLivePlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startLocalPlayer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/a;->d:Lcom/mgtv/thirdsdk/playcore/b;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/b;->e()V

    :cond_0
    return-void
.end method

.method public switchFullScreen(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->e(Z)V

    :cond_0
    return-void
.end method

.method public switchFullscreenByAd(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->f(Z)V

    :cond_0
    return-void
.end method

.method public switchSubtitleSource(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/a;->c:Lcom/mgtv/thirdsdk/playcore/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/b;->f(I)V

    :cond_0
    return-void
.end method
