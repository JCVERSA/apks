.class Lcom/transsion/videodownloader/VideoDownloadManager$4;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodownloader/VideoDownloadManager;->B(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/videodownloader/VideoDownloadManager;

.field final synthetic val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;


# direct methods
.method public constructor <init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->this$0:Lcom/transsion/videodownloader/VideoDownloadManager;

    iput-object p2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTsSavePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTsSavePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTsSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lqy2;->c:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTsDownloadSuccess: src ts path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v3}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTsSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "VideoDownloadManager"

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lzu3;->E(Ljava/io/File;Ljava/io/File;Lzu3$a;)Z

    move-result v1

    const/4 v4, 0x6

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "move ts files successfully: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, ".m3u8"

    const-string v6, "_"

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalFileName()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2e

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v8}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalFileName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v7}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v7}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFileHash()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v5, Ljava/io/File;

    sget-object v6, Lqy2;->c:Ljava/io/File;

    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v7}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const/16 v8, 0x13f1

    if-nez v7, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local temporary m3u8 file not found in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1, v8}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setErrorCode(I)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1, v4}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->this$0:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v1}, Lcom/transsion/videodownloader/VideoDownloadManager;->h(Lcom/transsion/videodownloader/VideoDownloadManager;)Ltz2;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1, p0}, Ltz2;->b(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    goto/16 :goto_1

    :cond_3
    :try_start_0
    invoke-static {v6}, Law5;->j(Ljava/io/File;)Lpv5;

    move-result-object v7

    sget-object v9, Lqy2;->c:Ljava/io/File;

    invoke-static {v9, v2, v7, v1}, Law5;->a(Ljava/io/File;Ljava/io/File;Lpv5;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete Folder:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Leq5;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lzu3;->g(Ljava/io/File;)Z

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const-string v2, "m3u8.mp4"

    invoke-virtual {v1, v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFileName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFilePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    sget-object v2, Lcom/transsion/videodownloader/model/Video$Mime;->MIME_TYPE_MP4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setMimeType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setVideoType(I)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->this$0:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v1}, Lcom/transsion/videodownloader/VideoDownloadManager;->h(Lcom/transsion/videodownloader/VideoDownloadManager;)Ltz2;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1, v2}, Ltz2;->h(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->this$0:Lcom/transsion/videodownloader/VideoDownloadManager;

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-static {v1, v2}, Lcom/transsion/videodownloader/VideoDownloadManager;->u(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create local m3u8 failed exception:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v2, v8}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setErrorCode(I)V

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v2, v4}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->this$0:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v2}, Lcom/transsion/videodownloader/VideoDownloadManager;->h(Lcom/transsion/videodownloader/VideoDownloadManager;)Ltz2;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v2, p0}, Ltz2;->b(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move ts files failed,task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/16 v2, 0x13f2

    invoke-virtual {v1, v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setErrorCode(I)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1, v4}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->this$0:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v1}, Lcom/transsion/videodownloader/VideoDownloadManager;->h(Lcom/transsion/videodownloader/VideoDownloadManager;)Ltz2;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$4;->val$taskItem:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1, p0}, Ltz2;->b(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    :goto_1
    return-object v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
