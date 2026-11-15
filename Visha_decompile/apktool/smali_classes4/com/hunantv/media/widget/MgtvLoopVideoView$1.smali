.class Lcom/hunantv/media/widget/MgtvLoopVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvLoopVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1300(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->setStartPosMs(I)V

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1400(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->needOpenVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-boolean v0, p1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mNeedResetLoopPlay:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1500(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bindHolder resumeLoadData"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    :cond_3
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-boolean v0, p1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1600(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    iget-boolean v1, p1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1700(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->seekTo(IZZ)V

    :cond_4
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1, v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1702(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1800(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isHardware()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1900(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlaybackStep()V

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object v0, p1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result p1

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    goto :goto_2

    :cond_8
    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1400(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    :goto_2
    return-void
.end method

.method private needOpenVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1200(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;III)V
    .locals 2

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    const-string v0, "-----------surface changed"

    invoke-static {p2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p2, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p2}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1, p3}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$002(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1, p4}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$102(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$200(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p2, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p2}, Lcom/hunantv/media/player/MgtvRenderView;->shouldWaitForResize()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$300(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I

    move-result p2

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$400(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I

    move-result p2

    if-ne p2, p4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p3, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    iget-boolean p1, p2, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    if-nez p1, :cond_4

    invoke-static {p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$500(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$500(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->seekTo(IZ)V

    :cond_4
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->start()V

    :cond_5
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$600(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$600(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;->surfaceChanged()V

    :cond_6
    return-void
.end method

.method public onSurfaceCreated(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;II)V
    .locals 5

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$700(Lcom/hunantv/media/widget/MgtvLoopVideoView;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-lez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$700(Lcom/hunantv/media/widget/MgtvLoopVideoView;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    const-wide/16 v0, 0x21c

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$800(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$800(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$900(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0xc350a

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/hunantv/media/report/ReportParams;->setLeaveTimeS(J)Lcom/hunantv/media/report/ReportParams;

    :cond_1
    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "-----------surface create"

    invoke-static {p2, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p2, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bindHolder resumeLoadData"

    invoke-static {p2, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p2, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resumeLoadData()V

    :cond_2
    invoke-interface {p1}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p2

    iget-object p3, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p3, p3, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p3

    if-eq p2, p3, :cond_3

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceCreated "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iput-object p1, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    iget-object p2, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p2}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderViewType()I

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p2, p2, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-interface {p2}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1000(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    move-result-object p1

    const p2, 0x6acfc9

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    const-string p2, "surfaceCreated surface is invalid"

    invoke-static {p1, p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1102(Lcom/hunantv/media/widget/MgtvLoopVideoView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->bindHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$600(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$600(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;->surfaceCreated()V

    :cond_6
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;Z)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {v0, p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1902(Lcom/hunantv/media/widget/MgtvLoopVideoView;Z)Z

    invoke-interface {p1}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceDestroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$600(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$600(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;->surfaceDestroyed()V

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isPrepared()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->pauseLoadData()V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$2000(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Z

    move-result p1

    const-string v0, "-----------surface destroy to pause"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$2100(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderViewType()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSupportAMCKeyFrameBackup()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iput-boolean p2, p1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    iget-object p2, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$1702(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderView:Lcom/hunantv/media/player/MgtvRenderView;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderViewType()I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->isHardware()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iput-boolean p2, p1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mFromSurfaceDestroyToPlay:Z

    :cond_5
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-boolean v0, p1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mIsLoopMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableTexture:Z

    if-eqz v0, :cond_2

    iput-boolean p2, p1, Lcom/hunantv/media/widget/MgtvLoopVideoView;->mHasSurfaceHolderDestroy:Z

    goto :goto_0

    :cond_6
    :try_start_0
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getEnd()Lcom/hunantv/media/report/ReportParams$End;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hunantv/media/report/ReportParams$End;->setInnerRetry(Z)Lcom/hunantv/media/report/ReportParams$End;

    :cond_7
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1, p2, p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$2200(Lcom/hunantv/media/widget/MgtvLoopVideoView;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object p2, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz p2, :cond_8

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$900(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$900(Lcom/hunantv/media/widget/MgtvLoopVideoView;)I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_8

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$1;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$702(Lcom/hunantv/media/widget/MgtvLoopVideoView;J)J

    :cond_8
    return-void
.end method
