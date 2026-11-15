.class public Lcom/hunantv/media/recoder/GifRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/recoder/GifRecorder$Callback;,
        Lcom/hunantv/media/recoder/GifRecorder$WeakHandler;,
        Lcom/hunantv/media/recoder/GifRecorder$Configuration;,
        Lcom/hunantv/media/recoder/GifRecorder$Status;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT:I = -0x1

.field private static final DEFAULT_WIDTH:I = -0x1

.field public static final ERR_REASON_ILLEGAL_ARGUMENT:I = 0x69

.field public static final ERR_REASON_ILLEGAL_FRAMES_DIR:I = 0x6d

.field public static final ERR_REASON_ILLEGAL_STATUS:I = 0x67

.field public static final ERR_REASON_NOT_SUPPORTED:I = 0x65

.field public static final ERR_REASON_RECORD_FRAMES_ERROR:I = 0xc9

.field public static final ERR_RESON_BASE:I = 0x64

.field public static final ERR_RESON_MAKE_GIF_BASE:I = 0x12c

.field public static final ERR_RESON_MAKE_GIF_ERROR:I = 0x12e

.field public static final ERR_RESON_NO_FRAMES_MAKE_GIF:I = 0x12d

.field public static final ERR_RESON_RECORD_BASE:I = 0xc8

.field private static final FRAMES_SUFFIX:Ljava/lang/String; = ".jpeg"

.field private static final INTERRUPT_INNER_REASON:I = 0x64

.field public static final INTERRUPT_REASON_COMPLETE:I = 0x66

.field public static final INTERRUPT_REASON_ERROR:I = 0x65

.field public static final INTERRUPT_REASON_RECORD_FRAMES_TOO_MUCH:I = 0x69

.field public static final INTERRUPT_REASON_RESET:I = 0x67

.field public static final MAX_FRAME_WIDTH:I = 0x350

.field private static final MAX_SNAPSHOT_ERROR:I = 0xa

.field private static final TAG:Ljava/lang/String; = "[GifRecorder]"


# instance fields
.field private mAsyncHandler:Lcom/hunantv/media/recoder/GifRecorder$WeakHandler;

.field private mCallback:Lcom/hunantv/media/recoder/GifRecorder$Callback;

.field private mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

.field private mFramesErrorCounter:I

.field private mIndex:I

.field private mIsMakingGif:Z

.field private mMaxFramesError:I

.field private mOnTickListener:Lcom/hunantv/media/player/utils/ExTicker$onTickListener;

.field private mPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

.field private mProcessThread:Landroid/os/HandlerThread;

.field private volatile mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

.field private mTempFrameDir:Ljava/lang/String;

.field private mTicker:Lcom/hunantv/media/player/utils/ExTicker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIndex:I

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mFramesErrorCounter:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mMaxFramesError:I

    sget-object v0, Lcom/hunantv/media/recoder/GifRecorder$Status;->IDLE:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iput-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTempFrameDir:Ljava/lang/String;

    new-instance v0, Lcom/hunantv/media/recoder/GifRecorder$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/recoder/GifRecorder$1;-><init>(Lcom/hunantv/media/recoder/GifRecorder;)V

    iput-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mOnTickListener:Lcom/hunantv/media/player/utils/ExTicker$onTickListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/recoder/GifRecorder$Status;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/recoder/GifRecorder$Configuration;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/hunantv/media/recoder/GifRecorder;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIndex:I

    return p0
.end method

.method public static synthetic access$208(Lcom/hunantv/media/recoder/GifRecorder;)I
    .locals 2

    iget v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIndex:I

    return v0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/recoder/GifRecorder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTempFrameDir:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/player/MgtvMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/hunantv/media/recoder/GifRecorder;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mFramesErrorCounter:I

    return p0
.end method

.method public static synthetic access$502(Lcom/hunantv/media/recoder/GifRecorder;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mFramesErrorCounter:I

    return p1
.end method

.method public static synthetic access$508(Lcom/hunantv/media/recoder/GifRecorder;)I
    .locals 2

    iget v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mFramesErrorCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mFramesErrorCounter:I

    return v0
.end method

.method public static synthetic access$600(Lcom/hunantv/media/recoder/GifRecorder;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mMaxFramesError:I

    return p0
.end method

.method public static synthetic access$700(Lcom/hunantv/media/recoder/GifRecorder;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(IILjava/lang/String;)V

    return-void
.end method

.method private callbackError(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(IILjava/lang/String;)V

    return-void
.end method

.method private callbackError(IILjava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",status:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/recoder/GifRecorder;->getStatus()Lcom/hunantv/media/recoder/GifRecorder$Status;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackError reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GifRecorder]"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/recoder/GifRecorder;->stopRecorder()V

    sget-object v0, Lcom/hunantv/media/recoder/GifRecorder$Status;->ERROR:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iput-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    invoke-virtual {p0}, Lcom/hunantv/media/recoder/GifRecorder;->reset()V

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mCallback:Lcom/hunantv/media/recoder/GifRecorder$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/recoder/GifRecorder$Callback;->onError(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private stopRecorder()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTicker:Lcom/hunantv/media/player/utils/ExTicker;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop record.frame_num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GifRecorder]"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTicker:Lcom/hunantv/media/player/utils/ExTicker;

    :cond_0
    return-void
.end method


# virtual methods
.method public bindMediaPlayer(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    return-void
.end method

.method public end()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->IDLE:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/recoder/GifRecorder;->stopRecorder()V

    sget-object v0, Lcom/hunantv/media/recoder/GifRecorder$Status;->STOP:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iput-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mCallback:Lcom/hunantv/media/recoder/GifRecorder$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hunantv/media/recoder/GifRecorder$Callback;->onEndRecord()V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->autoResult:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/recoder/GifRecorder;->makeGifAsync()V

    :cond_2
    return-void
.end method

.method public getConfiguration()Lcom/hunantv/media/recoder/GifRecorder$Configuration;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    return-object p0
.end method

.method public getStatus()Lcom/hunantv/media/recoder/GifRecorder$Status;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    return-object p0
.end method

.method public interrupt(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/hunantv/media/recoder/GifRecorder;->interrupt(IILjava/lang/String;)V

    return-void
.end method

.method public interrupt(IILjava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->IDLE:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->STOP:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->ERROR:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->INTERRUPT:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interrupt by reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[GifRecorder]"

    invoke-static {v2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/recoder/GifRecorder;->stopRecorder()V

    iput-object v1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mCallback:Lcom/hunantv/media/recoder/GifRecorder$Callback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/recoder/GifRecorder$Callback;->onInterrupted(IILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isPaused()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v0, Lcom/hunantv/media/recoder/GifRecorder$Status;->PAUSE:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecording()Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->START:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v0, Lcom/hunantv/media/recoder/GifRecorder$Status;->PAUSE:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHardware()Z

    move-result v0

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSupportedSnapshot()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public makeGif()Ljava/lang/String;
    .locals 8

    const-string v0, ".jpeg"

    const-string v1, "[GifRecorder]"

    iget-object v2, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v3, Lcom/hunantv/media/recoder/GifRecorder$Status;->STOP:Lcom/hunantv/media/recoder/GifRecorder$Status;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v3, Lcom/hunantv/media/recoder/GifRecorder$Status;->INTERRUPT:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-ne v2, v3, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIsMakingGif:Z

    if-eqz v2, :cond_2

    :cond_1
    return-object v4

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "start makeGif"

    invoke-static {v1, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIsMakingGif:Z

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTempFrameDir:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/hunantv/media/utils/FileUtil;->listCount(Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_3

    const-string v0, "no frames to make gif"

    const/16 v1, 0x12d

    invoke-direct {p0, v1, v2, v0}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(IILjava/lang/String;)V

    return-object v4

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTempFrameDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#d"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget-object v5, v5, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->saveDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/test.gif"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/hunantv/media/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    iget-object v5, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v5, v5, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->fps:I

    iget-object v6, p0, Lcom/hunantv/media/recoder/GifRecorder;->mCallback:Lcom/hunantv/media/recoder/GifRecorder$Callback;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/hunantv/media/recoder/GifRecorder$Callback;->onMakingGif()V

    :cond_4
    iget-object v6, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v7, v6, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->width:I

    if-lez v7, :cond_6

    iget v6, v6, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->height:I

    if-gtz v6, :cond_5

    goto :goto_0

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v7, v7, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v7, v7, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6, v5}, Lcom/hunantv/media/player/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_6
    :goto_0
    invoke-static {v0, v3, v5}, Lcom/hunantv/media/player/e/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :goto_1
    iput-boolean v2, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIsMakingGif:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeGif result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",gifPath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mCallback:Lcom/hunantv/media/recoder/GifRecorder$Callback;

    if-eqz v0, :cond_7

    invoke-interface {v0, v3}, Lcom/hunantv/media/recoder/GifRecorder$Callback;->onResultGif(Ljava/lang/String;)V

    :cond_7
    return-object v3

    :cond_8
    const-string v1, "make gif failed"

    const/16 v3, 0x12e

    invoke-direct {p0, v3, v0, v1}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-direct {p0, v1, v2, v0}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(IILjava/lang/String;)V

    return-object v4
.end method

.method public makeGifAsync()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->STOP:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->INTERRUPT:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIsMakingGif:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mAsyncHandler:Lcom/hunantv/media/recoder/GifRecorder$WeakHandler;

    if-eqz p0, :cond_3

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->START:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "[GifRecorder]"

    const-string v1, "pause record"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTicker:Lcom/hunantv/media/player/utils/ExTicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->pause()V

    :cond_1
    sget-object v0, Lcom/hunantv/media/recoder/GifRecorder$Status;->PAUSE:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iput-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mCallback:Lcom/hunantv/media/recoder/GifRecorder$Callback;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/hunantv/media/recoder/GifRecorder$Callback;->onPause()V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->IDLE:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/hunantv/media/recoder/GifRecorder;->interrupt(I)V

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTempFrameDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/utils/FileUtil;->deleteDir(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mAsyncHandler:Lcom/hunantv/media/recoder/GifRecorder$WeakHandler;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v3, 0x100

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v2, p0, Lcom/hunantv/media/recoder/GifRecorder;->mAsyncHandler:Lcom/hunantv/media/recoder/GifRecorder$WeakHandler;

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mProcessThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/hunantv/media/recoder/GifRecorder;->mProcessThread:Landroid/os/HandlerThread;

    :cond_2
    iput-object v2, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTempFrameDir:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIndex:I

    iput v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mFramesErrorCounter:I

    iput-object v1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v1, Lcom/hunantv/media/recoder/GifRecorder$Status;->PAUSE:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "[GifRecorder]"

    const-string v1, "resume record"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTicker:Lcom/hunantv/media/player/utils/ExTicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->resume()V

    :cond_1
    sget-object v0, Lcom/hunantv/media/recoder/GifRecorder$Status;->START:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iput-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mCallback:Lcom/hunantv/media/recoder/GifRecorder$Callback;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/hunantv/media/recoder/GifRecorder$Callback;->onResume()V

    :cond_2
    return-void
.end method

.method public setCallback(Lcom/hunantv/media/recoder/GifRecorder$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mCallback:Lcom/hunantv/media/recoder/GifRecorder$Callback;

    return-void
.end method

.method public start(Lcom/hunantv/media/recoder/GifRecorder$Configuration;)Z
    .locals 7

    const-string v0, "try start snapshot"

    const-string v1, "[GifRecorder]"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/recoder/GifRecorder;->isSupported()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 p1, 0x65

    invoke-direct {p0, p1}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(I)V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/recoder/GifRecorder;->reset()V

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    sget-object v3, Lcom/hunantv/media/recoder/GifRecorder$Status;->IDLE:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-eq v0, v3, :cond_1

    const/16 p1, 0x67

    invoke-direct {p0, p1}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(I)V

    return v2

    :cond_1
    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->saveDir:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v0, 0x64

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/recoder/GifRecorder;->stopRecorder()V

    iget-object v4, p0, Lcom/hunantv/media/recoder/GifRecorder;->mPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_c

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v3, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result v3

    iput v3, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesWidth:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v3, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesHeight:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result v3

    iput v3, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesHeight:I

    :cond_4
    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v3, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesWidth:I

    const/16 v4, 0x350

    if-le v3, v4, :cond_5

    iget v6, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesHeight:I

    mul-int/2addr v6, v4

    div-int/2addr v6, v3

    iput v6, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesHeight:I

    iput v4, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesWidth:I

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start record. framesWidth:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v3, v3, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesWidth:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", framesHeight:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v3, v3, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesHeight:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v3, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->maxFramesError:I

    if-lez v3, :cond_6

    iput v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mMaxFramesError:I

    :cond_6
    iget-object p1, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->saveFramsDir:Ljava/lang/String;

    if-eqz p1, :cond_7

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTempFrameDir:Ljava/lang/String;

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget-object v3, v3, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->saveDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/temp_frame/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTempFrameDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iput-object p1, v3, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->saveFramsDir:Ljava/lang/String;

    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTempFrameDir:Ljava/lang/String;

    invoke-static {p1}, Lcom/hunantv/media/utils/FileUtil;->remkdirs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTempFrameDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can\'t remkdirs"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x6d

    invoke-direct {p0, v1, v2, p1}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(IILjava/lang/String;)V

    return v2

    :cond_8
    iput v2, p0, Lcom/hunantv/media/recoder/GifRecorder;->mIndex:I

    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mProcessThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_9

    new-instance p1, Landroid/os/HandlerThread;

    const-string v3, "mgtvmp_jGif1Pro"

    invoke-direct {p1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_9
    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mAsyncHandler:Lcom/hunantv/media/recoder/GifRecorder$WeakHandler;

    if-nez p1, :cond_a

    new-instance p1, Lcom/hunantv/media/recoder/GifRecorder$WeakHandler;

    iget-object v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v3, p0}, Lcom/hunantv/media/recoder/GifRecorder$WeakHandler;-><init>(Landroid/os/Looper;Lcom/hunantv/media/recoder/GifRecorder;)V

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mAsyncHandler:Lcom/hunantv/media/recoder/GifRecorder$WeakHandler;

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start record. Configuration:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/hunantv/media/player/utils/ExTicker;

    iget-object v1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/hunantv/media/recoder/GifRecorder;->mConfiguration:Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    iget v3, v3, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->fps:I

    const/16 v4, 0x3e8

    div-int/2addr v4, v3

    invoke-direct {p1, v1, v4}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(Landroid/os/Looper;I)V

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTicker:Lcom/hunantv/media/player/utils/ExTicker;

    iget-object v1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mOnTickListener:Lcom/hunantv/media/player/utils/ExTicker$onTickListener;

    invoke-virtual {p1, v1}, Lcom/hunantv/media/player/utils/ExTicker;->setCallback(Lcom/hunantv/media/player/utils/ExTicker$onTickListener;)V

    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {p1}, Lcom/hunantv/media/player/utils/ExTicker;->start()V

    sget-object p1, Lcom/hunantv/media/recoder/GifRecorder$Status;->START:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mStatus:Lcom/hunantv/media/recoder/GifRecorder$Status;

    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder;->mCallback:Lcom/hunantv/media/recoder/GifRecorder$Callback;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/hunantv/media/recoder/GifRecorder$Callback;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    return v5

    :cond_c
    invoke-direct {p0, v0, v5, v3}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(IILjava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/recoder/GifRecorder;->stopRecorder()V

    return v2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v2, p1}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(IILjava/lang/String;)V

    return v2

    :cond_d
    :goto_3
    if-nez p1, :cond_e

    const-string p1, "config == null"

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config.saveDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->saveDir:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    const/16 v0, 0x69

    invoke-direct {p0, v0, v2, p1}, Lcom/hunantv/media/recoder/GifRecorder;->callbackError(IILjava/lang/String;)V

    return v2
.end method
