.class public Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache$Provider;


# instance fields
.field private volatile a:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

.field private volatile b:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

.field private volatile c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;-><init>(JI)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->a()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 30
    .line 31
    return-object p1
.end method

.method private c(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->a:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->a:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;-><init>(JI)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->a()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->a:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->a:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 30
    .line 31
    return-object p1
.end method

.method private d(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;-><init>(JI)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->a()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 30
    .line 31
    return-object p1
.end method


# virtual methods
.method public b(JI)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p3, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p3, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->c(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->a(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->d(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
