.class Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/e;

.field final synthetic val$cacheDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/e;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->val$cacheDir:Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->val$cacheDir:Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$a;-><init>(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    :goto_0
    const/4 v5, 0x0

    .line 19
    if-ge v2, v1, :cond_0

    .line 20
    .line 21
    aget-object v6, v0, v2

    .line 22
    .line 23
    int-to-long v7, v3

    .line 24
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 25
    .line 26
    .line 27
    move-result-wide v9

    .line 28
    add-long/2addr v7, v9

    .line 29
    long-to-int v3, v7

    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    invoke-static {v5}, Lcom/blankj/utilcode/util/e;->a(Lcom/blankj/utilcode/util/e;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v5}, Lcom/blankj/utilcode/util/e;->b(Lcom/blankj/utilcode/util/e;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    int-to-long v1, v3

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 56
    .line 57
    .line 58
    invoke-static {v5}, Lcom/blankj/utilcode/util/e;->c(Lcom/blankj/utilcode/util/e;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method
