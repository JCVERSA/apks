.class Lcom/hunantv/media/source/ImgoCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/source/ImgoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/source/ImgoCache;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/source/ImgoCache;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoCache$1;->this$0:Lcom/hunantv/media/source/ImgoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache$1;->this$0:Lcom/hunantv/media/source/ImgoCache;

    invoke-virtual {v0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError taskid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;->taskid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",error_code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;->error_code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",detail_code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;->detail_code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache$1;->this$0:Lcom/hunantv/media/source/ImgoCache;

    invoke-static {v0}, Lcom/hunantv/media/source/ImgoCache;->access$000(Lcom/hunantv/media/source/ImgoCache;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache$1;->this$0:Lcom/hunantv/media/source/ImgoCache;

    invoke-static {v0}, Lcom/hunantv/media/source/ImgoCache;->access$000(Lcom/hunantv/media/source/ImgoCache;)Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/hunantv/media/source/ImgoCache$1$3;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/source/ImgoCache$1$3;-><init>(Lcom/hunantv/media/source/ImgoCache$1;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/ThreadUtil;->runOnTargetLooper(Landroid/os/Looper;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hunantv/media/source/ImgoCache$1$4;

    invoke-direct {v0, p0, p1}, Lcom/hunantv/media/source/ImgoCache$1$4;-><init>(Lcom/hunantv/media/source/ImgoCache$1;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V

    invoke-static {v0}, Lcom/hunantv/media/player/utils/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/source/ImgoCache$1;->this$0:Lcom/hunantv/media/source/ImgoCache;

    invoke-virtual {p0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onError params null"

    invoke-static {p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResult(ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
    .locals 7

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache$1;->this$0:Lcom/hunantv/media/source/ImgoCache;

    invoke-virtual {v0}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/hunantv/media/source/ImgoCacheLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->ts_names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/hunantv/media/source/ImgoCache$1;->this$0:Lcom/hunantv/media/source/ImgoCache;

    invoke-virtual {v4}, Lcom/hunantv/media/source/ImgoCache;->TAG()Ljava/lang/String;

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
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache$1;->this$0:Lcom/hunantv/media/source/ImgoCache;

    invoke-static {v0}, Lcom/hunantv/media/source/ImgoCache;->access$000(Lcom/hunantv/media/source/ImgoCache;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/source/ImgoCache$1;->this$0:Lcom/hunantv/media/source/ImgoCache;

    invoke-static {v0}, Lcom/hunantv/media/source/ImgoCache;->access$000(Lcom/hunantv/media/source/ImgoCache;)Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/hunantv/media/source/ImgoCache$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/hunantv/media/source/ImgoCache$1$1;-><init>(Lcom/hunantv/media/source/ImgoCache$1;ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/ThreadUtil;->runOnTargetLooper(Landroid/os/Looper;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/hunantv/media/source/ImgoCache$1$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hunantv/media/source/ImgoCache$1$2;-><init>(Lcom/hunantv/media/source/ImgoCache$1;ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V

    invoke-static {v0}, Lcom/hunantv/media/player/utils/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method
