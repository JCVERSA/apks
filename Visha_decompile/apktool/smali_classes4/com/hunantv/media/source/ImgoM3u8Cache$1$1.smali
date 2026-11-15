.class Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/source/ImgoM3u8Cache$1;->onResult(ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hunantv/media/source/ImgoM3u8Cache$1;

.field final synthetic val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

.field final synthetic val$result:I


# direct methods
.method public constructor <init>(Lcom/hunantv/media/source/ImgoM3u8Cache$1;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;I)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->this$1:Lcom/hunantv/media/source/ImgoM3u8Cache$1;

    iput-object p2, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    iput p3, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->this$1:Lcom/hunantv/media/source/ImgoM3u8Cache$1;

    iget-object v1, v0, Lcom/hunantv/media/source/ImgoM3u8Cache$1;->this$0:Lcom/hunantv/media/source/ImgoM3u8Cache;

    invoke-static {v1}, Lcom/hunantv/media/source/ImgoM3u8Cache;->access$000(Lcom/hunantv/media/source/ImgoM3u8Cache;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    iget-object v2, v2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->taskid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hunantv/media/source/ImgoM3u8Cache$1;->access$100(Lcom/hunantv/media/source/ImgoM3u8Cache$1;Ljava/util/List;Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult findTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImgoM3u8Cache"

    invoke-static {v2, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->this$1:Lcom/hunantv/media/source/ImgoM3u8Cache$1;

    iget-object v1, v1, Lcom/hunantv/media/source/ImgoM3u8Cache$1;->this$0:Lcom/hunantv/media/source/ImgoM3u8Cache;

    invoke-static {v1}, Lcom/hunantv/media/source/ImgoM3u8Cache;->access$000(Lcom/hunantv/media/source/ImgoM3u8Cache;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    iget-object v1, v1, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->fullpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/source/M3u8CacheTask;->setFullPath(Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->val$params:Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;

    iget-object v1, v1, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->ts_names:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/source/M3u8CacheTask;->setTsNames([Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;

    iget v1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->val$result:I

    if-nez v1, :cond_0

    const-string v1, "onResult OK"

    invoke-static {v2, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/hunantv/media/source/M3u8CacheTask$Status;->SUCCESS:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/source/M3u8CacheTask;->setCurrentStatus(Lcom/hunantv/media/source/M3u8CacheTask$Status;)Lcom/hunantv/media/source/M3u8CacheTask;

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->this$1:Lcom/hunantv/media/source/ImgoM3u8Cache$1;

    iget-object v1, v1, Lcom/hunantv/media/source/ImgoM3u8Cache$1;->this$0:Lcom/hunantv/media/source/ImgoM3u8Cache;

    invoke-static {v1}, Lcom/hunantv/media/source/ImgoM3u8Cache;->access$200(Lcom/hunantv/media/source/ImgoM3u8Cache;)Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->this$1:Lcom/hunantv/media/source/ImgoM3u8Cache$1;

    iget-object v1, v1, Lcom/hunantv/media/source/ImgoM3u8Cache$1;->this$0:Lcom/hunantv/media/source/ImgoM3u8Cache;

    invoke-static {v1}, Lcom/hunantv/media/source/ImgoM3u8Cache;->access$200(Lcom/hunantv/media/source/ImgoM3u8Cache;)Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;->onSuccess(Lcom/hunantv/media/source/M3u8CacheTask;)V

    goto :goto_0

    :cond_0
    const-string v1, "onResult FAILED"

    invoke-static {v2, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/hunantv/media/source/M3u8CacheTask$Status;->FAILED:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/source/M3u8CacheTask;->setCurrentStatus(Lcom/hunantv/media/source/M3u8CacheTask$Status;)Lcom/hunantv/media/source/M3u8CacheTask;

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->this$1:Lcom/hunantv/media/source/ImgoM3u8Cache$1;

    iget-object v1, v1, Lcom/hunantv/media/source/ImgoM3u8Cache$1;->this$0:Lcom/hunantv/media/source/ImgoM3u8Cache;

    invoke-static {v1}, Lcom/hunantv/media/source/ImgoM3u8Cache;->access$200(Lcom/hunantv/media/source/ImgoM3u8Cache;)Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->this$1:Lcom/hunantv/media/source/ImgoM3u8Cache$1;

    iget-object v1, v1, Lcom/hunantv/media/source/ImgoM3u8Cache$1;->this$0:Lcom/hunantv/media/source/ImgoM3u8Cache;

    invoke-static {v1}, Lcom/hunantv/media/source/ImgoM3u8Cache;->access$200(Lcom/hunantv/media/source/ImgoM3u8Cache;)Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hunantv/media/source/ImgoM3u8Cache$TaskCallback;->onFailed(Lcom/hunantv/media/source/M3u8CacheTask;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;->this$1:Lcom/hunantv/media/source/ImgoM3u8Cache$1;

    iget-object p0, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1;->this$0:Lcom/hunantv/media/source/ImgoM3u8Cache;

    invoke-static {p0}, Lcom/hunantv/media/source/ImgoM3u8Cache;->access$300(Lcom/hunantv/media/source/ImgoM3u8Cache;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/source/M3u8CacheTask;

    invoke-static {p0, v0}, Lcom/hunantv/media/source/ImgoM3u8Cache;->access$400(Lcom/hunantv/media/source/ImgoM3u8Cache;Lcom/hunantv/media/source/M3u8CacheTask;)V

    return-void
.end method
