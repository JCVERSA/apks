.class Lcom/transsion/cloud/upload/task/NewUploadTask$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/upload/task/NewUploadTask;->postOnRemove(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/cloud/upload/task/NewUploadTask;

.field final synthetic val$needStartNext:Z


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$6;->this$0:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iput-boolean p2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$6;->val$needStartNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$6;->this$0:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object v0, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnhb;

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$6;->this$0:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object v2, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-boolean v3, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$6;->val$needStartNext:Z

    invoke-virtual {v1, v2, v3}, Lnhb;->e(Lcom/transsion/cloud/upload/model/UploadProgressInfo;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$6;->this$0:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->stopNotification()V

    return-void
.end method
