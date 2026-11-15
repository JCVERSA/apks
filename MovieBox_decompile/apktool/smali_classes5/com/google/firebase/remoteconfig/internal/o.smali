.class public Lcom/google/firebase/remoteconfig/internal/o;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

.field private final c:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

.field private final d:Lcom/google/firebase/f;

.field private final e:Llc/e;

.field private final f:Lcom/google/firebase/remoteconfig/internal/e;

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/firebase/remoteconfig/internal/n;

.field private final j:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Llc/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/e;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v8, v0, Lcom/google/firebase/remoteconfig/internal/o;->a:Ljava/util/Set;

    .line 11
    .line 12
    new-instance v11, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    .line 13
    .line 14
    move-object v1, v11

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move-object v4, p3

    .line 18
    move-object/from16 v5, p4

    .line 19
    .line 20
    move-object/from16 v6, p5

    .line 21
    .line 22
    move-object/from16 v7, p6

    .line 23
    .line 24
    move-object/from16 v9, p7

    .line 25
    .line 26
    move-object/from16 v10, p8

    .line 27
    .line 28
    invoke-direct/range {v1 .. v10}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;-><init>(Lcom/google/firebase/f;Llc/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/e;Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 29
    .line 30
    .line 31
    iput-object v11, v0, Lcom/google/firebase/remoteconfig/internal/o;->b:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    .line 32
    .line 33
    move-object v1, p1

    .line 34
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->d:Lcom/google/firebase/f;

    .line 35
    .line 36
    move-object v1, p3

    .line 37
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->c:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 38
    .line 39
    move-object v1, p2

    .line 40
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->e:Llc/e;

    .line 41
    .line 42
    move-object/from16 v1, p4

    .line 43
    .line 44
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->f:Lcom/google/firebase/remoteconfig/internal/e;

    .line 45
    .line 46
    move-object/from16 v1, p5

    .line 47
    .line 48
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->g:Landroid/content/Context;

    .line 49
    .line 50
    move-object/from16 v1, p6

    .line 51
    .line 52
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->h:Ljava/lang/String;

    .line 53
    .line 54
    move-object/from16 v1, p7

    .line 55
    .line 56
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->i:Lcom/google/firebase/remoteconfig/internal/n;

    .line 57
    .line 58
    move-object/from16 v1, p8

    .line 59
    .line 60
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/o;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    .line 62
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->a:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->b:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method


# virtual methods
.method public declared-synchronized b(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->b:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->z(Z)V

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/o;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method
