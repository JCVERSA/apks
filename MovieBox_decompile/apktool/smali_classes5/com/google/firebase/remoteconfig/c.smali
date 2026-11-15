.class public Lcom/google/firebase/remoteconfig/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcd/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/c$a;
    }
.end annotation


# static fields
.field private static final j:Lcom/google/android/gms/common/util/Clock;

.field private static final k:Ljava/util/Random;

.field private static final l:Ljava/util/Map;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lcom/google/firebase/f;

.field private final e:Llc/e;

.field private final f:Ljb/b;

.field private final g:Lkc/b;

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/firebase/remoteconfig/c;->j:Lcom/google/android/gms/common/util/Clock;

    .line 6
    .line 7
    new-instance v0, Ljava/util/Random;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/google/firebase/remoteconfig/c;->k:Ljava/util/Random;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/firebase/remoteconfig/c;->l:Ljava/util/Map;

    .line 20
    .line 21
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Llc/e;Ljb/b;Lkc/b;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/remoteconfig/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Llc/e;Ljb/b;Lkc/b;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Llc/e;Ljb/b;Lkc/b;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/c;->i:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 8
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/c;->e:Llc/e;

    .line 9
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/c;->f:Ljb/b;

    .line 10
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/c;->g:Lkc/b;

    .line 11
    invoke-virtual {p3}, Lcom/google/firebase/f;->n()Lcom/google/firebase/m;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/c;->h:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/c$a;->a(Landroid/content/Context;)V

    if-eqz p7, :cond_0

    .line 13
    new-instance p1, Lcom/google/firebase/remoteconfig/b;

    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/b;-><init>(Lcom/google/firebase/remoteconfig/c;)V

    invoke-static {p2, p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public static synthetic b()Lmb/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/remoteconfig/c;->q()Lmb/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic c(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->r(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->h:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "frc"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v0, v1, v2

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    aput-object p1, v1, v0

    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    aput-object p2, v1, p1

    .line 19
    .line 20
    const-string p1, "%s_%s_%s_%s.json"

    .line 21
    .line 22
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/r;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p2, p1}, Lcom/google/firebase/remoteconfig/internal/e;->h(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/r;)Lcom/google/firebase/remoteconfig/internal/e;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method private j(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/m;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/m;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/remoteconfig/internal/m;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/n;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "frc"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    aput-object p2, v0, p1

    .line 14
    .line 15
    const-string p1, "settings"

    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    aput-object p1, v0, p2

    .line 19
    .line 20
    const-string p1, "%s_%s_%s_%s"

    .line 21
    .line 22
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/n;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/internal/n;-><init>(Landroid/content/SharedPreferences;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method private static l(Lcom/google/firebase/f;Ljava/lang/String;Lkc/b;)Lcom/google/firebase/remoteconfig/internal/u;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->p(Lcom/google/firebase/f;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "firebase"

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    new-instance p0, Lcom/google/firebase/remoteconfig/internal/u;

    .line 16
    .line 17
    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/u;-><init>(Lkc/b;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method private n(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)Lbd/e;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lbd/a;->a(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)Lbd/a;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lbd/e;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, v1}, Lbd/e;-><init>(Lcom/google/firebase/remoteconfig/internal/e;Lbd/a;Ljava/util/concurrent/Executor;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private static o(Lcom/google/firebase/f;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "firebase"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->p(Lcom/google/firebase/f;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private static p(Lcom/google/firebase/f;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "[DEFAULT]"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static synthetic q()Lmb/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method private static declared-synchronized r(Z)V
    .locals 3

    .line 1
    const-class v0, Lcom/google/firebase/remoteconfig/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/remoteconfig/c;->l:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/google/firebase/remoteconfig/a;

    .line 25
    .line 26
    invoke-virtual {v2, p0}, Lcom/google/firebase/remoteconfig/a;->x(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ldd/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/c;->e(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/a;->o()Lbd/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lbd/e;->h(Ldd/f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method declared-synchronized d(Lcom/google/firebase/f;Ljava/lang/String;Llc/e;Ljb/b;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/n;Lbd/e;)Lcom/google/firebase/remoteconfig/a;
    .locals 24

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, v9, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    new-instance v15, Lcom/google/firebase/remoteconfig/a;

    .line 15
    .line 16
    iget-object v11, v9, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/remoteconfig/c;->o(Lcom/google/firebase/f;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move-object/from16 v14, p4

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    move-object v14, v1

    .line 29
    :goto_0
    iget-object v6, v9, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 30
    .line 31
    move-object/from16 v1, p0

    .line 32
    .line 33
    move-object/from16 v2, p1

    .line 34
    .line 35
    move-object/from16 v3, p3

    .line 36
    .line 37
    move-object/from16 v4, p9

    .line 38
    .line 39
    move-object/from16 v5, p7

    .line 40
    .line 41
    move-object/from16 v7, p2

    .line 42
    .line 43
    move-object/from16 v8, p11

    .line 44
    .line 45
    invoke-virtual/range {v1 .. v8}, Lcom/google/firebase/remoteconfig/c;->m(Lcom/google/firebase/f;Llc/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/e;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/o;

    .line 46
    .line 47
    .line 48
    move-result-object v22

    .line 49
    move-object v10, v15

    .line 50
    move-object/from16 v12, p1

    .line 51
    .line 52
    move-object/from16 v13, p3

    .line 53
    .line 54
    move-object v1, v15

    .line 55
    move-object/from16 v15, p5

    .line 56
    .line 57
    move-object/from16 v16, p6

    .line 58
    .line 59
    move-object/from16 v17, p7

    .line 60
    .line 61
    move-object/from16 v18, p8

    .line 62
    .line 63
    move-object/from16 v19, p9

    .line 64
    .line 65
    move-object/from16 v20, p10

    .line 66
    .line 67
    move-object/from16 v21, p11

    .line 68
    .line 69
    move-object/from16 v23, p12

    .line 70
    .line 71
    invoke-direct/range {v10 .. v23}, Lcom/google/firebase/remoteconfig/a;-><init>(Landroid/content/Context;Lcom/google/firebase/f;Llc/e;Ljb/b;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/n;Lcom/google/firebase/remoteconfig/internal/o;Lbd/e;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/a;->y()V

    .line 75
    .line 76
    .line 77
    iget-object v2, v9, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    .line 78
    .line 79
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object v2, Lcom/google/firebase/remoteconfig/c;->l:Ljava/util/Map;

    .line 83
    .line 84
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    :goto_1
    iget-object v1, v9, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    .line 91
    .line 92
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/google/firebase/remoteconfig/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return-object v0

    .line 100
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "fetch"

    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;

    .line 5
    .line 6
    .line 7
    move-result-object v7

    .line 8
    const-string v0, "activate"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;

    .line 11
    .line 12
    .line 13
    move-result-object v8

    .line 14
    const-string v0, "defaults"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;

    .line 17
    .line 18
    .line 19
    move-result-object v9

    .line 20
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->h:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Lcom/google/firebase/remoteconfig/c;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/n;

    .line 25
    .line 26
    .line 27
    move-result-object v12

    .line 28
    invoke-direct {p0, v8, v9}, Lcom/google/firebase/remoteconfig/c;->j(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/m;

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->g:Lkc/b;

    .line 35
    .line 36
    invoke-static {v0, p1, v1}, Lcom/google/firebase/remoteconfig/c;->l(Lcom/google/firebase/f;Ljava/lang/String;Lkc/b;)Lcom/google/firebase/remoteconfig/internal/u;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    new-instance v1, Lad/l;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lad/l;-><init>(Lcom/google/firebase/remoteconfig/internal/u;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11, v1}, Lcom/google/firebase/remoteconfig/internal/m;->b(Lcom/google/android/gms/common/util/BiConsumer;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    invoke-direct {p0, v8, v9}, Lcom/google/firebase/remoteconfig/c;->n(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)Lbd/e;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/google/firebase/remoteconfig/c;->e:Llc/e;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/google/firebase/remoteconfig/c;->f:Ljb/b;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    .line 65
    invoke-virtual {p0, p1, v7, v12}, Lcom/google/firebase/remoteconfig/c;->h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    move-object v1, p0

    .line 70
    move-object v3, p1

    .line 71
    invoke-virtual/range {v1 .. v13}, Lcom/google/firebase/remoteconfig/c;->d(Lcom/google/firebase/f;Ljava/lang/String;Llc/e;Ljb/b;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/n;Lbd/e;)Lcom/google/firebase/remoteconfig/a;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    .line 76
    return-object p1

    .line 77
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1
.end method

.method g()Lcom/google/firebase/remoteconfig/a;
    .locals 1

    .line 1
    const-string v0, "firebase"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/c;->e(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method declared-synchronized h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v10, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->e:Llc/e;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/c;->p(Lcom/google/firebase/f;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->g:Lkc/b;

    .line 15
    .line 16
    :goto_0
    move-object v2, v0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    new-instance v0, Lad/m;

    .line 21
    .line 22
    invoke-direct {v0}, Lad/m;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    sget-object v4, Lcom/google/firebase/remoteconfig/c;->j:Lcom/google/android/gms/common/util/Clock;

    .line 29
    .line 30
    sget-object v5, Lcom/google/firebase/remoteconfig/c;->k:Ljava/util/Random;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/firebase/f;->n()Lcom/google/firebase/m;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/firebase/m;->b()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0, p1, p3}, Lcom/google/firebase/remoteconfig/c;->i(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget-object v9, p0, Lcom/google/firebase/remoteconfig/c;->i:Ljava/util/Map;

    .line 47
    .line 48
    move-object v0, v10

    .line 49
    move-object v6, p2

    .line 50
    move-object v8, p3

    .line 51
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;-><init>(Llc/e;Lkc/b;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/util/Clock;Ljava/util/Random;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-object v10

    .line 56
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1
.end method

.method i(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/f;->n()Lcom/google/firebase/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/n;->b()J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/n;->b()J

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    move-object v1, v0

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p2

    .line 26
    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method declared-synchronized m(Lcom/google/firebase/f;Llc/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/e;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/o;
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/o;

    .line 4
    .line 5
    iget-object v10, v1, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    move-object v2, v0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    move-object/from16 v7, p5

    .line 13
    .line 14
    move-object/from16 v8, p6

    .line 15
    .line 16
    move-object/from16 v9, p7

    .line 17
    .line 18
    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/remoteconfig/internal/o;-><init>(Lcom/google/firebase/f;Llc/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/e;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/concurrent/ScheduledExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method
