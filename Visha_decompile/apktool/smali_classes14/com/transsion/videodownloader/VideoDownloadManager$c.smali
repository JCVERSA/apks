.class public Lcom/transsion/videodownloader/VideoDownloadManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxu4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodownloader/VideoDownloadManager;->f0(Lerb;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/videodownloader/model/VideoTaskItem;

.field public final synthetic b:Lcom/transsion/videodownloader/VideoDownloadManager;


# direct methods
.method public constructor <init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    iput-object p2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTaskState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setDownloadSize(J)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setIsCompleted(Z)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setPercent(F)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isHlsType()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getSaveDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFileHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "local.m3u8"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFilePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFileHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFileName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getSaveDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFileHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".video"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFilePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFileHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFileName(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p1

    const/4 p2, 0x6

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isSuccessState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lty2;->g(Ljava/lang/Throwable;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setErrorCode(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p1

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p1

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d(FJJF)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isErrorState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isSuccessState()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setPercent(F)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, p6}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setSpeed(F)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setDownloadSize(J)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, p4, p5}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTotalSize(J)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p1

    const/4 p2, 0x4

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isErrorState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isSuccessState()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setPaused(Z)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v0}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object v0

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v0}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v0}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v0}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public f(FJIIF)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isErrorState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isSuccessState()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setPercent(F)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, p6}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setSpeed(F)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setDownloadSize(J)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, p4}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setCurTs(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, p5}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTotalTs(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->b:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p1

    const/4 p2, 0x4

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$c;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method
