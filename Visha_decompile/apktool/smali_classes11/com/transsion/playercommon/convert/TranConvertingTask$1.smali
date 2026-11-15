.class Lcom/transsion/playercommon/convert/TranConvertingTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/convert/TranConvertingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/convert/TranConvertingTask;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/convert/TranConvertingTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/convert/TranConvertingTask$1;->this$0:Lcom/transsion/playercommon/convert/TranConvertingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/convert/TranConvertingTask$1;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/playercommon/convert/TranConvertingTask$1;->lambda$run$0(J)V

    return-void
.end method

.method private synthetic lambda$run$0(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/convert/TranConvertingTask$1;->this$0:Lcom/transsion/playercommon/convert/TranConvertingTask;

    invoke-static {v0}, Lcom/transsion/playercommon/convert/TranConvertingTask;->f(Lcom/transsion/playercommon/convert/TranConvertingTask;)Lcom/transsion/tranplayer/TranPlayerTranscoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->getCurrentTranscodeTimeSecond()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v0, v0

    long-to-double p1, p1

    div-double/2addr v0, p1

    iget-object p1, p0, Lcom/transsion/playercommon/convert/TranConvertingTask$1;->this$0:Lcom/transsion/playercommon/convert/TranConvertingTask;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/playercommon/convert/ConvertingTask;->onExportProgress(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "progress "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranConvertingTask"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/convert/TranConvertingTask$1;->this$0:Lcom/transsion/playercommon/convert/TranConvertingTask;

    iget-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->mProgressHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/transsion/playercommon/convert/TranConvertingTask;->g(Lcom/transsion/playercommon/convert/TranConvertingTask;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/convert/TranConvertingTask$1;->this$0:Lcom/transsion/playercommon/convert/TranConvertingTask;

    iget-boolean v0, v0, Lcom/transsion/playercommon/convert/ConvertingTask;->mStop:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/convert/TranConvertingTask$1;->this$0:Lcom/transsion/playercommon/convert/TranConvertingTask;

    iget v1, v0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lcom/transsion/playercommon/convert/TranConvertingTask;->f(Lcom/transsion/playercommon/convert/TranConvertingTask;)Lcom/transsion/tranplayer/TranPlayerTranscoder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/convert/TranConvertingTask$1;->this$0:Lcom/transsion/playercommon/convert/TranConvertingTask;

    iget-object v0, v0, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/transsion/playercommon/convert/a;

    invoke-direct {v3, p0, v0, v1}, Lcom/transsion/playercommon/convert/a;-><init>(Lcom/transsion/playercommon/convert/TranConvertingTask$1;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
