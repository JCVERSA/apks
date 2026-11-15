.class Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteLockPool"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v1, v0}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$1;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v1
.end method

.method b(Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method
