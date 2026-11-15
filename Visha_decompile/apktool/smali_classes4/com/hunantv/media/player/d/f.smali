.class public Lcom/hunantv/media/player/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/d/f$b;,
        Lcom/hunantv/media/player/d/f$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Lcom/hunantv/media/player/d/f$a;

.field private volatile C:Z

.field private D:Z

.field private E:Lcom/hunantv/media/widget/IVideoView;

.field private a:Landroid/graphics/SurfaceTexture;

.field private b:Landroid/view/Surface;

.field private c:Lcom/hunantv/media/player/d/f$b;

.field private d:Landroid/os/HandlerThread;

.field private e:I

.field private f:[F

.field private g:Lcom/hunantv/media/player/d/b;

.field private h:Lcom/hunantv/media/player/d/a/b;

.field private i:Z

.field private j:Ljavax/microedition/khronos/egl/EGL10;

.field private k:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private l:Ljavax/microedition/khronos/egl/EGLContext;

.field private m:Ljavax/microedition/khronos/egl/EGLConfig;

.field private n:Ljavax/microedition/khronos/egl/EGLSurface;

.field private o:Ljava/lang/Object;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/hunantv/media/player/d/a$b;

.field private v:Landroid/content/Context;

.field private w:Lcom/hunantv/media/utils/FpsStatistic;

.field private volatile x:Z

.field private y:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->f:[F

    new-instance v0, Lcom/hunantv/media/player/d/b;

    invoke-direct {v0}, Lcom/hunantv/media/player/d/b;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->g:Lcom/hunantv/media/player/d/b;

    new-instance v0, Lcom/hunantv/media/player/d/a/b;

    invoke-direct {v0}, Lcom/hunantv/media/player/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->h:Lcom/hunantv/media/player/d/a/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->l:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v0, 0x2

    iput v0, p0, Lcom/hunantv/media/player/d/f;->t:I

    new-instance v0, Lcom/hunantv/media/utils/FpsStatistic;

    invoke-direct {v0}, Lcom/hunantv/media/utils/FpsStatistic;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->w:Lcom/hunantv/media/utils/FpsStatistic;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/d/f;->x:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/d/f;->z:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/d/f;->A:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/d/f;->C:Z

    iput-object p1, p0, Lcom/hunantv/media/player/d/f;->v:Landroid/content/Context;

    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->B:Lcom/hunantv/media/player/d/f$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/player/d/f$a;->onInfo(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/d/f;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->m()V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/d/f;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/d/f;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/d/f;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/d/f;->c(II)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hunantv/media/player/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 14
    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->y:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    if-eqz p0, :cond_0

    const v0, 0xc38e9

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 4

    .line 2
    new-instance v0, Lcom/hunantv/media/player/d/a/b;

    invoke-direct {v0}, Lcom/hunantv/media/player/d/a/b;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->v:Landroid/content/Context;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/hunantv/media/player/d/a/a/b;

    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/hunantv/media/player/d/a/a/b;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->v:Landroid/content/Context;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/hunantv/media/player/d/a/a/c;

    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/hunantv/media/player/d/a/a/c;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "102"

    invoke-direct {p0, v2, v1}, Lcom/hunantv/media/player/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/16 v1, 0x64

    if-gt p1, v1, :cond_3

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->h:Lcom/hunantv/media/player/d/a/b;

    iget-object p1, p0, Lcom/hunantv/media/player/d/f;->g:Lcom/hunantv/media/player/d/b;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/d/b;->a(Lcom/hunantv/media/player/d/a/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/player/d/f;->h:Lcom/hunantv/media/player/d/a/b;

    invoke-virtual {p1}, Lcom/hunantv/media/player/d/a/b;->h()I

    move-result p1

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->h:Lcom/hunantv/media/player/d/a/b;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/a/b;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/hunantv/media/player/d/f;->a(IILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic b(Lcom/hunantv/media/player/d/f;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/d/f;->d(II)V

    return-void
.end method

.method public static synthetic b(Lcom/hunantv/media/player/d/f;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/hunantv/media/player/d/f;->z:Z

    return p0
.end method

.method private c(II)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->g:Lcom/hunantv/media/player/d/b;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/d/b;->a(II)V

    return-void
.end method

.method public static synthetic c(Lcom/hunantv/media/player/d/f;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->s()V

    return-void
.end method

.method private d(II)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->A:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/player/d/f;->C:Z

    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->g:Lcom/hunantv/media/player/d/b;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/d/b;->b(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic d(Lcom/hunantv/media/player/d/f;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->t()V

    return-void
.end method

.method public static synthetic e(Lcom/hunantv/media/player/d/f;)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->n()Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/hunantv/media/player/d/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->o()V

    return-void
.end method

.method public static k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private m()V
    .locals 8

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initEGL in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const-string v2, "101"

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initEGL eglGetDisplay failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/hunantv/media/player/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initEGL eglInitialize failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/hunantv/media/player/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/hunantv/media/player/d/a$b;

    iget v3, p0, Lcom/hunantv/media/player/d/f;->t:I

    const/4 v4, 0x1

    invoke-direct {v0, v4, v3}, Lcom/hunantv/media/player/d/a$b;-><init>(ZI)V

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->u:Lcom/hunantv/media/player/d/a$b;

    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v0, v3, v5}, Lcom/hunantv/media/player/d/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->m:Ljavax/microedition/khronos/egl/EGLConfig;

    iget v3, p0, Lcom/hunantv/media/player/d/f;->t:I

    const/16 v5, 0x3038

    const/16 v6, 0x3098

    filled-new-array {v6, v3, v5}, [I

    move-result-object v3

    iget-object v5, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v5, v6, v0, v7, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->l:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v3, v1, :cond_3

    if-ne v0, v7, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/hunantv/media/player/d/f;->i:Z

    const-string v0, ""

    invoke-direct {p0, v4, v4, v0}, Lcom/hunantv/media/player/d/f;->a(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object p0

    const-string v0, "initEGL out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initEGL eglCreateContext fail failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/hunantv/media/player/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()Z
    .locals 10

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v1, 0x0

    const-string v2, "101"

    if-nez v0, :cond_0

    const-string v0, "updateSurfaceTextureImpl egl not initialized"

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/hunantv/media/player/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    const-string v0, "updateSurfaceTextureImpl eglDisplay not initialized"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->m:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    const-string v0, "updateSurfaceTextureImpl mEglConfig not initialized"

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->o()V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->o:Ljava/lang/Object;

    if-nez v0, :cond_3

    const-string v0, "createSurfaceImpl mBindedSurfaceTexture null"

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/hunantv/media/player/d/f;->m:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v0, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_7

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/hunantv/media/player/d/f;->l:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v0, v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "updateSurfaceTextureImpl eglMakeCurrent error"

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->g:Lcom/hunantv/media/player/d/b;

    iget v4, p0, Lcom/hunantv/media/player/d/f;->e:I

    iget v5, p0, Lcom/hunantv/media/player/d/f;->p:I

    iget v6, p0, Lcom/hunantv/media/player/d/f;->q:I

    iget v7, p0, Lcom/hunantv/media/player/d/f;->r:I

    iget v8, p0, Lcom/hunantv/media/player/d/f;->s:I

    iget-object v9, p0, Lcom/hunantv/media/player/d/f;->h:Lcom/hunantv/media/player/d/a/b;

    invoke-virtual/range {v3 .. v9}, Lcom/hunantv/media/player/d/b;->a(IIIIILcom/hunantv/media/player/d/a/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->h:Lcom/hunantv/media/player/d/a/b;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/a/b;->h()I

    move-result v0

    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->h:Lcom/hunantv/media/player/d/a/b;

    invoke-virtual {v1}, Lcom/hunantv/media/player/d/a/b;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/hunantv/media/player/d/f;->a(IILjava/lang/String;)V

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSurfaceTextureImpl eglCreateWindowSurface error:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eglDestroySurface in"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v1, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object p0

    const-string v0, "eglDestroySurface out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "releaseImpl in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->c:Lcom/hunantv/media/player/d/f$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->c:Lcom/hunantv/media/player/d/f$b;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/hunantv/media/player/d/f;->c:Lcom/hunantv/media/player/d/f$b;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/hunantv/media/player/d/f;->d:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->g:Lcom/hunantv/media/player/d/b;

    invoke-virtual {v0}, Lcom/hunantv/media/player/d/b;->a()V

    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->q()V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Surface.release() in"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Surface.release() out"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object p0

    const-string v0, "releaseImpl out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->o()V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->l:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eglDestroyContext in"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->l:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iput-object v1, p0, Lcom/hunantv/media/player/d/f;->l:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eglDestroyContext out"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eglTerminate in"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v1, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object p0

    const-string v0, "eglTerminate out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private r()I
    .locals 4

    const/4 p0, 0x1

    new-array v0, p0, [I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget p0, v0, v1

    const v2, 0x8d65

    invoke-static {v2, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p0, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v2, p0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v2, p0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v2, p0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2803

    invoke-static {v2, p0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget p0, v0, v1

    return p0
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->A:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->t()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private t()V
    .locals 5

    iget-boolean v0, p0, Lcom/hunantv/media/player/d/f;->i:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->l:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/hunantv/media/player/d/f;->C:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hunantv/media/player/d/f;->z:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->n()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->l:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->E:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/hunantv/media/widget/IVideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-boolean v3, p0, Lcom/hunantv/media/player/d/f;->D:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lcom/hunantv/media/player/d/f;->D:Z

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->a:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/hunantv/media/player/d/f;->f:[F

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :goto_1
    if-eqz v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->w:Lcom/hunantv/media/utils/FpsStatistic;

    invoke-virtual {v2}, Lcom/hunantv/media/utils/FpsStatistic;->onFrame()V

    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->g:Lcom/hunantv/media/player/d/b;

    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->f:[F

    invoke-virtual {v2, v3}, Lcom/hunantv/media/player/d/b;->a([F)V

    :cond_6
    iget-object v2, p0, Lcom/hunantv/media/player/d/f;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/hunantv/media/player/d/f;->k:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/hunantv/media/player/d/f;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iget-boolean v3, p0, Lcom/hunantv/media/player/d/f;->x:Z

    if-nez v3, :cond_7

    iput-boolean v0, p0, Lcom/hunantv/media/player/d/f;->x:Z

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "106"

    invoke-direct {p0, v2, v0}, Lcom/hunantv/media/player/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/hunantv/media/player/d/f;->C:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/hunantv/media/player/d/f;->C:Z

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d/f$a;)Lcom/hunantv/media/player/d/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/media/player/d/f;->B:Lcom/hunantv/media/player/d/f$a;

    return-object p0
.end method

.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->d:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mgtvmp_jRender"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->c:Lcom/hunantv/media/player/d/f$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hunantv/media/player/d/f$b;

    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hunantv/media/player/d/f$b;-><init>(Lcom/hunantv/media/player/d/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->c:Lcom/hunantv/media/player/d/f$b;

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/hunantv/media/player/d/f;->a(III)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 3
    const/16 v0, 0x3eb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/hunantv/media/player/d/f;->a(III)V

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 4
    if-ltz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/hunantv/media/player/d/f;->p:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/hunantv/media/player/d/f;->q:I

    if-eq v0, p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resize width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/hunantv/media/player/d/f;->p:I

    iput p2, p0, Lcom/hunantv/media/player/d/f;->q:I

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0, p1, p2}, Lcom/hunantv/media/player/d/f;->a(III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(III)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->c:Lcom/hunantv/media/player/d/f$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->c:Lcom/hunantv/media/player/d/f$b;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public a(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/hunantv/media/player/d/f;->y:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    return-void
.end method

.method public a(Lcom/hunantv/media/widget/IVideoView;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/hunantv/media/player/d/f;->E:Lcom/hunantv/media/widget/IVideoView;

    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->g:Lcom/hunantv/media/player/d/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/d/b;->a(Lcom/hunantv/media/widget/IVideoView;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->o:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/hunantv/media/player/d/f;->o:Ljava/lang/Object;

    const/16 p1, 0x7d5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/hunantv/media/player/d/f;->a(III)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/hunantv/media/player/d/f;->z:Z

    return-void
.end method

.method public b()Landroid/graphics/SurfaceTexture;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->r()I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/d/f;->e:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/hunantv/media/player/d/f;->e:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->a:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public b(II)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->A:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeWindow width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/hunantv/media/player/d/f;->r:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/hunantv/media/player/d/f;->s:I

    if-eq v1, p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send resizeWindow width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/hunantv/media/player/d/f;->r:I

    iput p2, p0, Lcom/hunantv/media/player/d/f;->s:I

    const/16 v1, 0x3ed

    invoke-virtual {p0, v1, p1, p2}, Lcom/hunantv/media/player/d/f;->a(III)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->a:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->b()Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->a:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public d()Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/SurfaceUtil;->create(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    invoke-static {v0}, Lcom/hunantv/media/player/utils/SurfaceUtil;->release(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/hunantv/media/player/d/f;->a:Landroid/graphics/SurfaceTexture;

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/player/d/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/SurfaceUtil;->create(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    return-object p0

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface invalid mSurface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",valid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/d/f;->b:Landroid/view/Surface;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "105"

    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/player/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "getSurface invalid"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hunantv/media/player/d/f;->p()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/d/f;->D:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/d/f;->x:Z

    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->w:Lcom/hunantv/media/utils/FpsStatistic;

    invoke-virtual {p0}, Lcom/hunantv/media/utils/FpsStatistic;->resetFps()V

    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->w:Lcom/hunantv/media/utils/FpsStatistic;

    invoke-virtual {p0}, Lcom/hunantv/media/utils/FpsStatistic;->startFps()V

    return-void
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->w:Lcom/hunantv/media/utils/FpsStatistic;

    invoke-virtual {p0}, Lcom/hunantv/media/utils/FpsStatistic;->stopFps()V

    return-void
.end method

.method public i()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->w:Lcom/hunantv/media/utils/FpsStatistic;

    invoke-virtual {p0}, Lcom/hunantv/media/utils/FpsStatistic;->getFps()I

    move-result p0

    return p0
.end method

.method public j()Lcom/hunantv/media/player/d/a/b;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/d/f;->h:Lcom/hunantv/media/player/d/a/b;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/16 p1, 0x3e9

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/hunantv/media/player/d/f;->a(III)V

    return-void
.end method
