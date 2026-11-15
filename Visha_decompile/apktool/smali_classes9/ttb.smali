.class public Lttb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljxb;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;


# static fields
.field public static r:I


# instance fields
.field public b:I

.field public c:I

.field public d:Landroid/media/MediaPlayer;

.field public e:Lcom/transsion/widgets/VideoPlayerSurfaceView;

.field public f:Landroid/content/Context;

.field public g:Landroid/net/Uri;

.field public h:Landroid/view/SurfaceHolder;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public q:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    rsub-int v0, v0, -0x3e8

    add-int/lit8 v0, v0, -0x6

    sput v0, Lttb;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/widgets/VideoPlayerSurfaceView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lttb;->b:I

    iput v0, p0, Lttb;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lttb;->q:F

    iput-object p1, p0, Lttb;->f:Landroid/content/Context;

    iput-object p2, p0, Lttb;->e:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    invoke-virtual {p2}, Lcom/transsion/widgets/VideoPlayerSurfaceView;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lttb;->h:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Lttb;->k()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lttb;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lttb;->b:I

    return p0
.end method

.method public b(Z)V
    .locals 2

    const-string v0, "VideoMediaPlayerWrapper"

    const-string v1, "pausePlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lttb;->j()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lttb;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lttb;->r(I)V

    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput v1, p0, Lttb;->b:I

    invoke-virtual {p0, v1}, Lttb;->o(I)V

    :cond_0
    if-eqz p1, :cond_1

    iput v1, p0, Lttb;->c:I

    :cond_1
    return-void
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lttb;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget v0, p0, Lttb;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lttb;->m:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoCurrentPosition mDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lttb;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMediaPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lttb;->m:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lttb;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lttb;->l:I

    return p0
.end method

.method public d(Ljxb$a;)V
    .locals 0

    iget-object p0, p0, Lttb;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lttb;->k:Z

    invoke-virtual {p0, p1}, Lttb;->q(Z)V

    return-void
.end method

.method public f(J)V
    .locals 1

    invoke-virtual {p0}, Lttb;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lttb;->r(I)V

    :goto_0
    return-void
.end method

.method public g(Landroid/net/Uri;)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lttb;->m:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lttb;->h(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lttb;->r(I)V

    iput-object p1, p0, Lttb;->g:Landroid/net/Uri;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lttb;->q:F

    iput-boolean v1, p0, Lttb;->k:Z

    invoke-virtual {p0, v0}, Lttb;->q(Z)V

    return-void
.end method

.method public getVideoDuration()I
    .locals 1

    invoke-virtual {p0}, Lttb;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lttb;->m:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lttb;->m:I

    :cond_1
    iget p0, p0, Lttb;->m:I

    return p0
.end method

.method public h(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releasePlayer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMediaPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput v0, p0, Lttb;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lttb;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lttb;->r(I)V

    :goto_0
    iget-object p1, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    iget-object p1, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lttb;->d:Landroid/media/MediaPlayer;

    iput v0, p0, Lttb;->b:I

    invoke-virtual {p0, v0}, Lttb;->o(I)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "VideoMediaPlayerWrapper"

    const-string v1, "startPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lttb;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lttb;->f(J)V

    :cond_0
    invoke-virtual {p0}, Lttb;->l()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget v0, p0, Lttb;->q:F

    invoke-virtual {p0, v0}, Lttb;->s(F)V

    invoke-virtual {p0, v1}, Lttb;->o(I)V

    :cond_1
    iput v1, p0, Lttb;->c:I

    return-void
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget p0, p0, Lttb;->b:I

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lttb;->e:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/widgets/VideoPlayerSurfaceView;->setSurfaceListener(Lcom/transsion/widgets/VideoPlayerSurfaceView$SurfaceCallback;)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget p0, p0, Lttb;->b:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    invoke-virtual {p0}, Lttb;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n()V
    .locals 7

    const-string v0, "unable to open content: "

    iget-boolean v1, p0, Lttb;->i:Z

    const-string v2, "VideoMediaPlayerWrapper"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lttb;->g:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lttb;->h:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openVideo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lttb;->f:Landroid/content/Context;

    iget-object v6, p0, Lttb;->g:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lttb;->h:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v4, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-virtual {p0}, Lttb;->p()V

    iput v3, p0, Lttb;->b:I

    invoke-virtual {p0, v3}, Lttb;->o(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lttb;->g:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v3, v1}, Lttb;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lttb;->g:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v3, v1}, Lttb;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lttb;->g:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v3, v1}, Lttb;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :cond_1
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openVideo, not ready for playback just yet, will try again later, mOnResumed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lttb;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lttb;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSurfaceHolder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lttb;->h:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final o(I)V
    .locals 2

    iput p1, p0, Lttb;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playStateChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lttb;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mVideoSourceSwitching:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lttb;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMediaPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lttb;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lttb;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxb$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljxb$a;->onMediaPlayerStateChange(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lttb;->b:I

    iput p1, p0, Lttb;->c:I

    invoke-virtual {p0, p1}, Lttb;->o(I)V

    const-string p0, "VideoMediaPlayerWrapper"

    const-string p1, "onCompletion"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "), what = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", extra = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMediaPlayerWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lttb;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_8

    const/16 p1, 0x104

    if-ne p2, p1, :cond_0

    sget v2, Lttb;->r:I

    if-ne p3, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lttb;->c()I

    move-result p3

    invoke-virtual {p0, p3}, Lttb;->r(I)V

    invoke-virtual {p0, v1}, Lttb;->o(I)V

    iput v1, p0, Lttb;->b:I

    iput v1, p0, Lttb;->c:I

    iget-object p3, p0, Lttb;->e:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    if-eqz p3, :cond_9

    if-ne p2, p1, :cond_1

    sget p1, Lcom/transsion/magicvideo/R$string;->str_video_bad_file:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x105

    if-ne p2, p1, :cond_2

    sget p1, Lcom/transsion/magicvideo/R$string;->str_video_cannot_connect_to_server:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x106

    if-ne p2, p1, :cond_3

    sget p1, Lcom/transsion/magicvideo/R$string;->str_video_type_not_supported:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x107

    if-ne p2, p1, :cond_4

    sget p1, Lcom/transsion/magicvideo/R$string;->str_video_drm_not_supported:I

    goto :goto_0

    :cond_4
    const/16 p1, 0x108

    if-ne p2, p1, :cond_5

    sget p1, Lcom/transsion/magicvideo/R$string;->str_video_invalid_connection:I

    goto :goto_0

    :cond_5
    const/16 p1, 0xc8

    if-ne p2, p1, :cond_6

    sget p1, Lcom/transsion/magicvideo/R$string;->str_video_invalid_progressive_playback:I

    goto :goto_0

    :cond_6
    sget p1, Lcom/transsion/magicvideo/R$string;->cannot_play_video:I

    :goto_0
    iget-object p2, p0, Lttb;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljxb$a;

    if-eqz p3, :cond_7

    iget-object v0, p0, Lttb;->g:Landroid/net/Uri;

    invoke-interface {p3, v0, p1}, Ljxb$a;->onShowError(Landroid/net/Uri;I)V

    goto :goto_1

    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "current state is error, skip error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInfo what:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",extra:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMediaPlayerWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lttb;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxb$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Ljxb$a;->onInfo(II)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared mTargetState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lttb;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lttb;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMediaPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lttb;->o(I)V

    iget v0, p0, Lttb;->l:I

    if-eqz v0, :cond_0

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lttb;->f(J)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lttb;->n:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lttb;->o:I

    iget v0, p0, Lttb;->n:I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lttb;->h:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_1
    iget p1, p0, Lttb;->c:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lttb;->k:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lttb;->i:Z

    if-nez p1, :cond_2

    const-string p0, "not Resumed so won\'t start"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p1, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget p1, p0, Lttb;->q:F

    invoke-virtual {p0, p1}, Lttb;->s(F)V

    iput v0, p0, Lttb;->c:I

    invoke-virtual {p0, v0}, Lttb;->o(I)V

    :cond_3
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    const-string p0, "VideoMediaPlayerWrapper"

    const-string p1, "onSeekComplete "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iput-object p1, p0, Lttb;->h:Landroid/view/SurfaceHolder;

    const-string p1, "VideoMediaPlayerWrapper"

    const-string v0, "onSurfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lttb;->n()V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lttb;->h:Landroid/view/SurfaceHolder;

    const-string p1, "VideoMediaPlayerWrapper"

    const-string v0, "onSurfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lttb;->h(Z)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    iget-object p0, p0, Lttb;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxb$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Ljxb$a;->onVideoSizeChanged(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lttb;->f:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->h(Landroid/content/Context;)I

    move-result v0

    iget-object p0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_1
    return-void
.end method

.method public q(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeOrPause("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lttb;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOnResumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lttb;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMediaPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lttb;->i:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lttb;->d:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lttb;->h(Z)V

    :cond_0
    invoke-virtual {p0}, Lttb;->n()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lttb;->b(Z)V

    :goto_0
    return-void
.end method

.method public r(I)V
    .locals 1

    iput p1, p0, Lttb;->l:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLastPosition, mLastPosition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lttb;->l:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoMediaPlayerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public s(F)V
    .locals 1

    iget-object v0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iput p1, p0, Lttb;->q:F

    iget-object p1, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lttb;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPlayerSpeed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoMediaPlayerWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final t(I)Z
    .locals 3

    iget-boolean v0, p0, Lttb;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iput-boolean v1, p0, Lttb;->j:Z

    :cond_0
    iget-boolean p0, p0, Lttb;->j:Z

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1
.end method
