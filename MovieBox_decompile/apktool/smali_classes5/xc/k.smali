.class public Lxc/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/firebase/perf/application/a$b;


# static fields
.field private static final r:Luc/a;

.field private static final s:Lxc/k;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/google/firebase/f;

.field private e:Lrc/e;

.field private f:Llc/e;

.field private g:Lkc/b;

.field private h:Lxc/b;

.field private i:Ljava/util/concurrent/ExecutorService;

.field private j:Landroid/content/Context;

.field private k:Lcom/google/firebase/perf/config/a;

.field private l:Lxc/d;

.field private m:Lcom/google/firebase/perf/application/a;

.field private n:Lcom/google/firebase/perf/v1/c$b;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Luc/a;->e()Luc/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lxc/k;->r:Luc/a;

    .line 6
    .line 7
    new-instance v0, Lxc/k;

    .line 8
    .line 9
    invoke-direct {v0}, Lxc/k;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lxc/k;->s:Lxc/k;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lxc/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lxc/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    iput-boolean v1, p0, Lxc/k;->q:Z

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 26
    .line 27
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    const-wide/16 v5, 0xa

    .line 33
    .line 34
    move-object v2, v0

    .line 35
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lxc/k;->i:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lxc/k;->a:Ljava/util/Map;

    .line 46
    .line 47
    const/16 v1, 0x32

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    .line 54
    .line 55
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string v2, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 59
    .line 60
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v2, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    .line 64
    .line 65
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private D(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Lcom/google/firebase/perf/v1/g;
    .locals 1

    .line 1
    invoke-direct {p0}, Lxc/k;->G()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lxc/k;->n:Lcom/google/firebase/perf/v1/c$b;

    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/google/firebase/perf/v1/c$b;->n(Lcom/google/firebase/perf/v1/ApplicationProcessState;)Lcom/google/firebase/perf/v1/c$b;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g$b;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g$b;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$b;->clone()Lcom/google/protobuf/GeneratedMessageLite$b;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/google/firebase/perf/v1/c$b;

    .line 27
    .line 28
    invoke-direct {p0}, Lxc/k;->j()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p2, v0}, Lcom/google/firebase/perf/v1/c$b;->k(Ljava/util/Map;)Lcom/google/firebase/perf/v1/c$b;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/v1/g$b;->d(Lcom/google/firebase/perf/v1/c$b;)Lcom/google/firebase/perf/v1/g$b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/google/firebase/perf/v1/g;

    .line 45
    .line 46
    return-object p1
.end method

.method private E()V
    .locals 9

    .line 1
    iget-object v0, p0, Lxc/k;->d:Lcom/google/firebase/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lxc/k;->j:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lxc/k;->o:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lxc/k;->k:Lcom/google/firebase/perf/config/a;

    .line 20
    .line 21
    new-instance v0, Lxc/d;

    .line 22
    .line 23
    iget-object v1, p0, Lxc/k;->j:Landroid/content/Context;

    .line 24
    .line 25
    new-instance v8, Lcom/google/firebase/perf/util/g;

    .line 26
    .line 27
    const-wide/16 v5, 0x1

    .line 28
    .line 29
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    const-wide/16 v3, 0x64

    .line 32
    .line 33
    move-object v2, v8

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/perf/util/g;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v2, 0x1f4

    .line 38
    .line 39
    invoke-direct {v0, v1, v8, v2, v3}, Lxc/d;-><init>(Landroid/content/Context;Lcom/google/firebase/perf/util/g;J)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lxc/k;->l:Lxc/d;

    .line 43
    .line 44
    invoke-static {}, Lcom/google/firebase/perf/application/a;->b()Lcom/google/firebase/perf/application/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lxc/k;->m:Lcom/google/firebase/perf/application/a;

    .line 49
    .line 50
    new-instance v0, Lxc/b;

    .line 51
    .line 52
    iget-object v1, p0, Lxc/k;->g:Lkc/b;

    .line 53
    .line 54
    iget-object v2, p0, Lxc/k;->k:Lcom/google/firebase/perf/config/a;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/google/firebase/perf/config/a;->a()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v0, v1, v2}, Lxc/b;-><init>(Lkc/b;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lxc/k;->h:Lxc/b;

    .line 64
    .line 65
    invoke-direct {p0}, Lxc/k;->h()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private F(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lxc/k;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lxc/k;->s(Lyc/a;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lxc/k;->r:Luc/a;

    .line 14
    .line 15
    invoke-static {p1}, Lxc/k;->o(Lyc/a;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v1, v2, v3

    .line 24
    .line 25
    const-string v1, "Transport is not initialized yet, %s will be queued for to be dispatched later"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Luc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lxc/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 31
    .line 32
    new-instance v1, Lxc/c;

    .line 33
    .line 34
    invoke-direct {v1, p1, p2}, Lxc/c;-><init>(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :cond_1
    invoke-direct {p0, p1, p2}, Lxc/k;->D(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Lcom/google/firebase/perf/v1/g;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Lxc/k;->t(Lcom/google/firebase/perf/v1/g;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lxc/k;->g(Lcom/google/firebase/perf/v1/g;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->stopGaugeCollectionIfSessionRunningTooLong()V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method private G()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lxc/k;->k:Lcom/google/firebase/perf/config/a;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/google/firebase/perf/config/a;->K()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lxc/k;->n:Lcom/google/firebase/perf/v1/c$b;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/firebase/perf/v1/c$b;->j()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-boolean v2, p0, Lxc/k;->q:Z

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_0
    iget-object v2, p0, Lxc/k;->f:Llc/e;

    .line 25
    .line 26
    invoke-interface {v2}, Llc/e;->getId()Lcom/google/android/gms/tasks/Task;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    const-wide/32 v4, 0xea60

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v4, v5, v3}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :catch_0
    move-exception v2

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception v2

    .line 45
    goto :goto_1

    .line 46
    :catch_2
    move-exception v2

    .line 47
    goto :goto_2

    .line 48
    :goto_0
    sget-object v3, Lxc/k;->r:Luc/a;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v2, v1, v0

    .line 57
    .line 58
    const-string v0, "Task to retrieve Installation Id is timed out: %s"

    .line 59
    .line 60
    invoke-virtual {v3, v0, v1}, Luc/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :goto_1
    sget-object v3, Lxc/k;->r:Luc/a;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object v2, v1, v0

    .line 73
    .line 74
    const-string v0, "Task to retrieve Installation Id is interrupted: %s"

    .line 75
    .line 76
    invoke-virtual {v3, v0, v1}, Luc/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :goto_2
    sget-object v3, Lxc/k;->r:Luc/a;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v2, v1, v0

    .line 89
    .line 90
    const-string v0, "Unable to retrieve Installation Id: %s"

    .line 91
    .line 92
    invoke-virtual {v3, v0, v1}, Luc/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_3
    const/4 v2, 0x0

    .line 96
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_1

    .line 101
    .line 102
    iget-object v0, p0, Lxc/k;->n:Lcom/google/firebase/perf/v1/c$b;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/v1/c$b;->m(Ljava/lang/String;)Lcom/google/firebase/perf/v1/c$b;

    .line 105
    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_1
    sget-object v0, Lxc/k;->r:Luc/a;

    .line 109
    .line 110
    const-string v1, "Firebase Installation Id is empty, contact Firebase Support for debugging."

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Luc/a;->j(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_5
    return-void
.end method

.method private H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxc/k;->e:Lrc/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lxc/k;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lrc/e;->c()Lrc/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lxc/k;->e:Lrc/e;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static synthetic a(Lxc/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxc/k;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lxc/k;Lxc/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lxc/k;->v(Lxc/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lxc/k;Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lxc/k;->w(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lxc/k;Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lxc/k;->x(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lxc/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxc/k;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lxc/k;Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lxc/k;->y(Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g(Lcom/google/firebase/perf/v1/g;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget-object v2, Lxc/k;->r:Luc/a;

    .line 10
    .line 11
    invoke-static {p1}, Lxc/k;->o(Lyc/a;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->g()Lcom/google/firebase/perf/v1/i;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-direct {p0, v4}, Lxc/k;->i(Lcom/google/firebase/perf/v1/i;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x2

    .line 24
    new-array v5, v5, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object v3, v5, v1

    .line 27
    .line 28
    aput-object v4, v5, v0

    .line 29
    .line 30
    const-string v0, "Logging %s. In a minute, visit the Firebase console to view your data: %s"

    .line 31
    .line 32
    invoke-virtual {v2, v0, v5}, Luc/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v2, Lxc/k;->r:Luc/a;

    .line 37
    .line 38
    invoke-static {p1}, Lxc/k;->o(Lyc/a;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object v3, v0, v1

    .line 45
    .line 46
    const-string v1, "Logging %s"

    .line 47
    .line 48
    invoke-virtual {v2, v1, v0}, Luc/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v0, p0, Lxc/k;->h:Lxc/b;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lxc/b;->b(Lcom/google/firebase/perf/v1/g;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lxc/k;->m:Lcom/google/firebase/perf/application/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    sget-object v2, Lxc/k;->s:Lxc/k;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/application/a;->k(Ljava/lang/ref/WeakReference;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/google/firebase/perf/v1/c;->u()Lcom/google/firebase/perf/v1/c$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lxc/k;->n:Lcom/google/firebase/perf/v1/c$b;

    .line 18
    .line 19
    iget-object v1, p0, Lxc/k;->d:Lcom/google/firebase/f;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/firebase/f;->n()Lcom/google/firebase/m;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/c$b;->o(Ljava/lang/String;)Lcom/google/firebase/perf/v1/c$b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lcom/google/firebase/perf/v1/a;->n()Lcom/google/firebase/perf/v1/a$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lxc/k;->o:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/a$b;->d(Ljava/lang/String;)Lcom/google/firebase/perf/v1/a$b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Lrc/a;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/a$b;->h(Ljava/lang/String;)Lcom/google/firebase/perf/v1/a$b;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lxc/k;->j:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v2}, Lxc/k;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/a$b;->j(Ljava/lang/String;)Lcom/google/firebase/perf/v1/a$b;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/c$b;->l(Lcom/google/firebase/perf/v1/a$b;)Lcom/google/firebase/perf/v1/c$b;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lxc/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
    iget-object v0, p0, Lxc/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    iget-object v0, p0, Lxc/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lxc/c;

    .line 83
    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    iget-object v1, p0, Lxc/k;->i:Ljava/util/concurrent/ExecutorService;

    .line 87
    .line 88
    new-instance v2, Lxc/j;

    .line 89
    .line 90
    invoke-direct {v2, p0, v0}, Lxc/j;-><init>(Lxc/k;Lxc/c;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method

.method private i(Lcom/google/firebase/perf/v1/i;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/i;->E()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "_st_"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lxc/k;->p:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lxc/k;->o:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Luc/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object v0, p0, Lxc/k;->p:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Lxc/k;->o:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1, p1}, Luc/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private j()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-direct {p0}, Lxc/k;->H()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lxc/k;->e:Lrc/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lrc/e;->b()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    return-object v0
.end method

.method public static k()Lxc/k;
    .locals 1

    .line 1
    sget-object v0, Lxc/k;->s:Lxc/k;

    .line 2
    .line 3
    return-object v0
.end method

.method private static l(Lcom/google/firebase/perf/v1/f;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/f;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/f;->q()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/f;->p()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v3, 0x3

    .line 28
    new-array v3, v3, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    aput-object v1, v3, v4

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    aput-object v2, v3, v1

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    aput-object p0, v3, v1

    .line 38
    .line 39
    const-string p0, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)"

    .line 40
    .line 41
    invoke-static {v0, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method private static m(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->P()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->G()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->L()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->A()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-string v2, "UNKNOWN"

    .line 30
    .line 31
    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->I()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance v4, Ljava/text/DecimalFormat;

    .line 38
    .line 39
    const-string v5, "#.####"

    .line 40
    .line 41
    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    long-to-double v0, v0

    .line 45
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    div-double/2addr v0, v5

    .line 51
    invoke-virtual {v4, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x3

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    aput-object p0, v1, v4

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    aput-object v2, v1, p0

    .line 63
    .line 64
    const/4 p0, 0x2

    .line 65
    aput-object v0, v1, p0

    .line 66
    .line 67
    const-string p0, "network request trace: %s (responseCode: %s, responseTime: %sms)"

    .line 68
    .line 69
    invoke-static {v3, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method private static n(Lcom/google/firebase/perf/v1/i;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/i;->B()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/i;->E()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v3, Ljava/text/DecimalFormat;

    .line 12
    .line 13
    const-string v4, "#.####"

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    long-to-double v0, v0

    .line 19
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    div-double/2addr v0, v4

    .line 25
    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x2

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object p0, v1, v3

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    aput-object v0, v1, p0

    .line 37
    .line 38
    const-string p0, "trace metric: %s (duration: %sms)"

    .line 39
    .line 40
    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method private static o(Lyc/a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lyc/a;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lyc/a;->g()Lcom/google/firebase/perf/v1/i;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lxc/k;->n(Lcom/google/firebase/perf/v1/i;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Lyc/a;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Lyc/a;->c()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lxc/k;->m(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-interface {p0}, Lyc/a;->a()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {p0}, Lyc/a;->i()Lcom/google/firebase/perf/v1/f;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lxc/k;->l(Lcom/google/firebase/perf/v1/f;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    const-string p0, "log"

    .line 47
    .line 48
    return-object p0
.end method

.method private static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, p0

    .line 22
    :catch_0
    :goto_0
    return-object v0
.end method

.method private q(Lcom/google/firebase/perf/v1/g;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lxc/k;->m:Lcom/google/firebase/perf/application/a;

    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/util/Constants$CounterNames;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Constants$CounterNames;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/perf/application/a;->d(Ljava/lang/String;J)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->b()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lxc/k;->m:Lcom/google/firebase/perf/application/a;

    .line 28
    .line 29
    sget-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->NETWORK_TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/util/Constants$CounterNames;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Constants$CounterNames;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/perf/application/a;->d(Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private s(Lyc/a;)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lxc/k;->a:Ljava/util/Map;

    .line 3
    .line 4
    const-string v2, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    .line 5
    .line 6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object v4, p0, Lxc/k;->a:Ljava/util/Map;

    .line 17
    .line 18
    const-string v5, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 19
    .line 20
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    iget-object v7, p0, Lxc/k;->a:Ljava/util/Map;

    .line 31
    .line 32
    const-string v8, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    .line 33
    .line 34
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    invoke-interface {p1}, Lyc/a;->e()Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    const/4 v11, 0x1

    .line 49
    if-eqz v10, :cond_0

    .line 50
    .line 51
    if-lez v3, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lxc/k;->a:Ljava/util/Map;

    .line 54
    .line 55
    sub-int/2addr v3, v11

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return v11

    .line 64
    :cond_0
    invoke-interface {p1}, Lyc/a;->b()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    if-lez v6, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lxc/k;->a:Ljava/util/Map;

    .line 73
    .line 74
    sub-int/2addr v6, v11

    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return v11

    .line 83
    :cond_1
    invoke-interface {p1}, Lyc/a;->a()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    if-lez v9, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lxc/k;->a:Ljava/util/Map;

    .line 92
    .line 93
    sub-int/2addr v9, v11

    .line 94
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {p1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return v11

    .line 102
    :cond_2
    sget-object v2, Lxc/k;->r:Luc/a;

    .line 103
    .line 104
    invoke-static {p1}, Lxc/k;->o(Lyc/a;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const/4 v3, 0x4

    .line 109
    new-array v3, v3, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object p1, v3, v0

    .line 112
    .line 113
    aput-object v1, v3, v11

    .line 114
    .line 115
    const/4 p1, 0x2

    .line 116
    aput-object v4, v3, p1

    .line 117
    .line 118
    const/4 p1, 0x3

    .line 119
    aput-object v7, v3, p1

    .line 120
    .line 121
    const-string p1, "%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d)."

    .line 122
    .line 123
    invoke-virtual {v2, p1, v3}, Luc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return v0
.end method

.method private t(Lcom/google/firebase/perf/v1/g;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lxc/k;->k:Lcom/google/firebase/perf/config/a;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/perf/config/a;->K()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lxc/k;->r:Luc/a;

    .line 12
    .line 13
    invoke-static {p1}, Lxc/k;->o(Lyc/a;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object p1, v0, v2

    .line 20
    .line 21
    const-string p1, "Performance collection is not enabled, dropping %s"

    .line 22
    .line 23
    invoke-virtual {v1, p1, v0}, Luc/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->l()Lcom/google/firebase/perf/v1/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/firebase/perf/v1/c;->q()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    sget-object v1, Lxc/k;->r:Luc/a;

    .line 38
    .line 39
    invoke-static {p1}, Lxc/k;->o(Lyc/a;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p1, v0, v2

    .line 46
    .line 47
    const-string p1, "App Instance ID is null or empty, dropping %s"

    .line 48
    .line 49
    invoke-virtual {v1, p1, v0}, Luc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    iget-object v1, p0, Lxc/k;->j:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {p1, v1}, Lvc/e;->b(Lcom/google/firebase/perf/v1/g;Landroid/content/Context;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    sget-object v1, Lxc/k;->r:Luc/a;

    .line 62
    .line 63
    invoke-static {p1}, Lxc/k;->o(Lyc/a;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object p1, v0, v2

    .line 70
    .line 71
    const-string p1, "Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values."

    .line 72
    .line 73
    invoke-virtual {v1, p1, v0}, Luc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return v2

    .line 77
    :cond_2
    iget-object v1, p0, Lxc/k;->l:Lxc/d;

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Lxc/d;->h(Lcom/google/firebase/perf/v1/g;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    invoke-direct {p0, p1}, Lxc/k;->q(Lcom/google/firebase/perf/v1/g;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Lxc/k;->r:Luc/a;

    .line 89
    .line 90
    invoke-static {p1}, Lxc/k;->o(Lyc/a;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-array v0, v0, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object p1, v0, v2

    .line 97
    .line 98
    const-string p1, "Event dropped due to device sampling - %s"

    .line 99
    .line 100
    invoke-virtual {v1, p1, v0}, Luc/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return v2

    .line 104
    :cond_3
    iget-object v1, p0, Lxc/k;->l:Lxc/d;

    .line 105
    .line 106
    invoke-virtual {v1, p1}, Lxc/d;->g(Lcom/google/firebase/perf/v1/g;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    invoke-direct {p0, p1}, Lxc/k;->q(Lcom/google/firebase/perf/v1/g;)V

    .line 113
    .line 114
    .line 115
    sget-object v1, Lxc/k;->r:Luc/a;

    .line 116
    .line 117
    invoke-static {p1}, Lxc/k;->o(Lyc/a;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    .line 123
    aput-object p1, v0, v2

    .line 124
    .line 125
    const-string p1, "Rate limited (per device) - %s"

    .line 126
    .line 127
    invoke-virtual {v1, p1, v0}, Luc/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return v2

    .line 131
    :cond_4
    return v0
.end method

.method private synthetic v(Lxc/c;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lxc/c;->a:Lcom/google/firebase/perf/v1/g$b;

    .line 2
    .line 3
    iget-object p1, p1, Lxc/c;->b:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Lxc/k;->F(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic w(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/v1/g;->n()Lcom/google/firebase/perf/v1/g$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/g$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/g$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p2}, Lxc/k;->F(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic x(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/v1/g;->n()Lcom/google/firebase/perf/v1/g$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/g$b;->j(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Lcom/google/firebase/perf/v1/g$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p2}, Lxc/k;->F(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic y(Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/v1/g;->n()Lcom/google/firebase/perf/v1/g$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/g$b;->h(Lcom/google/firebase/perf/v1/f;)Lcom/google/firebase/perf/v1/g$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p2}, Lxc/k;->F(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxc/k;->l:Lxc/d;

    .line 2
    .line 3
    iget-boolean v1, p0, Lxc/k;->q:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lxc/d;->a(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public A(Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxc/k;->i:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lxc/f;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lxc/f;-><init>(Lxc/k;Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public B(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxc/k;->i:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lxc/h;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lxc/h;-><init>(Lxc/k;Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public C(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxc/k;->i:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lxc/g;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lxc/g;-><init>(Lxc/k;Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onUpdateAppState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lxc/k;->q:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lxc/k;->u()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lxc/k;->i:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    new-instance v0, Lxc/e;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lxc/e;-><init>(Lxc/k;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public r(Lcom/google/firebase/f;Llc/e;Lkc/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxc/k;->d:Lcom/google/firebase/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/f;->n()Lcom/google/firebase/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/m;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lxc/k;->p:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lxc/k;->f:Llc/e;

    .line 14
    .line 15
    iput-object p3, p0, Lxc/k;->g:Lkc/b;

    .line 16
    .line 17
    iget-object p1, p0, Lxc/k;->i:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    new-instance p2, Lxc/i;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lxc/i;-><init>(Lxc/k;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lxc/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
