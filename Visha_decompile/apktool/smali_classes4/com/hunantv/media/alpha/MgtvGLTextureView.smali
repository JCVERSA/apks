.class public Lcom/hunantv/media/alpha/MgtvGLTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/hunantv/media/alpha/IAlphaRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$LogWriter;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$EglHelper;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$SimpleEGLConfigChooser;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$ComponentSizeChooser;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$BaseConfigChooser;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLConfigChooser;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$DefaultWindowSurfaceFactory;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLWindowSurfaceFactory;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$DefaultContextFactory;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLContextFactory;,
        Lcom/hunantv/media/alpha/MgtvGLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = true

.field private static final LOG_EGL:Z = true

.field private static final LOG_PAUSE_RESUME:Z = true

.field private static final LOG_RENDERER:Z = true

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_THREADS:Z = true

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLTextureView"

.field private static final sGLThreadManager:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

.field private mGLWrapper:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLWrapper;

.field private mMeasureHelper:Lcom/hunantv/media/player/f/c;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/hunantv/media/alpha/Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/alpha/MgtvGLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;-><init>(Lcom/hunantv/media/alpha/MgtvGLTextureView$1;)V

    sput-object v0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->sGLThreadManager:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->init()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/hunantv/media/alpha/MgtvGLTextureView;)Lcom/hunantv/media/alpha/Renderer;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mRenderer:Lcom/hunantv/media/alpha/Renderer;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/hunantv/media/alpha/MgtvGLTextureView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLContextClientVersion:I

    return p0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/alpha/MgtvGLTextureView;)Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLConfigChooser;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLConfigChooser:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLConfigChooser;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/hunantv/media/alpha/MgtvGLTextureView;)Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLContextFactory;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLContextFactory:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLContextFactory;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/hunantv/media/alpha/MgtvGLTextureView;)Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLWindowSurfaceFactory;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLWindowSurfaceFactory:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/hunantv/media/alpha/MgtvGLTextureView;)Lcom/hunantv/media/alpha/MgtvGLTextureView$GLWrapper;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLWrapper:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLWrapper;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/hunantv/media/alpha/MgtvGLTextureView;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mDebugFlags:I

    return p0
.end method

.method public static synthetic access$800()Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;
    .locals 1

    sget-object v0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->sGLThreadManager:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/hunantv/media/alpha/MgtvGLTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method private checkRenderThreadState()V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

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

    const-string v1, "this is textureview"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hunantv/media/player/f/c;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/f/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

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
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->requestExitAndWait()V
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

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mDebugFlags:I

    return p0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method public getRenderMode()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->getRenderMode()I

    move-result p0

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow reattach ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mDetached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLTextureView"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mRenderer:Lcom/hunantv/media/alpha/Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->getRenderMode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    iget-object v3, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->setRenderMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mDetached:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string v0, "GLTextureView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mDetached:Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/media/player/f/c;->c(II)V

    iget-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p1}, Lcom/hunantv/media/player/f/c;->b()I

    move-result p1

    iget-object p2, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p2}, Lcom/hunantv/media/player/f/c;->c()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/player/f/c;->d(II)V

    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->onResume()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->requestRender()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->requestRender()V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/f/c;->b(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9

    .line 1
    new-instance v8, Lcom/hunantv/media/alpha/MgtvGLTextureView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/hunantv/media/alpha/MgtvGLTextureView$ComponentSizeChooser;-><init>(Lcom/hunantv/media/alpha/MgtvGLTextureView;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->setEGLConfigChooser(Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLConfigChooser;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLConfigChooser:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .line 3
    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/hunantv/media/alpha/MgtvGLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/hunantv/media/alpha/MgtvGLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->setEGLConfigChooser(Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->checkRenderThreadState()V

    iput p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLContextFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLContextFactory:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLWindowSurfaceFactory:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setGLWrapper(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLWrapper:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLWrapper;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Lcom/hunantv/media/alpha/Renderer;)V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView;->checkRenderThreadState()V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLConfigChooser:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/hunantv/media/alpha/MgtvGLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/hunantv/media/alpha/MgtvGLTextureView;Z)V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLConfigChooser:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLConfigChooser;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLContextFactory:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Lcom/hunantv/media/alpha/MgtvGLTextureView$DefaultContextFactory;-><init>(Lcom/hunantv/media/alpha/MgtvGLTextureView;Lcom/hunantv/media/alpha/MgtvGLTextureView$1;)V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLContextFactory:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLContextFactory;

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLWindowSurfaceFactory:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    new-instance v0, Lcom/hunantv/media/alpha/MgtvGLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Lcom/hunantv/media/alpha/MgtvGLTextureView$DefaultWindowSurfaceFactory;-><init>(Lcom/hunantv/media/alpha/MgtvGLTextureView$1;)V

    iput-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mEGLWindowSurfaceFactory:Lcom/hunantv/media/alpha/MgtvGLTextureView$EGLWindowSurfaceFactory;

    :cond_2
    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mRenderer:Lcom/hunantv/media/alpha/Renderer;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mMeasureHelper:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/f/c;->a(II)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/graphics/SurfaceTexture;III)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p0, p3, p4}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->surfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView;->mGLThread:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->surfaceDestroyed()V

    return-void
.end method
