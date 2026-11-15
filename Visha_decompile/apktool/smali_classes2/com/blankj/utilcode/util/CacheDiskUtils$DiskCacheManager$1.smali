.class Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Llp0;

.field final synthetic val$cacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Llp0;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->val$cacheDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->val$cacheDir:Ljava/io/File;

    new-instance v1, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$a;

    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$a;-><init>(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v1, v0, :cond_0

    aget-object v5, p0, v1

    int-to-long v6, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v2, v6

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Llp0;->a(Llp0;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Llp0;->b(Llp0;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p0

    int-to-long v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    invoke-static {v4}, Llp0;->c(Llp0;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    :cond_1
    return-void
.end method
