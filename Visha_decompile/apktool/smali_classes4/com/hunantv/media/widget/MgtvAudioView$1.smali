.class Lcom/hunantv/media/widget/MgtvAudioView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/IMgtvRenderView$IRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvAudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvAudioView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvAudioView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;II)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mEnableMediacodecSW:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$900(Lcom/hunantv/media/widget/MgtvAudioView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1000(Lcom/hunantv/media/widget/MgtvAudioView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hunantv/media/widget/MgtvAudioView;->setStartPosMs(I)V

    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1100(Lcom/hunantv/media/widget/MgtvAudioView;)V

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/widget/MgtvAudioView$1;->needOpenVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v0, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1200(Lcom/hunantv/media/widget/MgtvAudioView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1300(Lcom/hunantv/media/widget/MgtvAudioView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1202(Lcom/hunantv/media/widget/MgtvAudioView;Z)Z

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1400(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->seekTo(IZZ)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p1, v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1402(Lcom/hunantv/media/widget/MgtvAudioView;I)I

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1500(Lcom/hunantv/media/widget/MgtvAudioView;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->isHardware()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1600(Lcom/hunantv/media/widget/MgtvAudioView;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlaybackStep()V

    :cond_4
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v0, p1, Lcom/hunantv/media/widget/MgtvAudioView;->mSizeChangedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result p1

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v1, v1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p0, p2, p3}, Lcom/hunantv/media/widget/MgtvAudioView;->access$200(Lcom/hunantv/media/widget/MgtvAudioView;II)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1100(Lcom/hunantv/media/widget/MgtvAudioView;)V

    :goto_1
    return-void
.end method

.method private needOpenVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$800(Lcom/hunantv/media/widget/MgtvAudioView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private videoSurfaceChanged(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;III)V
    .locals 0

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAudioView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p0, p3, p4}, Lcom/hunantv/media/widget/MgtvAudioView;->access$200(Lcom/hunantv/media/widget/MgtvAudioView;II)V

    return-void
.end method

.method private videoSurfaceCreate(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;II)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAudioView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSurfaceCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderViewType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-interface {v0}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$600(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    move-result-object p1

    const p2, 0x6acfc9

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    const-string p1, "surfaceCreated surface is invalid"

    invoke-static {p0, p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$702(Lcom/hunantv/media/widget/MgtvAudioView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvAudioView$1;->bindHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;III)V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------surface changed. threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isOnlyAudioMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-boolean v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mBackPlayEnable:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hunantv/media/widget/MgtvAudioView$1;->videoSurfaceChanged(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;III)V

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$000(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$000(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;->surfaceChanged()V

    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;II)V
    .locals 7

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------surface create. threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$300(Lcom/hunantv/media/widget/MgtvAudioView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$300(Lcom/hunantv/media/widget/MgtvAudioView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x21c

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$400(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$400(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v4}, Lcom/hunantv/media/widget/MgtvAudioView;->access$500(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0xc350a

    invoke-interface {v2, v6, v3, v4, v5}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v2, v2, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Lcom/hunantv/media/report/ReportParams;->setLeaveTimeS(J)Lcom/hunantv/media/report/ReportParams;

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iput-object p1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isOnlyAudioMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-boolean v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mBackPlayEnable:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/widget/MgtvAudioView$1;->videoSurfaceCreate(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;II)V

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$000(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$000(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;->surfaceCreated()V

    :cond_3
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;Z)V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------surface destroy. threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0, p2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1602(Lcom/hunantv/media/widget/MgtvAudioView;Z)Z

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvRenderView;->getRenderView()Lcom/hunantv/media/player/IMgtvRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAudioView;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceDestroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$000(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$000(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;->surfaceDestroyed()V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;->releaseSurface()V

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mSurfaceHolder:Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;

    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->isOnlyAudioMode()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-boolean v0, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mBackPlayEnable:Z

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$1700(Lcom/hunantv/media/widget/MgtvAudioView;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-boolean v0, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mBackPlayEnable:Z

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object p2, p1, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$500(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$500(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_5

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$1;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$302(Lcom/hunantv/media/widget/MgtvAudioView;J)J

    :cond_5
    return-void
.end method
