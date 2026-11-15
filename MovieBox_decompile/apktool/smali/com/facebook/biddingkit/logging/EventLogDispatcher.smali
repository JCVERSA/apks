.class Lcom/facebook/biddingkit/logging/EventLogDispatcher;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile g:Lcom/facebook/biddingkit/logging/EventLogDispatcher;


# instance fields
.field private a:I

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private f:Lcom/facebook/biddingkit/logging/i;


# direct methods
.method private constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->b:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    .line 17
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 20
    .line 21
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x1

    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    move-object v2, v0

    .line 29
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    .line 34
    new-instance v0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher$1;-><init>(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->c:Ljava/lang/Runnable;

    .line 40
    .line 41
    new-instance v0, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher$2;-><init>(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->d:Ljava/lang/Runnable;

    .line 47
    .line 48
    return-void
.end method

.method static synthetic a(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->d:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/facebook/biddingkit/logging/EventLogDispatcher;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->c:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method private g()V
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    :try_start_0
    invoke-static {v2}, Lcom/facebook/biddingkit/logging/f;->e(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    goto :goto_4

    .line 26
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/facebook/biddingkit/logging/e;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/facebook/biddingkit/logging/e;->m()Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_5

    .line 52
    :cond_1
    const-string v3, "tokens"

    .line 53
    .line 54
    invoke-static {}, Lcom/facebook/biddingkit/logging/a;->a()Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    const-string v3, "events"

    .line 62
    .line 63
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->f:Lcom/facebook/biddingkit/logging/i;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/facebook/biddingkit/logging/i;->b()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/16 v3, 0x7d0

    .line 77
    .line 78
    invoke-static {v0, v3, v1}, Lo8/b;->b(Ljava/lang/String;ILjava/lang/String;)Ln8/e;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0}, Ln8/e;->a()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/16 v1, 0xc8

    .line 89
    .line 90
    if-eq v0, v1, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->f:Lcom/facebook/biddingkit/logging/i;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/facebook/biddingkit/logging/i;->a()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->f:Lcom/facebook/biddingkit/logging/i;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/facebook/biddingkit/logging/i;->c()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a:I

    .line 109
    .line 110
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lcom/facebook/biddingkit/logging/e;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/facebook/biddingkit/logging/e;->k()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/facebook/biddingkit/logging/f;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    :goto_4
    return-void

    .line 135
    :goto_5
    const-string v1, "EventLogDispatcher"

    .line 136
    .line 137
    const-string v2, "Failed dispatching events"

    .line 138
    .line 139
    invoke-static {v1, v2, v0}, Lcom/facebook/biddingkit/logging/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    return-void
.end method

.method public static h()Lcom/facebook/biddingkit/logging/EventLogDispatcher;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->g:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->g:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->g:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->g:Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 27
    .line 28
    return-object v0
.end method

.method public static j(Lcom/facebook/biddingkit/logging/i;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->h()Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->i(Lcom/facebook/biddingkit/logging/i;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->h()Lcom/facebook/biddingkit/logging/EventLogDispatcher;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->k()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public i(Lcom/facebook/biddingkit/logging/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->f:Lcom/facebook/biddingkit/logging/i;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/biddingkit/logging/i;->a()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a:I

    .line 8
    .line 9
    return-void
.end method

.method protected k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->b:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->d:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget v2, p0, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->a:I

    .line 6
    .line 7
    int-to-long v2, v2

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
