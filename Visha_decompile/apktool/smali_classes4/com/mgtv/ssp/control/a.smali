.class public Lcom/mgtv/ssp/control/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/control/c;
.implements Lcom/mgtv/ssp/control/d;


# instance fields
.field private a:Lcom/mgtv/ssp/control/d;

.field private b:Lcom/mgtv/ssp/control/c;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/control/d;Lcom/mgtv/ssp/control/c;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/control/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mgtv/ssp/control/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    iput-object p2, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gesture  toggleShowState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->forceHide()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->show()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/a;->isLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/control/a;->setLocked(Z)V

    return-void
.end method

.method public forceHide()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/c;->forceHide()V

    return-void
.end method

.method public getBufferedPercentage()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->getBufferedPercentage()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPlaySpeed()F
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->getCurrentPlaySpeed()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCutoutHeight()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/c;->getCutoutHeight()I

    move-result p0

    return p0
.end method

.method public getPlayerStatus()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->getPlayerStatus()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoDuration()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->getVideoDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoTotalTime()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->getVideoTotalTime()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasCutout()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/c;->hasCutout()Z

    move-result p0

    return p0
.end method

.method public isFullScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->isFullScreen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/c;->isLocked()Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShowing()Z
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gesture  mController.isShowing() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {v2}, Lcom/mgtv/ssp/control/c;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/c;->isShowing()Z

    move-result p0

    return p0
.end method

.method public lockScreen(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/control/d;->lockScreen(Z)V

    :cond_0
    return-void
.end method

.method public reStart()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->reStart()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/control/d;->seekTo(I)V

    return-void
.end method

.method public setLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {v0, p1}, Lcom/mgtv/ssp/control/c;->setLocked(Z)V

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/control/a;->lockScreen(Z)V

    return-void
.end method

.method public setMute(Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/control/d;->setMute(Z)Ljava/lang/String;

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/c;->show()V

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->start()V

    return-void
.end method

.method public startFadeOut()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/c;->startFadeOut()V

    return-void
.end method

.method public startProgress()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/c;->startProgress()V

    return-void
.end method

.method public stopFadeOut()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/c;->stopFadeOut()V

    return-void
.end method

.method public stopProgress()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->b:Lcom/mgtv/ssp/control/c;

    invoke-interface {p0}, Lcom/mgtv/ssp/control/c;->stopProgress()V

    return-void
.end method

.method public switchFullScreen(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/control/d;->switchFullScreen(Z)V

    :cond_0
    return-void
.end method

.method public togglePlay()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/a;->a:Lcom/mgtv/ssp/control/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/control/d;->togglePlay()V

    :cond_0
    return-void
.end method
