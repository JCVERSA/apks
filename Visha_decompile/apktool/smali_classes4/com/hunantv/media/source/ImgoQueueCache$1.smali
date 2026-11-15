.class Lcom/hunantv/media/source/ImgoQueueCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/source/ImgoQueueCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/source/ImgoQueueCache;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/source/ImgoQueueCache;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoQueueCache$1;->this$0:Lcom/hunantv/media/source/ImgoQueueCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/hunantv/media/source/ImgoQueueCache$1;Ljava/util/List;Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/source/ImgoQueueCache$1;->findTask(Ljava/util/List;Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;

    move-result-object p0

    return-object p0
.end method

.method private findTask(Ljava/util/List;Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hunantv/media/source/CacheTask;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hunantv/media/source/CacheTask;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/source/CacheTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/source/CacheTask;->getTaskID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public onError(Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V
    .locals 0

    return-void
.end method

.method public onResult(ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
    .locals 7

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoQueueCache$1;->this$0:Lcom/hunantv/media/source/ImgoQueueCache;

    invoke-virtual {v0}, Lcom/hunantv/media/source/ImgoQueueCache;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResult IN"

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoQueueCache$1;->this$0:Lcom/hunantv/media/source/ImgoQueueCache;

    invoke-virtual {v0}, Lcom/hunantv/media/source/ImgoQueueCache;->TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native_resultcallback result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",taskid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->taskid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fullpath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->fullpath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->ts_names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/hunantv/media/source/ImgoQueueCache$1;->this$0:Lcom/hunantv/media/source/ImgoQueueCache;

    invoke-virtual {v4}, Lcom/hunantv/media/source/ImgoQueueCache;->TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "native_callback ts_name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hunantv/media/source/ImgoQueueCache$1$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/hunantv/media/source/ImgoQueueCache$1$1;-><init>(Lcom/hunantv/media/source/ImgoQueueCache$1;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;I)V

    invoke-static {v0}, Lcom/hunantv/media/player/utils/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoQueueCache$1;->this$0:Lcom/hunantv/media/source/ImgoQueueCache;

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoQueueCache;->TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onResult OUT"

    invoke-static {p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
