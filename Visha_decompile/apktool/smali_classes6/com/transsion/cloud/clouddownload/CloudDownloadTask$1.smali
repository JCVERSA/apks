.class Lcom/transsion/cloud/clouddownload/CloudDownloadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/clouddownload/CloudDownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

.field final synthetic val$progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$1;->this$0:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iput-object p2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$1;->val$progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$1;->this$0:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    invoke-static {v0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->k(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$1;->val$progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v2, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$1;->this$0:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iget-wide v3, v2, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iget-wide v5, v2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->n(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;JJZ)V

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$1;->this$0:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    invoke-static {v0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->l(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
