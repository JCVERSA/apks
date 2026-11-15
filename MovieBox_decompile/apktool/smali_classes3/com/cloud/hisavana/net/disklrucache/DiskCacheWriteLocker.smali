.class public final Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;,
        Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$1;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a()Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget p1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->b:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iput p1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->b:I

    .line 31
    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object p1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->a:Ljava/util/concurrent/locks/Lock;

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method public b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    .line 9
    .line 10
    iget v1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->b:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-lt v1, v2, :cond_2

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    iput v1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->b:I

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->b(Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "Removed the wrong lock, expected to remove: "

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", but actually removed: "

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ", key: "

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v2

    .line 81
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object p1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->a:Ljava/util/concurrent/locks/Lock;

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "Cannot release a lock that is not held, key: "

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, ", interestedThreads: "

    .line 104
    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget p1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->b:I

    .line 109
    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p1
.end method
