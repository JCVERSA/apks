.class Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/alpha/MgtvGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GLThreadManager"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hunantv/media/alpha/MgtvGLTextureView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->checkGLESVersion()V

    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "Q3Dimension MSM7500 "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    sget-object v0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGLDriver renderer = \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" multipleContextsAllowed = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mLimitedGLESContexts = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public releaseEglContextLocked(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mEglOwner:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mEglOwner:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mLimitedGLESContexts:Z
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

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->checkGLESVersion()V

    iget-boolean v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

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

.method public declared-synchronized threadExiting(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->access$1102(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;Z)Z

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mEglOwner:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mEglOwner:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public tryAcquireEglContextLocked(Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;)Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mEglOwner:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->checkGLESVersion()V

    iget-boolean p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mEglOwner:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;->requestReleaseEglContextLocked()V

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThreadManager;->mEglOwner:Lcom/hunantv/media/alpha/MgtvGLTextureView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method
