.class public final Landroidx/datastore/core/DataStoreImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/datastore/core/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/DataStoreImpl$a;,
        Landroidx/datastore/core/DataStoreImpl$InitDataStore;
    }
.end annotation


# static fields
.field public static final m:Landroidx/datastore/core/DataStoreImpl$a;


# instance fields
.field private final a:Landroidx/datastore/core/w;

.field private final b:Landroidx/datastore/core/d;

.field private final c:Lkotlinx/coroutines/n0;

.field private final d:Lkotlinx/coroutines/flow/a;

.field private final e:Lkotlinx/coroutines/sync/a;

.field private f:I

.field private g:Lkotlinx/coroutines/t1;

.field private final h:Landroidx/datastore/core/i;

.field private final i:Landroidx/datastore/core/DataStoreImpl$InitDataStore;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Landroidx/datastore/core/SimpleActor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/datastore/core/DataStoreImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/datastore/core/DataStoreImpl;->m:Landroidx/datastore/core/DataStoreImpl$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/datastore/core/w;Ljava/util/List;Landroidx/datastore/core/d;Lkotlinx/coroutines/n0;)V
    .locals 2

    .line 1
    const-string v0, "storage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "initTasksList"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "corruptionHandler"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "scope"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->a:Landroidx/datastore/core/w;

    .line 25
    .line 26
    iput-object p3, p0, Landroidx/datastore/core/DataStoreImpl;->b:Landroidx/datastore/core/d;

    .line 27
    .line 28
    iput-object p4, p0, Landroidx/datastore/core/DataStoreImpl;->c:Lkotlinx/coroutines/n0;

    .line 29
    .line 30
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1;

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    invoke-direct {p1, p0, p3}, Landroidx/datastore/core/DataStoreImpl$data$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->d:Lkotlinx/coroutines/flow/a;

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-static {p1, v0, p3}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->e:Lkotlinx/coroutines/sync/a;

    .line 49
    .line 50
    new-instance p1, Landroidx/datastore/core/i;

    .line 51
    .line 52
    invoke-direct {p1}, Landroidx/datastore/core/i;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/i;

    .line 56
    .line 57
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    .line 58
    .line 59
    invoke-direct {p1, p0, p2}, Landroidx/datastore/core/DataStoreImpl$InitDataStore;-><init>(Landroidx/datastore/core/DataStoreImpl;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->i:Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    .line 63
    .line 64
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$storageConnectionDelegate$1;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Landroidx/datastore/core/DataStoreImpl$storageConnectionDelegate$1;-><init>(Landroidx/datastore/core/DataStoreImpl;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->j:Lkotlin/Lazy;

    .line 74
    .line 75
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$coordinator$2;

    .line 76
    .line 77
    invoke-direct {p1, p0}, Landroidx/datastore/core/DataStoreImpl$coordinator$2;-><init>(Landroidx/datastore/core/DataStoreImpl;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->k:Lkotlin/Lazy;

    .line 85
    .line 86
    new-instance p1, Landroidx/datastore/core/SimpleActor;

    .line 87
    .line 88
    new-instance p2, Landroidx/datastore/core/DataStoreImpl$writeActor$1;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Landroidx/datastore/core/DataStoreImpl$writeActor$1;-><init>(Landroidx/datastore/core/DataStoreImpl;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Landroidx/datastore/core/DataStoreImpl$writeActor$2;->INSTANCE:Landroidx/datastore/core/DataStoreImpl$writeActor$2;

    .line 94
    .line 95
    new-instance v1, Landroidx/datastore/core/DataStoreImpl$writeActor$3;

    .line 96
    .line 97
    invoke-direct {v1, p0, p3}, Landroidx/datastore/core/DataStoreImpl$writeActor$3;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, p4, p2, v0, v1}, Landroidx/datastore/core/SimpleActor;-><init>(Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->l:Landroidx/datastore/core/SimpleActor;

    .line 104
    .line 105
    return-void
.end method

.method private final A(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/datastore/core/DataStoreImpl;->r()Landroidx/datastore/core/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p2, p1, v2}, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p3}, Landroidx/datastore/core/m;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public static final synthetic b(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/core/DataStoreImpl;->p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/m;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/core/DataStoreImpl;->r()Landroidx/datastore/core/m;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/DataStoreImpl$InitDataStore;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl;->i:Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/w;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl;->a:Landroidx/datastore/core/w;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Landroidx/datastore/core/DataStoreImpl;)Lkotlin/Lazy;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/SimpleActor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl;->l:Landroidx/datastore/core/SimpleActor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Landroidx/datastore/core/DataStoreImpl;Landroidx/datastore/core/p$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl;->t(Landroidx/datastore/core/p$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/core/DataStoreImpl;->u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/core/DataStoreImpl;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl;->w(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/core/DataStoreImpl;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl;->y(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl;->z(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lkotlinx/coroutines/sync/a;

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroidx/datastore/core/DataStoreImpl;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->e:Lkotlinx/coroutines/sync/a;

    .line 63
    .line 64
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->L$1:Ljava/lang/Object;

    .line 67
    .line 68
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->label:I

    .line 69
    .line 70
    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/a;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-ne v0, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    move-object v0, p0

    .line 78
    move-object v1, p1

    .line 79
    :goto_1
    :try_start_0
    iget p1, v0, Landroidx/datastore/core/DataStoreImpl;->f:I

    .line 80
    .line 81
    add-int/lit8 p1, p1, -0x1

    .line 82
    .line 83
    iput p1, v0, Landroidx/datastore/core/DataStoreImpl;->f:I

    .line 84
    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl;->g:Lkotlinx/coroutines/t1;

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    :goto_2
    iput-object v4, v0, Landroidx/datastore/core/DataStoreImpl;->g:Lkotlinx/coroutines/t1;

    .line 98
    .line 99
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p1

    .line 107
    :goto_3
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method private final q(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-direct {p0}, Landroidx/datastore/core/DataStoreImpl;->r()Landroidx/datastore/core/m;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p2, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0, p3}, Landroidx/datastore/core/m;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private final r()Landroidx/datastore/core/m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/datastore/core/m;

    .line 8
    .line 9
    return-object v0
.end method

.method private final t(Landroidx/datastore/core/p$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lkotlinx/coroutines/w;

    .line 47
    .line 48
    :goto_1
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :catchall_0
    move-exception p2

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$2:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lkotlinx/coroutines/w;

    .line 67
    .line 68
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$1:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .line 71
    .line 72
    iget-object v4, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Landroidx/datastore/core/p$a;

    .line 75
    .line 76
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    move-object p2, p1

    .line 80
    move-object p1, v4

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Lkotlinx/coroutines/w;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/datastore/core/p$a;->a()Lkotlinx/coroutines/w;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 95
    .line 96
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/i;

    .line 97
    .line 98
    invoke-virtual {v2}, Landroidx/datastore/core/i;->a()Landroidx/datastore/core/v;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    instance-of v6, v2, Landroidx/datastore/core/e;

    .line 103
    .line 104
    if-eqz v6, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/datastore/core/p$a;->d()Lkotlin/jvm/functions/Function2;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p1}, Landroidx/datastore/core/p$a;->b()Lkotlin/coroutines/CoroutineContext;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    iput v5, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    .line 117
    .line 118
    invoke-direct {p0, v2, p1, v0}, Landroidx/datastore/core/DataStoreImpl;->A(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p1, v1, :cond_5

    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_5
    move-object v7, p2

    .line 126
    move-object p2, p1

    .line 127
    move-object p1, v7

    .line 128
    goto :goto_4

    .line 129
    :catchall_1
    move-exception p1

    .line 130
    move-object v7, p2

    .line 131
    move-object p2, p1

    .line 132
    move-object p1, v7

    .line 133
    goto :goto_5

    .line 134
    :cond_6
    instance-of v6, v2, Landroidx/datastore/core/r;

    .line 135
    .line 136
    if-eqz v6, :cond_7

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    instance-of v5, v2, Landroidx/datastore/core/y;

    .line 140
    .line 141
    :goto_2
    if-eqz v5, :cond_a

    .line 142
    .line 143
    invoke-virtual {p1}, Landroidx/datastore/core/p$a;->c()Landroidx/datastore/core/v;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-ne v2, v5, :cond_9

    .line 148
    .line 149
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$1:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$2:Ljava/lang/Object;

    .line 154
    .line 155
    iput v4, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    .line 156
    .line 157
    invoke-direct {p0, v0}, Landroidx/datastore/core/DataStoreImpl;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    if-ne v2, v1, :cond_8

    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_8
    move-object v2, p0

    .line 165
    :goto_3
    invoke-virtual {p1}, Landroidx/datastore/core/p$a;->d()Lkotlin/jvm/functions/Function2;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {p1}, Landroidx/datastore/core/p$a;->b()Lkotlin/coroutines/CoroutineContext;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$0:Ljava/lang/Object;

    .line 174
    .line 175
    const/4 v5, 0x0

    .line 176
    iput-object v5, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$1:Ljava/lang/Object;

    .line 177
    .line 178
    iput-object v5, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->L$2:Ljava/lang/Object;

    .line 179
    .line 180
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->label:I

    .line 181
    .line 182
    invoke-direct {v2, v4, p1, v0}, Landroidx/datastore/core/DataStoreImpl;->A(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    if-ne p1, v1, :cond_5

    .line 187
    .line 188
    return-object v1

    .line 189
    :goto_4
    :try_start_3
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    goto :goto_6

    .line 194
    :cond_9
    :try_start_4
    const-string p1, "null cannot be cast to non-null type androidx.datastore.core.ReadException<T of androidx.datastore.core.DataStoreImpl.handleUpdate$lambda$2>"

    .line 195
    .line 196
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    check-cast v2, Landroidx/datastore/core/r;

    .line 200
    .line 201
    invoke-virtual {v2}, Landroidx/datastore/core/r;->b()Ljava/lang/Throwable;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    throw p1

    .line 206
    :cond_a
    instance-of p1, v2, Landroidx/datastore/core/k;

    .line 207
    .line 208
    if-eqz p1, :cond_b

    .line 209
    .line 210
    check-cast v2, Landroidx/datastore/core/k;

    .line 211
    .line 212
    invoke-virtual {v2}, Landroidx/datastore/core/k;->b()Ljava/lang/Throwable;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    throw p1

    .line 217
    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 218
    .line 219
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 220
    .line 221
    .line 222
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 223
    :goto_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 224
    .line 225
    invoke-static {p2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    :goto_6
    invoke-static {p1, p2}, Lkotlinx/coroutines/y;->c(Lkotlinx/coroutines/w;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 237
    .line 238
    return-object p1
.end method

.method private final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lkotlinx/coroutines/sync/a;

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroidx/datastore/core/DataStoreImpl;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->e:Lkotlinx/coroutines/sync/a;

    .line 63
    .line 64
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->L$1:Ljava/lang/Object;

    .line 67
    .line 68
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->label:I

    .line 69
    .line 70
    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/a;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-ne v0, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    move-object v0, p0

    .line 78
    move-object v1, p1

    .line 79
    :goto_1
    :try_start_0
    iget p1, v0, Landroidx/datastore/core/DataStoreImpl;->f:I

    .line 80
    .line 81
    add-int/2addr p1, v3

    .line 82
    iput p1, v0, Landroidx/datastore/core/DataStoreImpl;->f:I

    .line 83
    .line 84
    if-ne p1, v3, :cond_4

    .line 85
    .line 86
    iget-object v5, v0, Landroidx/datastore/core/DataStoreImpl;->c:Lkotlinx/coroutines/n0;

    .line 87
    .line 88
    new-instance v8, Landroidx/datastore/core/DataStoreImpl$incrementCollector$2$1;

    .line 89
    .line 90
    invoke-direct {v8, v0, v4}, Landroidx/datastore/core/DataStoreImpl$incrementCollector$2$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 91
    .line 92
    .line 93
    const/4 v9, 0x3

    .line 94
    const/4 v10, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl;->g:Lkotlinx/coroutines/t1;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p1

    .line 114
    :goto_3
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method private final v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->I$0:I

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroidx/datastore/core/DataStoreImpl;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Landroidx/datastore/core/DataStoreImpl;->r()Landroidx/datastore/core/m;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    iput v4, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    .line 79
    .line 80
    invoke-interface {p1, v0}, Landroidx/datastore/core/m;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_4

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_4
    move-object v2, p0

    .line 88
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    :try_start_1
    iget-object v4, v2, Landroidx/datastore/core/DataStoreImpl;->i:Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    .line 95
    .line 96
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    iput p1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->I$0:I

    .line 99
    .line 100
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->label:I

    .line 101
    .line 102
    invoke-virtual {v4, v0}, Landroidx/datastore/core/RunOnce;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    if-ne p1, v1, :cond_5

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p1

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    move v1, p1

    .line 114
    move-object p1, v0

    .line 115
    move-object v0, v2

    .line 116
    :goto_3
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/i;

    .line 117
    .line 118
    new-instance v2, Landroidx/datastore/core/r;

    .line 119
    .line 120
    invoke-direct {v2, p1, v1}, Landroidx/datastore/core/r;-><init>(Ljava/lang/Throwable;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroidx/datastore/core/i;->c(Landroidx/datastore/core/v;)Landroidx/datastore/core/v;

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method private final w(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Landroidx/datastore/core/DataStoreImpl;

    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Landroidx/datastore/core/DataStoreImpl;

    .line 64
    .line 65
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_3
    iget-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->Z$0:Z

    .line 71
    .line 72
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$1:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Landroidx/datastore/core/v;

    .line 75
    .line 76
    iget-object v5, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Landroidx/datastore/core/DataStoreImpl;

    .line 79
    .line 80
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object v8, p2

    .line 84
    move p2, p1

    .line 85
    move-object p1, v5

    .line 86
    move-object v5, v2

    .line 87
    move-object v2, v8

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/i;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroidx/datastore/core/i;->a()Landroidx/datastore/core/v;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    instance-of p2, v2, Landroidx/datastore/core/y;

    .line 99
    .line 100
    if-nez p2, :cond_c

    .line 101
    .line 102
    invoke-direct {p0}, Landroidx/datastore/core/DataStoreImpl;->r()Landroidx/datastore/core/m;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$1:Ljava/lang/Object;

    .line 109
    .line 110
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->Z$0:Z

    .line 111
    .line 112
    iput v5, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    .line 113
    .line 114
    invoke-interface {p2, v0}, Landroidx/datastore/core/m;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-ne p2, v1, :cond_5

    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_5
    move-object v5, v2

    .line 122
    move-object v2, p2

    .line 123
    move p2, p1

    .line 124
    move-object p1, p0

    .line 125
    :goto_1
    check-cast v2, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    instance-of v6, v5, Landroidx/datastore/core/e;

    .line 132
    .line 133
    if-eqz v6, :cond_6

    .line 134
    .line 135
    invoke-virtual {v5}, Landroidx/datastore/core/v;->a()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    goto :goto_2

    .line 140
    :cond_6
    const/4 v7, -0x1

    .line 141
    :goto_2
    if-eqz v6, :cond_7

    .line 142
    .line 143
    if-ne v2, v7, :cond_7

    .line 144
    .line 145
    return-object v5

    .line 146
    :cond_7
    const/4 v2, 0x0

    .line 147
    if-eqz p2, :cond_9

    .line 148
    .line 149
    invoke-direct {p1}, Landroidx/datastore/core/DataStoreImpl;->r()Landroidx/datastore/core/m;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    new-instance v3, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$3;

    .line 154
    .line 155
    invoke-direct {v3, p1, v2}, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$3;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 156
    .line 157
    .line 158
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$1:Ljava/lang/Object;

    .line 161
    .line 162
    iput v4, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    .line 163
    .line 164
    invoke-interface {p2, v3, v0}, Landroidx/datastore/core/m;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    if-ne p2, v1, :cond_8

    .line 169
    .line 170
    return-object v1

    .line 171
    :cond_8
    :goto_3
    check-cast p2, Lkotlin/Pair;

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_9
    invoke-direct {p1}, Landroidx/datastore/core/DataStoreImpl;->r()Landroidx/datastore/core/m;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$4;

    .line 179
    .line 180
    invoke-direct {v4, p1, v7, v2}, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$4;-><init>(Landroidx/datastore/core/DataStoreImpl;ILkotlin/coroutines/Continuation;)V

    .line 181
    .line 182
    .line 183
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$0:Ljava/lang/Object;

    .line 184
    .line 185
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->L$1:Ljava/lang/Object;

    .line 186
    .line 187
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->label:I

    .line 188
    .line 189
    invoke-interface {p2, v4, v0}, Landroidx/datastore/core/m;->d(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    if-ne p2, v1, :cond_a

    .line 194
    .line 195
    return-object v1

    .line 196
    :cond_a
    :goto_4
    check-cast p2, Lkotlin/Pair;

    .line 197
    .line 198
    :goto_5
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Landroidx/datastore/core/v;

    .line 203
    .line 204
    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Ljava/lang/Boolean;

    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_b

    .line 215
    .line 216
    iget-object p1, p1, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/i;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroidx/datastore/core/i;->c(Landroidx/datastore/core/v;)Landroidx/datastore/core/v;

    .line 219
    .line 220
    .line 221
    :cond_b
    return-object v0

    .line 222
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 223
    .line 224
    const-string p2, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 225
    .line 226
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p1
.end method

.method private final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl;->s()Landroidx/datastore/core/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/datastore/core/StorageConnectionKt;->a(Landroidx/datastore/core/x;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private final y(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    packed-switch v2, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :pswitch_0
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$2:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 50
    .line 51
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 54
    .line 55
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroidx/datastore/core/CorruptionException;

    .line 58
    .line 59
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_a

    .line 63
    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto/16 :goto_b

    .line 66
    .line 67
    :pswitch_1
    iget-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .line 68
    .line 69
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$3:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    .line 73
    iget-object v3, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$2:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    iget-object v6, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v6, Landroidx/datastore/core/CorruptionException;

    .line 80
    .line 81
    iget-object v7, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v7, Landroidx/datastore/core/DataStoreImpl;

    .line 84
    .line 85
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    move-object v8, v3

    .line 89
    move-object v3, v2

    .line 90
    move-object v2, v8

    .line 91
    goto/16 :goto_9

    .line 92
    .line 93
    :pswitch_2
    iget-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .line 94
    .line 95
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .line 98
    .line 99
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .line 101
    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :catch_0
    move-exception p2

    .line 105
    move-object v7, v2

    .line 106
    goto/16 :goto_8

    .line 107
    .line 108
    :pswitch_3
    iget-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .line 109
    .line 110
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .line 113
    .line 114
    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    .line 116
    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :pswitch_4
    iget p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->I$0:I

    .line 120
    .line 121
    iget-boolean v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .line 122
    .line 123
    iget-object v3, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    .line 124
    .line 125
    iget-object v6, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v6, Landroidx/datastore/core/DataStoreImpl;

    .line 128
    .line 129
    :try_start_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_3 .. :try_end_3} :catch_1

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :catch_1
    move-exception p2

    .line 134
    move p1, v2

    .line 135
    :goto_1
    move-object v7, v6

    .line 136
    goto/16 :goto_8

    .line 137
    .line 138
    :pswitch_5
    iget-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .line 139
    .line 140
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v2, Landroidx/datastore/core/DataStoreImpl;

    .line 143
    .line 144
    :try_start_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_4
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_4 .. :try_end_4} :catch_0

    .line 145
    .line 146
    .line 147
    move-object v6, v2

    .line 148
    goto :goto_2

    .line 149
    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    :try_start_5
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 155
    .line 156
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .line 157
    .line 158
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    .line 159
    .line 160
    invoke-direct {p0, v0}, Landroidx/datastore/core/DataStoreImpl;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2
    :try_end_5
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_5 .. :try_end_5} :catch_3

    .line 164
    if-ne p2, v1, :cond_1

    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_1
    move-object v6, p0

    .line 168
    :goto_2
    if-eqz p2, :cond_2

    .line 169
    .line 170
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    goto :goto_3

    .line 175
    :catch_2
    move-exception p2

    .line 176
    goto :goto_1

    .line 177
    :cond_2
    move v2, v5

    .line 178
    :goto_3
    invoke-direct {v6}, Landroidx/datastore/core/DataStoreImpl;->r()Landroidx/datastore/core/m;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    iput-object v6, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    .line 185
    .line 186
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .line 187
    .line 188
    iput v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->I$0:I

    .line 189
    .line 190
    const/4 v7, 0x2

    .line 191
    iput v7, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    .line 192
    .line 193
    invoke-interface {v3, v0}, Landroidx/datastore/core/m;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3
    :try_end_6
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_6 .. :try_end_6} :catch_2

    .line 197
    if-ne v3, v1, :cond_3

    .line 198
    .line 199
    return-object v1

    .line 200
    :cond_3
    move v8, v2

    .line 201
    move v2, p1

    .line 202
    move p1, v8

    .line 203
    move-object v9, v3

    .line 204
    move-object v3, p2

    .line 205
    move-object p2, v9

    .line 206
    :goto_4
    :try_start_7
    check-cast p2, Ljava/lang/Number;

    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    new-instance v7, Landroidx/datastore/core/e;

    .line 213
    .line 214
    invoke-direct {v7, v3, p1, p2}, Landroidx/datastore/core/e;-><init>(Ljava/lang/Object;II)V
    :try_end_7
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_7 .. :try_end_7} :catch_1

    .line 215
    .line 216
    .line 217
    goto :goto_7

    .line 218
    :catch_3
    move-exception p2

    .line 219
    move-object v7, p0

    .line 220
    goto :goto_8

    .line 221
    :cond_4
    :try_start_8
    invoke-direct {p0}, Landroidx/datastore/core/DataStoreImpl;->r()Landroidx/datastore/core/m;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 226
    .line 227
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .line 228
    .line 229
    const/4 v2, 0x3

    .line 230
    iput v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    .line 231
    .line 232
    invoke-interface {p2, v0}, Landroidx/datastore/core/m;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p2
    :try_end_8
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_8 .. :try_end_8} :catch_3

    .line 236
    if-ne p2, v1, :cond_5

    .line 237
    .line 238
    return-object v1

    .line 239
    :cond_5
    move-object v2, p0

    .line 240
    :goto_5
    :try_start_9
    check-cast p2, Ljava/lang/Number;

    .line 241
    .line 242
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    invoke-direct {v2}, Landroidx/datastore/core/DataStoreImpl;->r()Landroidx/datastore/core/m;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    new-instance v6, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$2;

    .line 251
    .line 252
    invoke-direct {v6, v2, p2, v4}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$2;-><init>(Landroidx/datastore/core/DataStoreImpl;ILkotlin/coroutines/Continuation;)V

    .line 253
    .line 254
    .line 255
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 256
    .line 257
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .line 258
    .line 259
    const/4 p2, 0x4

    .line 260
    iput p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    .line 261
    .line 262
    invoke-interface {v3, v6, v0}, Landroidx/datastore/core/m;->d(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    if-ne p2, v1, :cond_6

    .line 267
    .line 268
    return-object v1

    .line 269
    :cond_6
    :goto_6
    move-object v7, p2

    .line 270
    check-cast v7, Landroidx/datastore/core/e;
    :try_end_9
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_9 .. :try_end_9} :catch_0

    .line 271
    .line 272
    :goto_7
    return-object v7

    .line 273
    :goto_8
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 274
    .line 275
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 276
    .line 277
    .line 278
    iget-object v3, v7, Landroidx/datastore/core/DataStoreImpl;->b:Landroidx/datastore/core/d;

    .line 279
    .line 280
    iput-object v7, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 281
    .line 282
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    .line 283
    .line 284
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$2:Ljava/lang/Object;

    .line 285
    .line 286
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$3:Ljava/lang/Object;

    .line 287
    .line 288
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->Z$0:Z

    .line 289
    .line 290
    const/4 v6, 0x5

    .line 291
    iput v6, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    .line 292
    .line 293
    invoke-interface {v3, p2, v0}, Landroidx/datastore/core/d;->a(Landroidx/datastore/core/CorruptionException;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    if-ne v3, v1, :cond_7

    .line 298
    .line 299
    return-object v1

    .line 300
    :cond_7
    move-object v6, p2

    .line 301
    move-object p2, v3

    .line 302
    move-object v3, v2

    .line 303
    :goto_9
    iput-object p2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 304
    .line 305
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 306
    .line 307
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 308
    .line 309
    .line 310
    :try_start_a
    new-instance v3, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;

    .line 311
    .line 312
    invoke-direct {v3, v2, v7, p2, v4}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    .line 313
    .line 314
    .line 315
    iput-object v6, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    .line 316
    .line 317
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    .line 318
    .line 319
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$2:Ljava/lang/Object;

    .line 320
    .line 321
    iput-object v4, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->L$3:Ljava/lang/Object;

    .line 322
    .line 323
    const/4 v4, 0x6

    .line 324
    iput v4, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->label:I

    .line 325
    .line 326
    invoke-direct {v7, p1, v3, v0}, Landroidx/datastore/core/DataStoreImpl;->q(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 330
    if-ne p1, v1, :cond_8

    .line 331
    .line 332
    return-object v1

    .line 333
    :cond_8
    move-object p1, p2

    .line 334
    move-object v1, v2

    .line 335
    :goto_a
    new-instance p2, Landroidx/datastore/core/e;

    .line 336
    .line 337
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 338
    .line 339
    if-eqz v0, :cond_9

    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    :cond_9
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 346
    .line 347
    invoke-direct {p2, v0, v5, p1}, Landroidx/datastore/core/e;-><init>(Ljava/lang/Object;II)V

    .line 348
    .line 349
    .line 350
    return-object p2

    .line 351
    :catchall_1
    move-exception p1

    .line 352
    move-object v0, v6

    .line 353
    :goto_b
    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 354
    .line 355
    .line 356
    throw v0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final z(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->c:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/coroutines/n0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/datastore/core/DataStoreImpl$readState$2;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, Landroidx/datastore/core/DataStoreImpl$readState$2;-><init>(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method


# virtual methods
.method public final B(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p3, Landroidx/datastore/core/DataStoreImpl$writeData$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/datastore/core/DataStoreImpl$writeData$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 58
    .line 59
    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl;->s()Landroidx/datastore/core/x;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    new-instance v10, Landroidx/datastore/core/DataStoreImpl$writeData$2;

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    move-object v4, v10

    .line 70
    move-object v5, p3

    .line 71
    move-object v6, p0

    .line 72
    move-object v7, p1

    .line 73
    move v8, p2

    .line 74
    invoke-direct/range {v4 .. v9}, Landroidx/datastore/core/DataStoreImpl$writeData$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/datastore/core/DataStoreImpl;Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    iput-object p3, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->label:I

    .line 80
    .line 81
    invoke-interface {v2, v10, v0}, Landroidx/datastore/core/x;->b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v1, :cond_3

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_3
    move-object p1, p3

    .line 89
    :goto_1
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1
.end method

.method public a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/datastore/core/a0$a$a;->a:Landroidx/datastore/core/a0$a$a;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/datastore/core/a0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroidx/datastore/core/a0;->a(Landroidx/datastore/core/g;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v1, Landroidx/datastore/core/a0;

    .line 19
    .line 20
    invoke-direct {v1, v0, p0}, Landroidx/datastore/core/a0;-><init>(Landroidx/datastore/core/a0;Landroidx/datastore/core/DataStoreImpl;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$updateData$2;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v0, p0, p1, v2}, Landroidx/datastore/core/DataStoreImpl$updateData$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public getData()Lkotlinx/coroutines/flow/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->d:Lkotlinx/coroutines/flow/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Landroidx/datastore/core/x;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/datastore/core/x;

    .line 8
    .line 9
    return-object v0
.end method
