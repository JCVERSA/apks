.class public Lcom/google/firebase/perf/metrics/AppStartTrace;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/metrics/AppStartTrace$b;,
        Lcom/google/firebase/perf/metrics/AppStartTrace$StartFromBackgroundRunnable;
    }
.end annotation


# static fields
.field private static volatile A:Lcom/google/firebase/perf/metrics/AppStartTrace;

.field private static B:Ljava/util/concurrent/ExecutorService;

.field private static final y:Lcom/google/firebase/perf/util/Timer;

.field private static final z:J


# instance fields
.field private a:Z

.field private final b:Lxc/k;

.field private final c:Lcom/google/firebase/perf/util/a;

.field private final d:Lcom/google/firebase/perf/config/a;

.field private final e:Lcom/google/firebase/perf/v1/i$b;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/ref/WeakReference;

.field private h:Ljava/lang/ref/WeakReference;

.field private i:Z

.field private final j:Lcom/google/firebase/perf/util/Timer;

.field private final k:Lcom/google/firebase/perf/util/Timer;

.field private l:Lcom/google/firebase/perf/util/Timer;

.field private m:Lcom/google/firebase/perf/util/Timer;

.field private n:Lcom/google/firebase/perf/util/Timer;

.field private o:Lcom/google/firebase/perf/util/Timer;

.field private p:Lcom/google/firebase/perf/util/Timer;

.field private q:Lcom/google/firebase/perf/util/Timer;

.field private r:Lcom/google/firebase/perf/util/Timer;

.field private s:Lcom/google/firebase/perf/util/Timer;

.field private t:Lcom/google/firebase/perf/session/PerfSession;

.field private u:Z

.field private v:I

.field private final w:Lcom/google/firebase/perf/metrics/AppStartTrace$b;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/perf/util/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/perf/util/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->y:Lcom/google/firebase/perf/util/Timer;

    .line 11
    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    const-wide/16 v1, 0x1

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sput-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->z:J

    .line 21
    .line 22
    return-void
.end method

.method constructor <init>(Lxc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/config/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->o:Lcom/google/firebase/perf/util/Timer;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->p:Lcom/google/firebase/perf/util/Timer;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Lcom/google/firebase/perf/util/Timer;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Lcom/google/firebase/perf/util/Timer;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lcom/google/firebase/perf/util/Timer;

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    .line 27
    .line 28
    iput v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:I

    .line 29
    .line 30
    new-instance v2, Lcom/google/firebase/perf/metrics/AppStartTrace$b;

    .line 31
    .line 32
    invoke-direct {v2, p0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace$b;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/metrics/AppStartTrace$a;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->w:Lcom/google/firebase/perf/metrics/AppStartTrace$b;

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lxc/k;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/firebase/perf/config/a;

    .line 44
    .line 45
    sput-object p4, Lcom/google/firebase/perf/metrics/AppStartTrace;->B:Ljava/util/concurrent/ExecutorService;

    .line 46
    .line 47
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "_experiment_app_start_ttid"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 58
    .line 59
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    const/16 p2, 0x18

    .line 62
    .line 63
    if-lt p1, p2, :cond_0

    .line 64
    .line 65
    invoke-static {}, Lcom/google/firebase/perf/metrics/a;->a()J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    invoke-static {p1, p2}, Lcom/google/firebase/perf/util/Timer;->ofElapsedRealtime(J)Lcom/google/firebase/perf/util/Timer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move-object p1, v1

    .line 75
    :goto_0
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/firebase/perf/util/Timer;

    .line 76
    .line 77
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-class p2, Lcom/google/firebase/n;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/google/firebase/n;

    .line 88
    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/n;->b()J

    .line 92
    .line 93
    .line 94
    move-result-wide p1

    .line 95
    invoke-static {p1, p2}, Lcom/google/firebase/perf/util/Timer;->ofElapsedRealtime(J)Lcom/google/firebase/perf/util/Timer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :cond_1
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Lcom/google/firebase/perf/util/Timer;

    .line 100
    .line 101
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/v1/i$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->n(Lcom/google/firebase/perf/v1/i$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/google/firebase/perf/metrics/AppStartTrace;)Lcom/google/firebase/perf/util/Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/firebase/perf/metrics/AppStartTrace;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h(Lcom/google/firebase/perf/metrics/AppStartTrace;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:I

    .line 6
    .line 7
    return v0
.end method

.method private i()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->k:Lcom/google/firebase/perf/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->y:Lcom/google/firebase/perf/util/Timer;

    .line 7
    .line 8
    return-object v0
.end method

.method public static j()Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lxc/k;->k()Lxc/k;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/firebase/perf/util/a;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/google/firebase/perf/util/a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->k(Lxc/k;Lcom/google/firebase/perf/util/a;)Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method

.method static k(Lxc/k;Lcom/google/firebase/perf/util/a;)Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 11

    .line 1
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    .line 20
    sget-wide v3, Lcom/google/firebase/perf/metrics/AppStartTrace;->z:J

    .line 21
    .line 22
    const-wide/16 v5, 0xa

    .line 23
    .line 24
    add-long v6, v3, v5

    .line 25
    .line 26
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    .line 30
    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x1

    .line 35
    move-object v3, v10

    .line 36
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0, p1, v2, v10}, Lcom/google/firebase/perf/metrics/AppStartTrace;-><init>(Lxc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/config/a;Ljava/util/concurrent/ExecutorService;)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit v0

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_2
    sget-object p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->A:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 52
    .line 53
    return-object p0
.end method

.method private l()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/firebase/perf/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 6

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ":"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 55
    .line 56
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 57
    .line 58
    const/16 v5, 0x64

    .line 59
    .line 60
    if-eq v4, v5, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_3

    .line 70
    .line 71
    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    :cond_3
    return v1

    .line 80
    :cond_4
    const/4 p0, 0x0

    .line 81
    return p0
.end method

.method private synthetic n(Lcom/google/firebase/perf/v1/i$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lxc/k;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/firebase/perf/v1/i;

    .line 8
    .line 9
    sget-object v1, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lxc/k;->C(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private o()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/firebase/perf/util/Constants$TraceNames;->APP_START_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sget-object v3, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_CREATE_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/google/firebase/perf/v1/i;

    .line 92
    .line 93
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    .line 97
    .line 98
    if-eqz v2, :cond_0

    .line 99
    .line 100
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    sget-object v3, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_START_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    .line 125
    .line 126
    iget-object v5, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v4

    .line 132
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/google/firebase/perf/v1/i;

    .line 140
    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    sget-object v3, Lcom/google/firebase/perf/util/Constants$TraceNames;->ON_RESUME_TRACE_NAME:Lcom/google/firebase/perf/util/Constants$TraceNames;

    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Constants$TraceNames;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    .line 159
    .line 160
    invoke-virtual {v4}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    .line 161
    .line 162
    .line 163
    move-result-wide v4

    .line 164
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    .line 169
    .line 170
    iget-object v5, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;

    .line 171
    .line 172
    invoke-virtual {v4, v5}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v4

    .line 176
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lcom/google/firebase/perf/v1/i;

    .line 184
    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->h(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/i$b;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lcom/google/firebase/perf/session/PerfSession;

    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/google/firebase/perf/session/PerfSession;->build()Lcom/google/firebase/perf/v1/h;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->j(Lcom/google/firebase/perf/v1/h;)Lcom/google/firebase/perf/v1/i$b;

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->b:Lxc/k;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lcom/google/firebase/perf/v1/i;

    .line 208
    .line 209
    sget-object v2, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 210
    .line 211
    invoke-virtual {v1, v0, v2}, Lxc/k;->C(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method private p(Lcom/google/firebase/perf/v1/i$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Lcom/google/firebase/perf/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Lcom/google/firebase/perf/util/Timer;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lcom/google/firebase/perf/util/Timer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->B:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    new-instance v1, Lcom/google/firebase/perf/metrics/f;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/perf/metrics/f;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/v1/i$b;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->u()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lcom/google/firebase/perf/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lcom/google/firebase/perf/util/Timer;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "_experiment_onDrawFoQ"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->s:Lcom/google/firebase/perf/util/Timer;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/google/firebase/perf/v1/i;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->j:Lcom/google/firebase/perf/util/Timer;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 66
    .line 67
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "_experiment_procStart_to_classLoad"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lcom/google/firebase/perf/v1/i;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;

    .line 112
    .line 113
    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 115
    .line 116
    iget-boolean v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    .line 117
    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    const-string v1, "true"

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    const-string v1, "false"

    .line 124
    .line 125
    :goto_0
    const-string v2, "systemDeterminedForeground"

    .line 126
    .line 127
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/v1/i$b;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 131
    .line 132
    iget v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->v:I

    .line 133
    .line 134
    int-to-long v1, v1

    .line 135
    const-string v3, "onDrawCount"

    .line 136
    .line 137
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/perf/v1/i$b;->n(Ljava/lang/String;J)Lcom/google/firebase/perf/v1/i$b;

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lcom/google/firebase/perf/session/PerfSession;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/google/firebase/perf/session/PerfSession;->build()Lcom/google/firebase/perf/v1/h;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->j(Lcom/google/firebase/perf/v1/h;)Lcom/google/firebase/perf/v1/i$b;

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 152
    .line 153
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->p(Lcom/google/firebase/perf/v1/i$b;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Lcom/google/firebase/perf/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Lcom/google/firebase/perf/util/Timer;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->q:Lcom/google/firebase/perf/util/Timer;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->p(Lcom/google/firebase/perf/v1/i$b;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Lcom/google/firebase/perf/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Lcom/google/firebase/perf/util/Timer;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "_experiment_preDrawFoQ"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->r:Lcom/google/firebase/perf/util/Timer;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/google/firebase/perf/v1/i;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 62
    .line 63
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->p(Lcom/google/firebase/perf/v1/i$b;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static setLauncherActivityOnCreateTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    return-void
.end method

.method public static setLauncherActivityOnResumeTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    return-void
.end method

.method public static setLauncherActivityOnStartTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    .line 3
    .line 4
    if-nez p2, :cond_4

    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-nez p2, :cond_2

    .line 15
    .line 16
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/google/firebase/perf/metrics/AppStartTrace;->m(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p2, 0x0

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_3

    .line 29
    :cond_2
    :goto_0
    move p2, v0

    .line 30
    :goto_1
    iput-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    .line 31
    .line 32
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->g:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:Lcom/google/firebase/perf/util/Timer;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    sget-wide v1, Lcom/google/firebase/perf/metrics/AppStartTrace;->z:J

    .line 58
    .line 59
    cmp-long p1, p1, v1

    .line 60
    .line 61
    if-lez p1, :cond_3

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    :cond_3
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :cond_4
    :goto_2
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/firebase/perf/config/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->h()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v0, 0x1020002

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->w:Lcom/google/firebase/perf/metrics/AppStartTrace$b;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    .line 3
    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Lcom/google/firebase/perf/config/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->h()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const v1, 0x1020002

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->w:Lcom/google/firebase/perf/metrics/AppStartTrace$b;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/google/firebase/perf/metrics/b;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/google/firebase/perf/metrics/b;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/google/firebase/perf/util/c;->e(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lcom/google/firebase/perf/metrics/c;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lcom/google/firebase/perf/metrics/c;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Lcom/google/firebase/perf/metrics/d;

    .line 52
    .line 53
    invoke-direct {v3, p0}, Lcom/google/firebase/perf/metrics/d;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2, v3}, Lcom/google/firebase/perf/util/f;->a(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->h:Ljava/lang/ref/WeakReference;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;

    .line 82
    .line 83
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/google/firebase/perf/session/PerfSession;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->t:Lcom/google/firebase/perf/session/PerfSession;

    .line 92
    .line 93
    invoke-static {}, Luc/a;->e()Luc/a;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v3, "onResume(): "

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, ": "

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->i()Lcom/google/firebase/perf/util/Timer;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->n:Lcom/google/firebase/perf/util/Timer;

    .line 128
    .line 129
    invoke-virtual {p1, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v3

    .line 133
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p1, " microseconds"

    .line 137
    .line 138
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v1, p1}, Luc/a;->a(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Lcom/google/firebase/perf/metrics/AppStartTrace;->B:Ljava/util/concurrent/ExecutorService;

    .line 149
    .line 150
    new-instance v1, Lcom/google/firebase/perf/metrics/e;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/google/firebase/perf/metrics/e;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 156
    .line 157
    .line 158
    if-nez v0, :cond_3

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .line 162
    .line 163
    :cond_3
    monitor-exit p0

    .line 164
    return-void

    .line 165
    :cond_4
    :goto_1
    monitor-exit p0

    .line 166
    return-void

    .line 167
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAppEnteredBackground()V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->p:Lcom/google/firebase/perf/util/Timer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->p:Lcom/google/firebase/perf/util/Timer;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "_experiment_firstBackgrounding"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->p:Lcom/google/firebase/perf/util/Timer;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/google/firebase/perf/v1/i;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public onAppEnteredForeground()V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->i:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->o:Lcom/google/firebase/perf/util/Timer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->c:Lcom/google/firebase/perf/util/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->o:Lcom/google/firebase/perf/util/Timer;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->e:Lcom/google/firebase/perf/v1/i$b;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->M()Lcom/google/firebase/perf/v1/i$b;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "_experiment_firstForegrounding"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/i$b;->r(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->p(J)Lcom/google/firebase/perf/v1/i$b;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->l()Lcom/google/firebase/perf/util/Timer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->o:Lcom/google/firebase/perf/util/Timer;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/v1/i$b;->q(J)Lcom/google/firebase/perf/v1/i$b;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/google/firebase/perf/v1/i;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/i$b;

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized t(Landroid/content/Context;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/lifecycle/g0;->l()Landroidx/lifecycle/u;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of v0, p1, Landroid/app/Application;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, Landroid/app/Application;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-static {p1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->m(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_0
    move v0, v1

    .line 50
    :goto_1
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->x:Z

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z

    .line 53
    .line 54
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    :cond_3
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    throw p1
.end method

.method public declared-synchronized u()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/lifecycle/g0;->l()Landroidx/lifecycle/u;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->f:Landroid/content/Context;

    .line 20
    .line 21
    check-cast v0, Landroid/app/Application;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw v0
.end method
