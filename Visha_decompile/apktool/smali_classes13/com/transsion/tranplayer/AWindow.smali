.class public Lcom/transsion/tranplayer/AWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/IVLCVout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;,
        Lcom/transsion/tranplayer/AWindow$NativeLock;,
        Lcom/transsion/tranplayer/AWindow$SurfaceHelper;
    }
.end annotation


# static fields
.field private static final AWINDOW_REGISTER_ERROR:I = 0x0

.field private static final AWINDOW_REGISTER_FLAGS_HAS_VIDEO_LAYOUT_LISTENER:I = 0x2

.field private static final AWINDOW_REGISTER_FLAGS_SUCCESS:I = 0x1

.field private static final ID_MAX:I = 0x2

.field private static final ID_SUBTITLES:I = 0x1

.field private static final ID_VIDEO:I = 0x0

.field private static final SURFACE_STATE_ATTACHED:I = 0x1

.field private static final SURFACE_STATE_INIT:I = 0x0

.field private static final SURFACE_STATE_READY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AWindow"


# instance fields
.field private mCallbackNativeHandle:J

.field private final mHandler:Landroid/os/Handler;

.field private mIVLCVoutCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/tranplayer/IVLCVout$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mMouseAction:I

.field private mMouseButton:I

.field private mMouseX:I

.field private mMouseY:I

.field private final mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

.field private mOnNewVideoLayoutListener:Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;

.field private final mSurfaceCallback:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

.field private final mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

.field private mSurfaceTextureThread:Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;

.field private final mSurfaces:[Landroid/view/Surface;

.field private final mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mUseGLRenderer:Z

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mOnNewVideoLayoutListener:Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/tranplayer/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/transsion/tranplayer/AWindow;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/transsion/tranplayer/AWindow;->mUseGLRenderer:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/transsion/tranplayer/AWindow;->mCallbackNativeHandle:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/transsion/tranplayer/AWindow;->mMouseAction:I

    iput v2, p0, Lcom/transsion/tranplayer/AWindow;->mMouseButton:I

    iput v2, p0, Lcom/transsion/tranplayer/AWindow;->mMouseX:I

    iput v2, p0, Lcom/transsion/tranplayer/AWindow;->mMouseY:I

    iput v2, p0, Lcom/transsion/tranplayer/AWindow;->mWindowWidth:I

    iput v2, p0, Lcom/transsion/tranplayer/AWindow;->mWindowHeight:I

    new-instance v2, Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;

    invoke-direct {v2, v0}, Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;-><init>(Lcom/transsion/tranplayer/AWindow$1;)V

    iput-object v2, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceTextureThread:Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;

    new-instance v2, Lcom/transsion/tranplayer/AWindow$NativeLock;

    invoke-direct {v2, v0}, Lcom/transsion/tranplayer/AWindow$NativeLock;-><init>(Lcom/transsion/tranplayer/AWindow$1;)V

    iput-object v2, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceCallback:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

    const/4 p1, 0x2

    new-array v2, p1, [Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    iput-object v2, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    aput-object v0, v2, v1

    const/4 v3, 0x1

    aput-object v0, v2, v3

    new-array p1, p1, [Landroid/view/Surface;

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaces:[Landroid/view/Surface;

    aput-object v0, p1, v1

    aput-object v0, p1, v3

    return-void
.end method

.method private SurfaceTexture_detachFromGLContext()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceTextureThread:Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;

    invoke-static {p0}, Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;->access$1600(Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;)V

    return-void
.end method

.method private SurfaceTexture_getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceTextureThread:Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;

    invoke-static {p0}, Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;->access$1800(Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method private SurfaceTexture_waitAndUpdateTexImage([F)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceTextureThread:Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;

    invoke-static {p0, p1}, Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;->access$1700(Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;[F)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/transsion/tranplayer/AWindow;I)Landroid/view/Surface;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/AWindow;->getNativeSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/tranplayer/AWindow;ILandroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/AWindow;->setNativeSurface(ILandroid/view/Surface;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/transsion/tranplayer/AWindow;)Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mOnNewVideoLayoutListener:Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/transsion/tranplayer/AWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow;->onSurfaceCreated()V

    return-void
.end method

.method public static synthetic access$500(Lcom/transsion/tranplayer/AWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow;->onSurfaceDestroyed()V

    return-void
.end method

.method private ensureInitState()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/tranplayer/AWindow;->mUseGLRenderer:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set view when already attached. Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSurfaces[ID_VIDEO]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaces:[Landroid/view/Surface;

    aget-object v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mSurfaces[ID_SUBTITLES]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaces:[Landroid/view/Surface;

    aget-object p0, p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set view when using GL Renderer."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getNativeSurface(I)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaces:[Landroid/view/Surface;

    aget-object p0, p0, p1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getSubtitlesSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/AWindow;->getNativeSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method private getVideoSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/AWindow;->getNativeSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeOnMouseEvent(JIIII)V
.end method

.method private static native nativeOnWindowSize(JII)V
.end method

.method private onSurfaceCreated()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tranplayer/IVLCVout$Callback;

    invoke-interface {v1, p0}, Lcom/transsion/tranplayer/IVLCVout$Callback;->onSurfacesCreated(Lcom/transsion/tranplayer/IVLCVout;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceCallback:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;->onSurfaceCreated()V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "videoHelper shouldn\'t be null here"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onSurfaceDestroyed()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/tranplayer/AWindow;->detachViews()V

    return-void
.end method

.method private registerNative(J)I
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lcom/transsion/tranplayer/AWindow;->mCallbackNativeHandle:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    monitor-exit v2

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-wide p1, p0, Lcom/transsion/tranplayer/AWindow;->mCallbackNativeHandle:J

    iget v5, p0, Lcom/transsion/tranplayer/AWindow;->mMouseAction:I

    const/4 v0, -0x1

    if-eq v5, v0, :cond_1

    iget v6, p0, Lcom/transsion/tranplayer/AWindow;->mMouseButton:I

    iget v7, p0, Lcom/transsion/tranplayer/AWindow;->mMouseX:I

    iget v8, p0, Lcom/transsion/tranplayer/AWindow;->mMouseY:I

    move-wide v3, p1

    invoke-static/range {v3 .. v8}, Lcom/transsion/tranplayer/AWindow;->nativeOnMouseEvent(JIIII)V

    :cond_1
    iget p1, p0, Lcom/transsion/tranplayer/AWindow;->mWindowWidth:I

    if-eq p1, v0, :cond_2

    iget p2, p0, Lcom/transsion/tranplayer/AWindow;->mWindowHeight:I

    if-eq p2, v0, :cond_2

    iget-wide v0, p0, Lcom/transsion/tranplayer/AWindow;->mCallbackNativeHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/tranplayer/AWindow;->nativeOnWindowSize(JII)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mOnNewVideoLayoutListener:Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_0
    monitor-exit v2

    return p0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nativeHandle is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setBuffersGeometry(Landroid/view/Surface;III)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setNativeSurface(ILandroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaces:[Landroid/view/Surface;

    aput-object p2, p0, p1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow;->ensureInitState()V

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "surface is not attached and holder is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->release()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    new-instance v7, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;-><init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;Lcom/transsion/tranplayer/AWindow$1;)V

    aput-object v7, v0, p1

    return-void
.end method

.method private setVideoLayout(IIIIII)V
    .locals 10

    move-object v1, p0

    iget-object v8, v1, Lcom/transsion/tranplayer/AWindow;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/transsion/tranplayer/AWindow$1;

    move-object v0, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/tranplayer/AWindow$1;-><init>(Lcom/transsion/tranplayer/AWindow;IIIIII)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setView(ILandroid/view/SurfaceView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow;->ensureInitState()V

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->release()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    new-instance v1, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;-><init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/SurfaceView;Lcom/transsion/tranplayer/AWindow$1;)V

    aput-object v1, v0, p1

    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "view is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setView(ILandroid/view/TextureView;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow;->ensureInitState()V

    if-eqz p2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->release()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    new-instance v1, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;-><init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/TextureView;Lcom/transsion/tranplayer/AWindow$1;)V

    aput-object v1, v0, p1

    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "view is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private unregisterNative()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/transsion/tranplayer/AWindow;->mCallbackNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iput-wide v3, p0, Lcom/transsion/tranplayer/AWindow;->mCallbackNativeHandle:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unregister called when not registered"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public SurfaceTexture_attachToGLContext(I)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceTextureThread:Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;

    invoke-static {p0, p1}, Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;->access$1500(Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;I)Z

    move-result p0

    return p0
.end method

.method public addCallback(Lcom/transsion/tranplayer/IVLCVout$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public areSurfacesWaiting()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public areViewsAttached()Z
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public attachViews()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/transsion/tranplayer/AWindow;->attachViews(Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;)V

    return-void
.end method

.method public attachViews(Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow;->mOnNewVideoLayoutListener:Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;

    .line 5
    iget-object p1, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    invoke-static {p1, v1}, Lcom/transsion/tranplayer/AWindow$NativeLock;->access$1002(Lcom/transsion/tranplayer/AWindow$NativeLock;Z)Z

    .line 6
    iget-object p1, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    invoke-static {p1, v1}, Lcom/transsion/tranplayer/AWindow$NativeLock;->access$1102(Lcom/transsion/tranplayer/AWindow$NativeLock;Z)Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x2

    if-ge v1, p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    aget-object p1, p1, v1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->attach()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "already attached or video view not configured"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized detachViews()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v2, p0, Lcom/transsion/tranplayer/AWindow;->mOnNewVideoLayoutListener:Lcom/transsion/tranplayer/IVLCVout$OnNewVideoLayoutListener;

    iget-object v3, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/transsion/tranplayer/AWindow$NativeLock;->access$1102(Lcom/transsion/tranplayer/AWindow$NativeLock;Z)Z

    iget-object v3, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceHelpers:[Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tranplayer/IVLCVout$Callback;

    invoke-interface {v1, p0}, Lcom/transsion/tranplayer/IVLCVout$Callback;->onSurfacesDestroyed(Lcom/transsion/tranplayer/IVLCVout;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceCallback:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;->onSurfaceDestroyed()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mSurfaceTextureThread:Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;

    invoke-static {v0}, Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;->access$1200(Lcom/transsion/tranplayer/AWindow$SurfaceTextureThread;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public removeCallback(Lcom/transsion/tranplayer/IVLCVout$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendMouseEvent(IIII)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/transsion/tranplayer/AWindow;->mCallbackNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/transsion/tranplayer/AWindow;->mMouseAction:I

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/transsion/tranplayer/AWindow;->mMouseButton:I

    if-ne v3, p2, :cond_0

    iget v3, p0, Lcom/transsion/tranplayer/AWindow;->mMouseX:I

    if-ne v3, p3, :cond_0

    iget v3, p0, Lcom/transsion/tranplayer/AWindow;->mMouseY:I

    if-eq v3, p4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/transsion/tranplayer/AWindow;->nativeOnMouseEvent(JIIII)V

    :cond_1
    iput p1, p0, Lcom/transsion/tranplayer/AWindow;->mMouseAction:I

    iput p2, p0, Lcom/transsion/tranplayer/AWindow;->mMouseButton:I

    iput p3, p0, Lcom/transsion/tranplayer/AWindow;->mMouseX:I

    iput p4, p0, Lcom/transsion/tranplayer/AWindow;->mMouseY:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSubtitlesSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 2
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/tranplayer/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setSubtitlesSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/tranplayer/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setSubtitlesView(Landroid/view/SurfaceView;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/transsion/tranplayer/AWindow;->setView(ILandroid/view/SurfaceView;)V

    return-void
.end method

.method public setSubtitlesView(Landroid/view/TextureView;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/transsion/tranplayer/AWindow;->setView(ILandroid/view/TextureView;)V

    return-void
.end method

.method public setVideoSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 2
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/tranplayer/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/tranplayer/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoView(Landroid/view/SurfaceView;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/transsion/tranplayer/AWindow;->setView(ILandroid/view/SurfaceView;)V

    return-void
.end method

.method public setVideoView(Landroid/view/TextureView;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/transsion/tranplayer/AWindow;->setView(ILandroid/view/TextureView;)V

    return-void
.end method

.method public setWindowSize(II)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow;->mNativeLock:Lcom/transsion/tranplayer/AWindow$NativeLock;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/transsion/tranplayer/AWindow;->mCallbackNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/transsion/tranplayer/AWindow;->mWindowWidth:I

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/transsion/tranplayer/AWindow;->mWindowHeight:I

    if-eq v3, p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v1, v2, p1, p2}, Lcom/transsion/tranplayer/AWindow;->nativeOnWindowSize(JII)V

    :cond_1
    iput p1, p0, Lcom/transsion/tranplayer/AWindow;->mWindowWidth:I

    iput p2, p0, Lcom/transsion/tranplayer/AWindow;->mWindowHeight:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public useGLRenderer()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tranplayer/AWindow;->mUseGLRenderer:Z

    return-void
.end method
