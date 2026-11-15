.class public Lcom/cicada/player/utils/DecoderSurfaceTexture;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static final CREATE_SURFACE_MSG:I = 0x3039


# instance fields
.field private mCountDown:Ljava/util/concurrent/CountDownLatch;

.field private mDecoderHandler:J

.field private mHandleThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mTextureId:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mDecoderHandler:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    .line 15
    .line 16
    new-instance v1, Landroid/os/HandlerThread;

    .line 17
    .line 18
    const-string v2, "DecoderSurfaceTexture"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/cicada/player/utils/DecoderSurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/cicada/player/utils/DecoderSurfaceTexture;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mTextureId:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/cicada/player/utils/DecoderSurfaceTexture;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method

.method private native onFrameAvailable(J)V
.end method


# virtual methods
.method public createSurface(IJ)Landroid/view/Surface;
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iput p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mTextureId:I

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mDecoderHandler:J

    .line 8
    .line 9
    :try_start_0
    new-instance p1, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p1, p0, p2}, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;-><init>(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    new-instance p1, Landroid/os/Message;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 30
    .line 31
    .line 32
    const/16 p2, 0x3039

    .line 33
    .line 34
    iput p2, p1, Landroid/os/Message;->what:I

    .line 35
    .line 36
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    .line 54
    .line 55
    return-object p1
.end method

.method public dispose()V
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mHandleThread:Landroid/os/HandlerThread;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getTransformMatrix([F)V
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mDecoderHandler:J

    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/DecoderSurfaceTexture;->onFrameAvailable(J)V

    return-void
.end method

.method public updateTexImage()V
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
