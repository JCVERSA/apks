.class Lcom/hunantv/media/source/ImgoQueueCache$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/source/ImgoQueueCache$1;->onResult(ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hunantv/media/source/ImgoQueueCache$1;

.field final synthetic val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

.field final synthetic val$result:I


# direct methods
.method public constructor <init>(Lcom/hunantv/media/source/ImgoQueueCache$1;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;I)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->this$1:Lcom/hunantv/media/source/ImgoQueueCache$1;

    iput-object p2, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    iput p3, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->this$1:Lcom/hunantv/media/source/ImgoQueueCache$1;

    iget-object v0, v0, Lcom/hunantv/media/source/ImgoQueueCache$1;->this$0:Lcom/hunantv/media/source/ImgoQueueCache;

    invoke-virtual {v0}, Lcom/hunantv/media/source/ImgoQueueCache;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResult attach to UI thread"

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->this$1:Lcom/hunantv/media/source/ImgoQueueCache$1;

    iget-object v1, v0, Lcom/hunantv/media/source/ImgoQueueCache$1;->this$0:Lcom/hunantv/media/source/ImgoQueueCache;

    invoke-static {v1}, Lcom/hunantv/media/source/ImgoQueueCache;->access$000(Lcom/hunantv/media/source/ImgoQueueCache;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    iget-object v2, v2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->taskid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hunantv/media/source/ImgoQueueCache$1;->access$100(Lcom/hunantv/media/source/ImgoQueueCache$1;Ljava/util/List;Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->this$1:Lcom/hunantv/media/source/ImgoQueueCache$1;

    iget-object v1, v1, Lcom/hunantv/media/source/ImgoQueueCache$1;->this$0:Lcom/hunantv/media/source/ImgoQueueCache;

    iget v2, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->val$result:I

    iget-object v3, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    invoke-virtual {v1, v0, v2, v3}, Lcom/hunantv/media/source/ImgoQueueCache;->onTaskResult(Lcom/hunantv/media/source/CacheTask;ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/source/CacheTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;->this$1:Lcom/hunantv/media/source/ImgoQueueCache$1;

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoQueueCache$1;->this$0:Lcom/hunantv/media/source/ImgoQueueCache;

    invoke-static {p0}, Lcom/hunantv/media/source/ImgoQueueCache;->access$200(Lcom/hunantv/media/source/ImgoQueueCache;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/source/CacheTask;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/source/ImgoQueueCache;->cache(Lcom/hunantv/media/source/CacheTask;Z)V

    :cond_1
    return-void
.end method
