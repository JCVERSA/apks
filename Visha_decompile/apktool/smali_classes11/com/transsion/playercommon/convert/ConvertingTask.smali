.class public Lcom/transsion/playercommon/convert/ConvertingTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lii1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/convert/ConvertingTask$b;
    }
.end annotation


# static fields
.field public static final COMPLETE:I = 0x3

.field public static final CONVERTING:I = 0x2

.field public static final FAILED:I = 0x1

.field public static final HOLDING:I = 0x0

.field public static final NOT_AUDIO_TRACK_FAILED:I = 0xb

.field public static final NOT_SUPPORTED_AC4:I = -0x2

.field public static final STOP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ConvertingTask"


# instance fields
.field protected volatile convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

.field private convertUtils:Llpb;

.field protected final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected mOutPath:Ljava/lang/String;

.field protected mProgressHandler:Landroid/os/Handler;

.field protected volatile mStop:Z

.field public mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public progress:D

.field public taskStatus:I


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isConvertedFailed:I

    iput p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->m()Lji1;

    move-result-object p1

    invoke-virtual {p1}, Lji1;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/convert/ConvertingTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->lambda$deleteOutPathFile$0()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTask;->lambda$onExportCanceled$1()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/convert/ConvertingTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->lambda$onExportFailed$2()V

    return-void
.end method

.method private synthetic lambda$deleteOutPathFile$0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mOutPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mOutPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onExportCanceled$1()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onExportFailed$2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    iget v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/convert/ConvertingTask$b;->a(I)V

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->J(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    return-void
.end method

.method private startConvertVideo()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    const-string v1, "ConvertingTask"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startConvertVideo srcPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-string p0, "startConvertVideo failed index -1"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-static {v3, v4}, Lav3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mOutPath:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mOutPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertToMp3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mOutPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v0, v3}, Lcom/transsion/playercommon/convert/ConvertingTask;->startingConvert(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "startConvertVideo failed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static statusNotFailed(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/4 v1, -0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clearMediaItemCover()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->clearDefaultCover()V

    :cond_0
    return-void
.end method

.method public deleteOutPathFile()V
    .locals 1

    new-instance v0, Lkj1;

    invoke-direct {v0, p0}, Lkj1;-><init>(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onExportCanceled()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Ljj1;

    invoke-direct {v0}, Ljj1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExportCompleted(I)V
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p1, v0}, Ltpb;->o(I)I

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/playercommon/convert/ConvertingTask$4;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/convert/ConvertingTask$4;-><init>(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExportFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1}, Lo5b;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0xb

    iput p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    invoke-virtual {p1, v0, v1}, Ltpb;->J(II)I

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->clearMediaItemCover()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Llj1;

    invoke-direct {v0, p0}, Llj1;-><init>(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExportProgress(D)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/convert/ConvertingTask$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/playercommon/convert/ConvertingTask$3;-><init>(Lcom/transsion/playercommon/convert/ConvertingTask;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public register(Lcom/transsion/playercommon/convert/ConvertingTask$b;)Lcom/transsion/playercommon/convert/ConvertingTask;
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    return-object p0
.end method

.method public remove()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mStop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->reset()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->clearMediaItemCover()V

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConvertingTask"

    const-string v1, "remove success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->deleteOutPathFile()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertUtils:Llpb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Llpb;->k()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mProgressHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mProgressHandler:Landroid/os/Handler;

    :cond_0
    invoke-direct {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->startConvertVideo()V

    return-void
.end method

.method public scanFile()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scanFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mOutPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertingTask"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mOutPath:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp3"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/playercommon/convert/ConvertingTask$a;

    invoke-direct {v3, p0}, Lcom/transsion/playercommon/convert/ConvertingTask$a;-><init>(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startingConvert(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 10

    new-instance v0, Llpb;

    invoke-direct {v0}, Llpb;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertUtils:Llpb;

    invoke-virtual {v0, p0}, Llpb;->j(Lii1;)V

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/convert/ConvertingTask$1;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/convert/ConvertingTask$1;-><init>(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertUtils:Llpb;

    iget-object v5, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mOutPath:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v9}, Llpb;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertVideo "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConvertingTask"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mStop:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTask;->scanFile()V

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_1
    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->convertTaskListener:Lcom/transsion/playercommon/convert/ConvertingTask$b;

    return-void
.end method
