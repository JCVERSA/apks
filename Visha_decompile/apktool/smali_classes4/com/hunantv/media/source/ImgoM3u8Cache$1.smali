.class Lcom/hunantv/media/source/ImgoM3u8Cache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/source/ImgoM3u8Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/source/ImgoM3u8Cache;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/source/ImgoM3u8Cache;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/ImgoM3u8Cache$1;->this$0:Lcom/hunantv/media/source/ImgoM3u8Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/hunantv/media/source/ImgoM3u8Cache$1;Ljava/util/List;Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/source/ImgoM3u8Cache$1;->findTask(Ljava/util/List;Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;

    move-result-object p0

    return-object p0
.end method

.method private findTask(Ljava/util/List;Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hunantv/media/source/M3u8CacheTask;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hunantv/media/source/M3u8CacheTask;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    check-cast v0, Lcom/hunantv/media/source/M3u8CacheTask;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/hunantv/media/source/M3u8CacheTask;->mTaskID:Ljava/lang/String;

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

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native_callback result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",taskid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->taskid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",fullpath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->fullpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImgoM3u8Cache"

    invoke-static {v1, v0}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;->ts_names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "native_callback ts_name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hunantv/media/source/ImgoCacheLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/hunantv/media/source/ImgoM3u8Cache$1$1;-><init>(Lcom/hunantv/media/source/ImgoM3u8Cache$1;Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;I)V

    invoke-static {v0}, Lcom/hunantv/media/player/utils/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
