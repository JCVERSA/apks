.class Lcom/transsion/cloud/upload/task/NewUploadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/upload/task/NewUploadTask;-><init>(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/cloud/upload/task/NewUploadTask;

.field final synthetic val$progressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/upload/task/NewUploadTask;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$1;->this$0:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iput-object p2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$1;->val$progressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$1;->this$0:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->i(Lcom/transsion/cloud/upload/task/NewUploadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$1;->val$progressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$1;->this$0:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-wide v4, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    iget-wide v6, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/cloud/upload/task/NewUploadTask;->l(Lcom/transsion/cloud/upload/task/NewUploadTask;JJZ)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$1;->this$0:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->j(Lcom/transsion/cloud/upload/task/NewUploadTask;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
