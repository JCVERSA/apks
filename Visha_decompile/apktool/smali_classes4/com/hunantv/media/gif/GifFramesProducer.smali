.class public Lcom/hunantv/media/gif/GifFramesProducer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/gif/GifFramesProducer$Callback;,
        Lcom/hunantv/media/gif/GifFramesProducer$Config;
    }
.end annotation


# static fields
.field public static final ERROR_GIF_PREVIEW_IMAGE:I = 0x6ad78e


# instance fields
.field private mCallback:Lcom/hunantv/media/gif/GifFramesProducer$Callback;

.field private mConfig:Lcom/hunantv/media/gif/GifFramesProducer$Config;

.field private mContext:Landroid/content/Context;

.field private mCurrentUri:Landroid/net/Uri;

.field private mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

.field private mReporter:Lcom/hunantv/media/report/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/gif/GifFramesProducer$Config;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mConfig:Lcom/hunantv/media/gif/GifFramesProducer$Config;

    new-instance v0, Lcom/hunantv/media/report/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/hunantv/media/report/a;-><init>(Landroid/content/Context;Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mReporter:Lcom/hunantv/media/report/a;

    new-instance p1, Lcom/hunantv/media/report/ReportParams;

    invoke-direct {p1}, Lcom/hunantv/media/report/ReportParams;-><init>()V

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->GIF_PREVIEW_IMAGE:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {p1, v1}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/ReportParams;)V

    invoke-virtual {p0}, Lcom/hunantv/media/gif/GifFramesProducer;->getLogTagKey()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoFrameCapture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mCallback:Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/player/MgtvMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/report/a;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mReporter:Lcom/hunantv/media/report/a;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/gif/GifFramesProducer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/gif/GifFramesProducer;->preOnError(II)V

    return-void
.end method

.method private initListener()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_AUTOPLAY:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Lcom/hunantv/media/gif/GifFramesProducer$1;

    invoke-direct {v1, p0}, Lcom/hunantv/media/gif/GifFramesProducer$1;-><init>(Lcom/hunantv/media/gif/GifFramesProducer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnPreparedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;)V

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Lcom/hunantv/media/gif/GifFramesProducer$2;

    invoke-direct {v1, p0}, Lcom/hunantv/media/gif/GifFramesProducer$2;-><init>(Lcom/hunantv/media/gif/GifFramesProducer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnGetFrameImageListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;)V

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Lcom/hunantv/media/gif/GifFramesProducer$3;

    invoke-direct {v1, p0}, Lcom/hunantv/media/gif/GifFramesProducer$3;-><init>(Lcom/hunantv/media/gif/GifFramesProducer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnErrorListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;)V

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Lcom/hunantv/media/gif/GifFramesProducer$4;

    invoke-direct {v1, p0}, Lcom/hunantv/media/gif/GifFramesProducer$4;-><init>(Lcom/hunantv/media/gif/GifFramesProducer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setOnCompletionListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;)V

    return-void
.end method

.method private preOnError(II)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/hunantv/media/report/a;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->c()V

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hunantv/media/gif/GifFramesProducer;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getConfig()Lcom/hunantv/media/gif/GifFramesProducer$Config;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mConfig:Lcom/hunantv/media/gif/GifFramesProducer$Config;

    return-object p0
.end method

.method public getLogTagKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyLong(IJ)J
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyLong(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public process()V
    .locals 11

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mConfig:Lcom/hunantv/media/gif/GifFramesProducer$Config;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->reset()Z

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BUNDLE_KEY_LOG_TAG_KEY"

    invoke-virtual {p0}, Lcom/hunantv/media/gif/GifFramesProducer;->getLogTagKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_KEY_BOOLEAN_ENABLE_REPORT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v2, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;-><init>(ILandroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const v0, 0x78671309

    invoke-virtual {v1, v0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setConfig(II)V

    invoke-direct {p0}, Lcom/hunantv/media/gif/GifFramesProducer;->initListener()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mConfig:Lcom/hunantv/media/gif/GifFramesProducer$Config;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->fileStartTimeFloatS:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerFileStartTimeFloatS(F)V

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Lcom/hunantv/media/report/ReportParams;

    invoke-direct {v1}, Lcom/hunantv/media/report/ReportParams;-><init>()V

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->GIF_PREVIEW_IMAGE:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v1, v2}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mConfig:Lcom/hunantv/media/gif/GifFramesProducer$Config;

    iget v1, v1, Lcom/hunantv/media/gif/GifFramesProducer$Config;->startMs:I

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerSeekAtStartPosMs(I)V

    iget-object v2, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mConfig:Lcom/hunantv/media/gif/GifFramesProducer$Config;

    iget-object v3, v0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imageDir:Ljava/lang/String;

    iget v1, v0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->startMs:I

    int-to-long v4, v1

    iget v1, v0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->endMs:I

    int-to-long v6, v1

    iget v8, v0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->num:I

    iget v9, v0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imgW:I

    iget v10, v0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->imgH:I

    invoke-virtual/range {v2 .. v10}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setFrameImageAtTime(Ljava/lang/String;JJIII)V

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mConfig:Lcom/hunantv/media/gif/GifFramesProducer$Config;

    iget-object v0, v0, Lcom/hunantv/media/gif/GifFramesProducer$Config;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mCurrentUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->prepareAsync()V

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/hunantv/media/report/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    :cond_1
    return-void
.end method

.method public setCallback(Lcom/hunantv/media/gif/GifFramesProducer$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer;->mCallback:Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    return-void
.end method
