.class public Lcom/transsion/playercommon/convert/TranConvertingTask;
.super Lcom/transsion/playercommon/convert/ConvertingTask;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;
.implements Lcom/transsion/tranplayer/TranPlayerTranscoder$onCompletionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranConvertingTask"


# instance fields
.field private mTranPlayerTranscoder:Lcom/transsion/tranplayer/TranPlayerTranscoder;

.field private final progressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/convert/ConvertingTask;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    new-instance p1, Lcom/transsion/playercommon/convert/TranConvertingTask$1;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/convert/TranConvertingTask$1;-><init>(Lcom/transsion/playercommon/convert/TranConvertingTask;)V

    iput-object p1, p0, Lcom/transsion/playercommon/convert/TranConvertingTask;->progressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic d(Lcom/transsion/playercommon/convert/TranConvertingTask;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/convert/TranConvertingTask;->lambda$onNotSupportFailed$1(I)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/playercommon/convert/TranConvertingTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/convert/TranConvertingTask;->lambda$startingConvert$0()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/playercommon/convert/TranConvertingTask;)Lcom/transsion/tranplayer/TranPlayerTranscoder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/TranConvertingTask;->mTranPlayerTranscoder:Lcom/transsion/tranplayer/TranPlayerTranscoder;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/convert/TranConvertingTask;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/TranConvertingTask;->progressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic lambda$onNotSupportFailed$1(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/convert/ConvertingTask$b;->a(I)V

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->J(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    return-void
.end method

.method private synthetic lambda$startingConvert$0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/convert/ConvertingTask$b;->a(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/convert/TranConvertingTask;->progressRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private onNotSupportFailed(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1, p1}, Ltpb;->J(II)I

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->clearMediaItemCover()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lywa;

    invoke-direct {v1, p0, p1}, Lywa;-><init>(Lcom/transsion/playercommon/convert/TranConvertingTask;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion taskStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranConvertingTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->scanFile()V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "onError"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/convert/ConvertingTask;->onExportFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mStop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/TranConvertingTask;->reset()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mStop:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->clearMediaItemCover()V

    const-string v0, "remove "

    const-string v1, "TranConvertingTask"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "remove success"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->deleteOutPathFile()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->reset()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranConvertingTask"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/convert/TranConvertingTask;->mTranPlayerTranscoder:Lcom/transsion/tranplayer/TranPlayerTranscoder;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->transcodeStop()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->deleteOutPathFile()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mProgressHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mProgressHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public startingConvert(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    new-instance p1, Lcom/transsion/tranplayer/TranPlayerTranscoder;

    sget-object p3, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_TO_MP3:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    invoke-direct {p1, p3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;-><init>(Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;)V

    iput-object p1, p0, Lcom/transsion/playercommon/convert/TranConvertingTask;->mTranPlayerTranscoder:Lcom/transsion/tranplayer/TranPlayerTranscoder;

    iget-object p3, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mOutPath:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setInputOutput(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/convert/TranConvertingTask;->mTranPlayerTranscoder:Lcom/transsion/tranplayer/TranPlayerTranscoder;

    new-instance p3, Lvwa;

    invoke-direct {p3, p0}, Lvwa;-><init>(Lcom/transsion/playercommon/convert/TranConvertingTask;)V

    invoke-virtual {p1, p3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setOnCompletionListener(Lcom/transsion/tranplayer/TranPlayerTranscoder$onCompletionListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/convert/TranConvertingTask;->mTranPlayerTranscoder:Lcom/transsion/tranplayer/TranPlayerTranscoder;

    new-instance p3, Lwwa;

    invoke-direct {p3, p0}, Lwwa;-><init>(Lcom/transsion/playercommon/convert/TranConvertingTask;)V

    invoke-virtual {p1, p3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setOnErrorListener(Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "convertToMp3 "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mOutPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranConvertingTask"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    :try_start_0
    iput p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lxwa;

    invoke-direct {p3, p0}, Lxwa;-><init>(Lcom/transsion/playercommon/convert/TranConvertingTask;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Ljava/io/File;

    sget-object p3, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/convert/TranConvertingTask;->mTranPlayerTranscoder:Lcom/transsion/tranplayer/TranPlayerTranscoder;

    invoke-virtual {p1}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->transcoderVideo()I

    move-result p1

    const/4 p3, -0x2

    if-ne p1, p3, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/convert/TranConvertingTask;->onNotSupportFailed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "convertVideo "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method
