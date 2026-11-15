.class public abstract Lg6/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg6/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lx5/a$a;)V
    .locals 3

    .line 1
    const-class v0, Lg6/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v1, Lg6/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lg6/c;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    new-instance v2, Lg6/c;

    .line 23
    .line 24
    invoke-direct {v2, p0, p1}, Lg6/c;-><init>(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v2, p2}, Lg6/c;->m(Lx5/a$a;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method

.method public static declared-synchronized b(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 3

    .line 1
    const-class v0, Lg6/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lg6/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lg6/c;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2}, Lg6/c;->n(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method
