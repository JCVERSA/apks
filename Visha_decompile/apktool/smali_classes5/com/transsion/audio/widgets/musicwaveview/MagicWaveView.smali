.class public Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;
    }
.end annotation


# static fields
.field public static final DRAWTHREAD_NAME:Ljava/lang/String; = "WaveDrawThread"

.field public static final FPS_TIME:I = 0x10

.field public static final OPEN_DEBUG_LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "visha_MagicWaveView"

.field private static drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

.field private static mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

.field private static visualizer:Landroid/media/audiofx/Visualizer;


# instance fields
.field private mHeight:I

.field private mInitSuccess:Z

.field private mWidth:I

.field private playerListener:Lcom/transsion/audio/player/MusicPlayManager$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->delayFps(J)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->draw([F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->releaseVisualizer()V

    return-void
.end method

.method public static bridge synthetic d()Lcom/transsion/audio/widgets/musicwaveview/BaseWave;
    .locals 1

    sget-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    return-object v0
.end method

.method private delayFps(J)Z
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x10

    cmp-long p2, v0, p0

    if-lez p2, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    sub-long/2addr p0, v0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "delayFps exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_MagicWaveView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private draw([F)V
    .locals 6
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "unlockCanvasAndPost:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "draw data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_MagicWaveView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v3, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    iget v4, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWidth:I

    iget v5, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mHeight:I

    invoke-interface {v3, v1, p1, v4, v5}, Lcom/transsion/audio/widgets/musicwaveview/Wave;->drawWave(Landroid/graphics/Canvas;[FII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draw exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_5
    throw p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-direct {v0, p1}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    const-string p0, "visha_MagicWaveView"

    const-string p1, "init"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initDraw()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->initVisualizer()V

    sget-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->drawLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    iput-boolean v1, v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->pauseDraw:Z

    sget-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->stopDraw:Z

    sget-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawThread stop error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "visha_MagicWaveView"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    const-string v2, "WaveDrawThread"

    invoke-direct {v0, p0, v2}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;-><init>(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    iput-boolean v1, v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->pauseDraw:Z

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    iput-boolean v1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->stopDraw:Z

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private quiteDraw()V
    .locals 2

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {p0}, Landroid/media/audiofx/Visualizer;->release()V

    sput-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    :cond_0
    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->setStop(Z)V

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    if-eqz p0, :cond_1

    iput-boolean v1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->stopDraw:Z

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    sput-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    :cond_1
    return-void
.end method

.method private releaseVisualizer()V
    .locals 3

    sget-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    iget v0, v0, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->maxF:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseVisualizer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_MagicWaveView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mInitSuccess:Z

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {p0}, Landroid/media/audiofx/Visualizer;->release()V

    sput-object v1, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    :cond_0
    return-void
.end method


# virtual methods
.method public initVisualizer()V
    .locals 7

    const-string v0, "visha_MagicWaveView"

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mInitSuccess:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->M()I

    move-result v2

    new-instance v3, Landroid/media/audiofx/Visualizer;

    invoke-direct {v3, v2}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    sput-object v3, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    sget-object v4, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    iget v4, v4, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->fCount:I

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    sget-object v3, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    sget-object v4, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    iget v4, v4, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->maxF:I

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v4, v1, v5}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initVisualizer sessionID:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",setstatus:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v5}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    iput-boolean v5, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mInitSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVisualization error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mInitSuccess:Z

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    const-string v0, "visha_MagicWaveView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->initDraw()V

    new-instance v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$1;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$1;-><init>(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->playerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->playerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/audio/widgets/musicwaveview/Wave;->onAttached()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_MagicWaveView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string v0, "visha_MagicWaveView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->playerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->quiteDraw()V

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/audio/widgets/musicwaveview/Wave;->onDetached()V

    :cond_0
    return-void
.end method

.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFftDataCapture "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", fft:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_MagicWaveView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    invoke-interface {p0, p2}, Lcom/transsion/audio/widgets/musicwaveview/Wave;->onFftData([B)V

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_MagicWaveView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->resumeDraw()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->pauseDraw()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onWaveFormDataCapture "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",waveform:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_MagicWaveView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pauseDraw()V
    .locals 1

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->pauseDraw:Z

    :cond_0
    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->setPauseDraw(Z)V

    :cond_1
    return-void
.end method

.method public resumeDraw()V
    .locals 3

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->pauseDraw:Z

    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->drawLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    iget-object v1, v1, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;->drawLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "visha_MagicWaveView"

    const-string v2, "resumeDraw notifyAll..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->setPauseDraw(Z)V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    sget-object v0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->drawThread:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$DrawThread;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->pauseDraw()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mInitSuccess:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->initVisualizer()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->resumeDraw()V

    :cond_2
    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput p3, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWidth:I

    iput p4, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mHeight:I

    sget-object p1, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    invoke-virtual {p1, p3, p4}, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->onSurfaceSize(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "surfaceChanged:width:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  height:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  visible:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_MagicWaveView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->setStop(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->resumeDraw()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceCreated:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_MagicWaveView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->mWave:Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/musicwaveview/BaseWave;->setStop(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->pauseDraw()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceDestroyed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_MagicWaveView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
