.class public Lcom/transsion/tranplayer/GLRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFrameUpdated:Z

.field private mInstance:J

.field private mLastTextureId:I

.field private mListener:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

.field private mSurfaceCreated:Z


# direct methods
.method public constructor <init>(ILcom/transsion/tranplayer/MediaPlayer;Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mLastTextureId:I

    iput-boolean v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mFrameUpdated:Z

    iput-boolean v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mSurfaceCreated:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mInstance:J

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/transsion/tranplayer/GLRenderer;->mListener:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

    invoke-direct {p0, p2, p1}, Lcom/transsion/tranplayer/GLRenderer;->nativeInit(Lcom/transsion/tranplayer/MediaPlayer;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native nativeGetVideoTexture(Landroid/graphics/Point;)I
.end method

.method private native nativeInit(Lcom/transsion/tranplayer/MediaPlayer;I)V
.end method

.method private native nativeOnSurfaceCreated()V
.end method

.method private native nativeOnSurfaceDestroyed()V
.end method

.method private native nativeRelease()V
.end method


# virtual methods
.method public getVideoTexture(Landroid/graphics/Point;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/GLRenderer;->nativeGetVideoTexture(Landroid/graphics/Point;)I

    move-result p1

    iget v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mLastTextureId:I

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mFrameUpdated:Z

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/transsion/tranplayer/GLRenderer;->mLastTextureId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mFrameUpdated:Z

    :cond_1
    :goto_0
    return p1
.end method

.method public declared-synchronized isValid()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mSurfaceCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isVideoFrameUpdated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tranplayer/GLRenderer;->mFrameUpdated:Z

    return p0
.end method

.method public declared-synchronized onSurfaceCreated()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/tranplayer/GLRenderer;->nativeOnSurfaceCreated()V

    iget-boolean v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mSurfaceCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mSurfaceCreated:Z

    iget-object v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mListener:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

    invoke-interface {v0}, Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;->onSurfaceCreated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onSurfaceDestroyed()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mSurfaceCreated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mSurfaceCreated:Z

    iget-object v0, p0, Lcom/transsion/tranplayer/GLRenderer;->mListener:Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;

    invoke-interface {v0}, Lcom/transsion/tranplayer/MediaPlayer$SurfaceListener;->onSurfaceDestroyed()V

    invoke-direct {p0}, Lcom/transsion/tranplayer/GLRenderer;->nativeOnSurfaceDestroyed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/GLRenderer;->nativeRelease()V

    return-void
.end method
