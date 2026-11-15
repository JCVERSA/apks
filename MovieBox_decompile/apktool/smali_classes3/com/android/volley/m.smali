.class Lcom/android/volley/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/android/volley/Request$a;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lcom/android/volley/j;

.field private final c:Lcom/android/volley/h;

.field private final d:Lcom/android/volley/CacheDispatcher;

.field private final e:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/CacheDispatcher;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/j;)V
    .locals 1

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
    iput-object v0, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/volley/m;->c:Lcom/android/volley/h;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/volley/m;->b:Lcom/android/volley/j;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/volley/m;->d:Lcom/android/volley/CacheDispatcher;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/volley/m;->e:Ljava/util/concurrent/BlockingQueue;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;Lcom/android/volley/i;)V
    .locals 5

    .line 1
    iget-object v0, p2, Lcom/android/volley/i;->b:Lcom/android/volley/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/volley/c$a;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/List;

    .line 24
    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    sget-boolean v1, Lcom/android/volley/l;->b:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-string v1, "Releasing %d waiting requests for cacheKey=%s."

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x2

    .line 43
    new-array v3, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    aput-object v2, v3, v4

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    aput-object p1, v3, v2

    .line 50
    .line 51
    invoke-static {v1, v3}, Lcom/android/volley/l;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/android/volley/Request;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/volley/m;->b:Lcom/android/volley/j;

    .line 71
    .line 72
    invoke-interface {v1, v0, p2}, Lcom/android/volley/j;->a(Lcom/android/volley/Request;Lcom/android/volley/i;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p1

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/volley/m;->b(Lcom/android/volley/Request;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public declared-synchronized b(Lcom/android/volley/Request;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v2, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Ljava/util/List;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    sget-boolean v3, Lcom/android/volley/l;->b:Z

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const-string v3, "%d waiting requests for cacheKey=%s; resend to network"

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x2

    .line 39
    new-array v5, v5, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v4, v5, v1

    .line 42
    .line 43
    aput-object p1, v5, v0

    .line 44
    .line 45
    invoke-static {v3, v5}, Lcom/android/volley/l;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    :goto_0
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/android/volley/Request;

    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p0}, Lcom/android/volley/Request;->setNetworkRequestCompleteListener(Lcom/android/volley/Request$a;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/volley/m;->c:Lcom/android/volley/h;

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Lcom/android/volley/h;->f(Lcom/android/volley/Request;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/android/volley/m;->d:Lcom/android/volley/CacheDispatcher;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/volley/m;->e:Ljava/util/concurrent/BlockingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    :try_start_1
    invoke-interface {p1, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    :try_start_2
    const-string v2, "Couldn\'t add request to queue. %s"

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object p1, v0, v1

    .line 95
    .line 96
    invoke-static {v2, v0}, Lcom/android/volley/l;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/volley/m;->d:Lcom/android/volley/CacheDispatcher;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/volley/CacheDispatcher;->quit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_1
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    throw p1
.end method

.method declared-synchronized c(Lcom/android/volley/Request;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/util/List;

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    const-string v4, "waiting-for-response"

    .line 35
    .line 36
    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    sget-boolean p1, Lcom/android/volley/l;->b:Z

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    .line 52
    .line 53
    new-array v3, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v2, v3, v0

    .line 56
    .line 57
    invoke-static {p1, v3}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :cond_1
    monitor-exit p0

    .line 61
    return v1

    .line 62
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/volley/m;->a:Ljava/util/Map;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->setNetworkRequestCompleteListener(Lcom/android/volley/Request$a;)V

    .line 69
    .line 70
    .line 71
    sget-boolean p1, Lcom/android/volley/l;->b:Z

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    const-string p1, "new request, sending to network %s"

    .line 76
    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object v2, v1, v0

    .line 80
    .line 81
    invoke-static {p1, v1}, Lcom/android/volley/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_3
    monitor-exit p0

    .line 85
    return v0

    .line 86
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw p1
.end method
