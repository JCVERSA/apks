.class public final Landroidx/room/coroutines/ConnectionPoolImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field private final a:Ly3/c;

.field private final b:Landroidx/room/coroutines/Pool;

.field private final c:Landroidx/room/coroutines/Pool;

.field private final d:Ljava/lang/ThreadLocal;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:J

.field private g:Z


# direct methods
.method public constructor <init>(Ly3/c;Ljava/lang/String;)V
    .locals 2

    const-string v0, "driver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->d:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    sget-object v0, Lkotlin/time/Duration;->b:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x1e

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->f:J

    .line 5
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->a:Ly3/c;

    .line 6
    new-instance v0, Landroidx/room/coroutines/Pool;

    new-instance v1, Landroidx/room/coroutines/f;

    invoke-direct {v1, p1, p2}, Landroidx/room/coroutines/f;-><init>(Ly3/c;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->b:Landroidx/room/coroutines/Pool;

    .line 7
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->c:Landroidx/room/coroutines/Pool;

    return-void
.end method

.method public constructor <init>(Ly3/c;Ljava/lang/String;II)V
    .locals 2

    const-string v0, "driver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->d:Ljava/lang/ThreadLocal;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    sget-object v0, Lkotlin/time/Duration;->b:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x1e

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->f:J

    if-lez p3, :cond_1

    if-lez p4, :cond_0

    .line 12
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->a:Ly3/c;

    .line 13
    new-instance v0, Landroidx/room/coroutines/Pool;

    .line 14
    new-instance v1, Landroidx/room/coroutines/d;

    invoke-direct {v1, p1, p2}, Landroidx/room/coroutines/d;-><init>(Ly3/c;Ljava/lang/String;)V

    .line 15
    invoke-direct {v0, p3, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 16
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->b:Landroidx/room/coroutines/Pool;

    .line 17
    new-instance p3, Landroidx/room/coroutines/Pool;

    new-instance v0, Landroidx/room/coroutines/e;

    invoke-direct {v0, p1, p2}, Landroidx/room/coroutines/e;-><init>(Ly3/c;Ljava/lang/String;)V

    invoke-direct {p3, p4, v0}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 18
    iput-object p3, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->c:Landroidx/room/coroutines/Pool;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum number of writers must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum number of readers must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b(Landroidx/room/coroutines/ConnectionPoolImpl;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;->o(Landroidx/room/coroutines/ConnectionPoolImpl;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Ly3/c;Ljava/lang/String;)Ly3/b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;->k(Ly3/c;Ljava/lang/String;)Ly3/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ly3/c;Ljava/lang/String;)Ly3/b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;->l(Ly3/c;Ljava/lang/String;)Ly3/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ly3/c;Ljava/lang/String;)Ly3/b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;->j(Ly3/c;Ljava/lang/String;)Ly3/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method private static final j(Ly3/c;Ljava/lang/String;)Ly3/b;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ly3/c;->open(Ljava/lang/String;)Ly3/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final k(Ly3/c;Ljava/lang/String;)Ly3/b;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ly3/c;->open(Ljava/lang/String;)Ly3/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "PRAGMA query_only = 1"

    .line 6
    .line 7
    invoke-static {p0, p1}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method private static final l(Ly3/c;Ljava/lang/String;)Ly3/b;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ly3/c;->open(Ljava/lang/String;)Ly3/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final m(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 1
    new-instance v0, Landroidx/room/coroutines/c;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/room/coroutines/c;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->d:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    invoke-static {v1, p1}, Lw3/d;->a(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/room/coroutines/c;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method private final n(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "reader"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "writer"

    .line 7
    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "Timed out attempting to acquire a "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " connection."

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 p1, 0xa

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "Writer pool:"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->c:Landroidx/room/coroutines/Pool;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroidx/room/coroutines/Pool;->d(Ljava/lang/StringBuilder;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "Reader pool:"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->b:Landroidx/room/coroutines/Pool;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroidx/room/coroutines/Pool;->d(Ljava/lang/StringBuilder;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v0, 0x5

    .line 77
    :try_start_0
    invoke-static {v0, p1}, Ly3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    .line 78
    .line 79
    .line 80
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 81
    .line 82
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    iget-boolean v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->g:Z

    .line 88
    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    throw p1
.end method

.method private static final o(Landroidx/room/coroutines/ConnectionPoolImpl;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;->n(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->b:Landroidx/room/coroutines/Pool;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/room/coroutines/Pool;->c()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->c:Landroidx/room/coroutines/Pool;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/room/coroutines/Pool;->c()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public e(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 15
    .line 16
    iget v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 29
    .line 30
    invoke-direct {v4, v1, v3}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;-><init>(Landroidx/room/coroutines/ConnectionPoolImpl;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    const/4 v8, 0x3

    .line 43
    const/4 v9, 0x2

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x1

    .line 46
    const/4 v12, 0x0

    .line 47
    if-eqz v6, :cond_4

    .line 48
    .line 49
    if-eq v6, v11, :cond_3

    .line 50
    .line 51
    if-eq v6, v9, :cond_3

    .line 52
    .line 53
    if-eq v6, v8, :cond_2

    .line 54
    .line 55
    if-ne v6, v7, :cond_1

    .line 56
    .line 57
    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 58
    .line 59
    move-object v2, v0

    .line 60
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v4, v0

    .line 65
    check-cast v4, Landroidx/room/coroutines/Pool;

    .line 66
    .line 67
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :catchall_0
    move-exception v0

    .line 73
    :goto_1
    move-object v3, v0

    .line 74
    goto/16 :goto_9

    .line 75
    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 79
    .line 80
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_2
    iget-boolean v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .line 85
    .line 86
    iget-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 89
    .line 90
    iget-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    .line 93
    .line 94
    iget-object v8, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 97
    .line 98
    iget-object v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v9, Landroidx/room/coroutines/Pool;

    .line 101
    .line 102
    iget-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 105
    .line 106
    iget-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v14, Landroidx/room/coroutines/ConnectionPoolImpl;

    .line 109
    .line 110
    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    .line 112
    .line 113
    move-object/from16 v16, v8

    .line 114
    .line 115
    move-object v8, v6

    .line 116
    move-object/from16 v6, v16

    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :catchall_1
    move-exception v0

    .line 121
    move-object v3, v0

    .line 122
    move-object v2, v8

    .line 123
    :goto_2
    move-object v4, v9

    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-direct/range {p0 .. p0}, Landroidx/room/coroutines/ConnectionPoolImpl;->isClosed()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_13

    .line 138
    .line 139
    iget-object v3, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->d:Ljava/lang/ThreadLocal;

    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 146
    .line 147
    if-nez v3, :cond_6

    .line 148
    .line 149
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    sget-object v6, Landroidx/room/coroutines/c;->b:Landroidx/room/coroutines/c$a;

    .line 154
    .line 155
    invoke-interface {v3, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Landroidx/room/coroutines/c;

    .line 160
    .line 161
    if-eqz v3, :cond_5

    .line 162
    .line 163
    invoke-virtual {v3}, Landroidx/room/coroutines/c;->a()Landroidx/room/coroutines/PooledConnectionImpl;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    goto :goto_3

    .line 168
    :cond_5
    move-object v3, v12

    .line 169
    :cond_6
    :goto_3
    if-eqz v3, :cond_b

    .line 170
    .line 171
    if-nez v0, :cond_8

    .line 172
    .line 173
    invoke-virtual {v3}, Landroidx/room/coroutines/PooledConnectionImpl;->l()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_7

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_7
    const-string v0, "Cannot upgrade connection from reader to writer"

    .line 181
    .line 182
    invoke-static {v11, v0}, Ly3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    .line 183
    .line 184
    .line 185
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 186
    .line 187
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_8
    :goto_4
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sget-object v6, Landroidx/room/coroutines/c;->b:Landroidx/room/coroutines/c$a;

    .line 196
    .line 197
    invoke-interface {v0, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-nez v0, :cond_9

    .line 202
    .line 203
    invoke-direct {v1, v3}, Landroidx/room/coroutines/ConnectionPoolImpl;->m(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/coroutines/CoroutineContext;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v6, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;

    .line 208
    .line 209
    invoke-direct {v6, v2, v3, v12}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/room/coroutines/PooledConnectionImpl;Lkotlin/coroutines/Continuation;)V

    .line 210
    .line 211
    .line 212
    iput v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 213
    .line 214
    invoke-static {v0, v6, v4}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-ne v3, v5, :cond_a

    .line 219
    .line 220
    return-object v5

    .line 221
    :cond_9
    iput v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 222
    .line 223
    invoke-interface {v2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-ne v3, v5, :cond_a

    .line 228
    .line 229
    return-object v5

    .line 230
    :cond_a
    :goto_5
    return-object v3

    .line 231
    :cond_b
    if-eqz v0, :cond_c

    .line 232
    .line 233
    iget-object v3, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->b:Landroidx/room/coroutines/Pool;

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_c
    iget-object v3, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->c:Landroidx/room/coroutines/Pool;

    .line 237
    .line 238
    :goto_6
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 239
    .line 240
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 241
    .line 242
    .line 243
    :try_start_2
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    iget-wide v13, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->f:J

    .line 248
    .line 249
    new-instance v15, Landroidx/room/coroutines/g;

    .line 250
    .line 251
    invoke-direct {v15, v1, v0}, Landroidx/room/coroutines/g;-><init>(Landroidx/room/coroutines/ConnectionPoolImpl;Z)V

    .line 252
    .line 253
    .line 254
    iput-object v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 255
    .line 256
    iput-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 257
    .line 258
    iput-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    .line 259
    .line 260
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    .line 261
    .line 262
    iput-object v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    .line 263
    .line 264
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    .line 265
    .line 266
    iput-boolean v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .line 267
    .line 268
    iput v8, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 269
    .line 270
    invoke-virtual {v3, v13, v14, v15, v4}, Landroidx/room/coroutines/Pool;->b(JLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 274
    if-ne v8, v5, :cond_d

    .line 275
    .line 276
    return-object v5

    .line 277
    :cond_d
    move-object v14, v1

    .line 278
    move-object v13, v2

    .line 279
    move-object v2, v6

    .line 280
    move-object/from16 v16, v9

    .line 281
    .line 282
    move-object v9, v3

    .line 283
    move-object v3, v8

    .line 284
    move-object/from16 v8, v16

    .line 285
    .line 286
    :goto_7
    :try_start_3
    check-cast v3, Landroidx/room/coroutines/i;

    .line 287
    .line 288
    invoke-virtual {v3, v8}, Landroidx/room/coroutines/i;->j(Lkotlin/coroutines/CoroutineContext;)Landroidx/room/coroutines/i;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    iget-object v8, v14, Landroidx/room/coroutines/ConnectionPoolImpl;->b:Landroidx/room/coroutines/Pool;

    .line 293
    .line 294
    iget-object v15, v14, Landroidx/room/coroutines/ConnectionPoolImpl;->c:Landroidx/room/coroutines/Pool;

    .line 295
    .line 296
    if-eq v8, v15, :cond_e

    .line 297
    .line 298
    if-eqz v0, :cond_e

    .line 299
    .line 300
    move v10, v11

    .line 301
    :cond_e
    new-instance v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 302
    .line 303
    invoke-direct {v0, v3, v10}, Landroidx/room/coroutines/PooledConnectionImpl;-><init>(Landroidx/room/coroutines/i;Z)V

    .line 304
    .line 305
    .line 306
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 307
    .line 308
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 309
    .line 310
    if-eqz v0, :cond_11

    .line 311
    .line 312
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 313
    .line 314
    invoke-direct {v14, v0}, Landroidx/room/coroutines/ConnectionPoolImpl;->m(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/coroutines/CoroutineContext;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    new-instance v2, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;

    .line 319
    .line 320
    invoke-direct {v2, v13, v6, v12}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 321
    .line 322
    .line 323
    iput-object v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 324
    .line 325
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 326
    .line 327
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    .line 334
    .line 335
    iput v7, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 336
    .line 337
    invoke-static {v0, v2, v4}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 341
    if-ne v3, v5, :cond_f

    .line 342
    .line 343
    return-object v5

    .line 344
    :cond_f
    move-object v2, v6

    .line 345
    move-object v4, v9

    .line 346
    :goto_8
    :try_start_4
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 349
    .line 350
    if-eqz v0, :cond_10

    .line 351
    .line 352
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->n()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->k()Landroidx/room/coroutines/i;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v2}, Landroidx/room/coroutines/i;->k()Landroidx/room/coroutines/i;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->k()Landroidx/room/coroutines/i;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v4, v0}, Landroidx/room/coroutines/Pool;->e(Landroidx/room/coroutines/i;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 367
    .line 368
    .line 369
    :catchall_2
    :cond_10
    return-object v3

    .line 370
    :catchall_3
    move-exception v0

    .line 371
    move-object v3, v0

    .line 372
    move-object v2, v6

    .line 373
    goto/16 :goto_2

    .line 374
    .line 375
    :cond_11
    :try_start_5
    const-string v0, "Required value was null."

    .line 376
    .line 377
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 378
    .line 379
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 383
    :catchall_4
    move-exception v0

    .line 384
    move-object v4, v3

    .line 385
    move-object v2, v6

    .line 386
    goto/16 :goto_1

    .line 387
    .line 388
    :goto_9
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 389
    :catchall_5
    move-exception v0

    .line 390
    move-object v5, v0

    .line 391
    :try_start_7
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 394
    .line 395
    if-eqz v0, :cond_12

    .line 396
    .line 397
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->n()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->k()Landroidx/room/coroutines/i;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2}, Landroidx/room/coroutines/i;->k()Landroidx/room/coroutines/i;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->k()Landroidx/room/coroutines/i;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v4, v0}, Landroidx/room/coroutines/Pool;->e(Landroidx/room/coroutines/i;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 412
    .line 413
    .line 414
    goto :goto_a

    .line 415
    :catchall_6
    move-exception v0

    .line 416
    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 417
    .line 418
    .line 419
    :cond_12
    :goto_a
    throw v5

    .line 420
    :cond_13
    const/16 v0, 0x15

    .line 421
    .line 422
    const-string v2, "Connection pool is closed"

    .line 423
    .line 424
    invoke-static {v0, v2}, Ly3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    .line 425
    .line 426
    .line 427
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 428
    .line 429
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 430
    .line 431
    .line 432
    throw v0
.end method
