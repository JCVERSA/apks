.class public Lcom/transsion/videodownloader/VideoDownloadManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lex4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodownloader/VideoDownloadManager;->Y(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/transsion/videodownloader/model/VideoTaskItem;

.field public final synthetic c:Lcom/transsion/videodownloader/VideoDownloadManager;


# direct methods
.method public constructor <init>(Lcom/transsion/videodownloader/VideoDownloadManager;Ljava/util/Map;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->c:Lcom/transsion/videodownloader/VideoDownloadManager;

    iput-object p2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfoFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Leq5;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lty2;->g(Ljava/lang/Throwable;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setErrorCode(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->c:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p1

    const/4 v0, 0x7

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    const-string p1, "VideoDownloadManager"

    const-string v0, "onLiveM3U8Callback cannot be cached."

    invoke-static {p1, v0}, Leq5;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/16 v0, 0x13f0

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setErrorCode(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->c:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p1

    const/4 v0, 0x7

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setMimeType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->c:Lcom/transsion/videodownloader/VideoDownloadManager;

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->a:Ljava/util/Map;

    invoke-static {p1, v0, p2, p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->x(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;Ljava/util/Map;)V

    return-void
.end method

.method public d(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->c:Lcom/transsion/videodownloader/VideoDownloadManager;

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->a:Ljava/util/Map;

    invoke-static {v0, p1, p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->w(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onM3U8InfoFailed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Leq5;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lty2;->g(Ljava/lang/Throwable;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setErrorCode(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->c:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;

    move-result-object p1

    const/4 v0, 0x7

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$b;->b:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
