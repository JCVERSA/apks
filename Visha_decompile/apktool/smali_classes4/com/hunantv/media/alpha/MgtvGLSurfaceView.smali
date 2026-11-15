.class public Lcom/hunantv/media/alpha/MgtvGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Lcom/hunantv/media/alpha/IAlphaRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$LogWriter;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EglHelper;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$SimpleEGLConfigChooser;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$ComponentSizeChooser;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$BaseConfigChooser;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLConfigChooser;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$DefaultContextFactory;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLContextFactory;,
        Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MgtvGLSurfaceView"

.field private static final sGLThreadManager:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLWrapper;

.field private mMeasureHelper:Lcom/hunantv/media/player/f/c;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/hunantv/media/alpha/Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/alpha/MgtvGLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;-><init>(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$1;)V

    sput-object v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->sGLThreadManager:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->init()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)Lcom/hunantv/media/alpha/Renderer;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mRenderer:Lcom/hunantv/media/alpha/Renderer;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLContextClientVersion:I

    return p0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLConfigChooser;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLConfigChooser:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLConfigChooser;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLContextFactory;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLContextFactory:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLContextFactory;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLWindowSurfaceFactory;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLWrapper;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLWrapper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLWrapper;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mDebugFlags:I

    return p0
.end method

.method public static synthetic access$800()Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;
    .locals 1

    sget-object v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->sGLThreadManager:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method private checkRenderThreadState()V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setRenderer has already been called for this instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init()V
    .locals 2

    const-string v0, "MgtvGLTextureView"

    const-string v1, "this is surfaceview"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hunantv/media/player/f/c;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/f/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mDebugFlags:I

    return p0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method public getRenderMode()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->getRenderMode()I

    move-result p0

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mRenderer:Lcom/hunantv/media/alpha/Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    iget-object v3, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->setRenderMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mDetached:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mDetached:Z

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/media/player/f/c;->c(II)V

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p1}, Lcom/hunantv/media/player/f/c;->b()I

    move-result p1

    iget-object p2, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p2}, Lcom/hunantv/media/player/f/c;->c()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/player/f/c;->d(II)V

    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->onResume()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->requestRender()V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/f/c;->b(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9

    .line 1
    new-instance v8, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$ComponentSizeChooser;-><init>(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->setEGLConfigChooser(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLConfigChooser;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLConfigChooser:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .line 3
    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->setEGLConfigChooser(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->checkRenderThreadState()V

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLContextFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLContextFactory:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setGLWrapper(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLWrapper:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLWrapper;

    return-void
.end method

.method public setOpaque(Z)V
    .locals 7

    if-nez p1, :cond_0

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, -0x3

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Lcom/hunantv/media/alpha/Renderer;)V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->checkRenderThreadState()V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLConfigChooser:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;Z)V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLConfigChooser:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLConfigChooser;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLContextFactory:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$DefaultContextFactory;-><init>(Lcom/hunantv/media/alpha/MgtvGLSurfaceView;Lcom/hunantv/media/alpha/MgtvGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLContextFactory:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLContextFactory;

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/hunantv/media/alpha/MgtvGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$EGLWindowSurfaceFactory;

    :cond_2
    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mRenderer:Lcom/hunantv/media/alpha/Renderer;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/f/c;->a(II)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {p0, p3, p4}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->surfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->surfaceDestroyed()V

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLSurfaceView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/hunantv/media/alpha/MgtvGLSurfaceView$GLThread;->requestRenderAndNotify(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
