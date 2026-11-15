.class public final Landroidx/compose/runtime/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/runtime/y;
.implements Landroidx/compose/runtime/d2;
.implements Landroidx/compose/runtime/w1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/o$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/runtime/m;

.field private final b:Landroidx/compose/runtime/f;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/Set;

.field private final f:Landroidx/compose/runtime/j2;

.field private final g:Landroidx/compose/runtime/collection/e;

.field private final h:Landroidx/collection/MutableScatterSet;

.field private final i:Landroidx/collection/MutableScatterSet;

.field private final j:Landroidx/compose/runtime/collection/e;

.field private final k:Ls/a;

.field private final l:Ls/a;

.field private final m:Landroidx/compose/runtime/collection/e;

.field private n:Landroidx/compose/runtime/collection/e;

.field private o:Z

.field private p:Landroidx/compose/runtime/o;

.field private q:I

.field private final r:Landroidx/compose/runtime/u;

.field private final s:Landroidx/compose/runtime/ComposerImpl;

.field private final t:Lkotlin/coroutines/CoroutineContext;

.field private final u:Z

.field private v:Z

.field private w:Lkotlin/jvm/functions/Function2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/m;Landroidx/compose/runtime/f;Lkotlin/coroutines/CoroutineContext;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/runtime/o;->a:Landroidx/compose/runtime/m;

    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/o;->b:Landroidx/compose/runtime/f;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroidx/collection/MutableScatterSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->l()Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 7
    new-instance v7, Landroidx/compose/runtime/j2;

    invoke-direct {v7}, Landroidx/compose/runtime/j2;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroidx/compose/runtime/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Landroidx/compose/runtime/j2;->i()V

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/m;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Landroidx/compose/runtime/j2;->j()V

    .line 10
    :cond_1
    iput-object v7, p0, Landroidx/compose/runtime/o;->f:Landroidx/compose/runtime/j2;

    .line 11
    new-instance v0, Landroidx/compose/runtime/collection/e;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/e;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 12
    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/o;->h:Landroidx/collection/MutableScatterSet;

    .line 13
    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/o;->i:Landroidx/collection/MutableScatterSet;

    .line 14
    new-instance v0, Landroidx/compose/runtime/collection/e;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/e;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 15
    new-instance v9, Ls/a;

    invoke-direct {v9}, Ls/a;-><init>()V

    iput-object v9, p0, Landroidx/compose/runtime/o;->k:Ls/a;

    .line 16
    new-instance v10, Ls/a;

    invoke-direct {v10}, Ls/a;-><init>()V

    iput-object v10, p0, Landroidx/compose/runtime/o;->l:Ls/a;

    .line 17
    new-instance v0, Landroidx/compose/runtime/collection/e;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/e;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/o;->m:Landroidx/compose/runtime/collection/e;

    .line 18
    new-instance v0, Landroidx/compose/runtime/collection/e;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/e;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 19
    new-instance v0, Landroidx/compose/runtime/u;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v1}, Landroidx/compose/runtime/u;-><init>(Landroidx/compose/runtime/tooling/c;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/o;->r:Landroidx/compose/runtime/u;

    .line 20
    new-instance v0, Landroidx/compose/runtime/ComposerImpl;

    move-object v4, v0

    move-object v5, p2

    move-object v6, p1

    move-object v11, p0

    invoke-direct/range {v4 .. v11}, Landroidx/compose/runtime/ComposerImpl;-><init>(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m;Landroidx/compose/runtime/j2;Ljava/util/Set;Ls/a;Ls/a;Landroidx/compose/runtime/y;)V

    .line 21
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/m;->n(Landroidx/compose/runtime/i;)V

    .line 22
    iput-object v0, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 23
    iput-object p3, p0, Landroidx/compose/runtime/o;->t:Lkotlin/coroutines/CoroutineContext;

    .line 24
    instance-of p1, p1, Landroidx/compose/runtime/Recomposer;

    iput-boolean p1, p0, Landroidx/compose/runtime/o;->u:Z

    sget-object p1, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->a:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->a()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/o;->w:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/m;Landroidx/compose/runtime/f;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/o;-><init>(Landroidx/compose/runtime/m;Landroidx/compose/runtime/f;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method private final A(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/o;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "The composition is disposed"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Landroidx/compose/runtime/o;->w:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/o;->a:Landroidx/compose/runtime/m;

    .line 13
    .line 14
    invoke-virtual {v0, p0, p1}, Landroidx/compose/runtime/m;->a(Landroidx/compose/runtime/y;Lkotlin/jvm/functions/Function2;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final B()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/p;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/runtime/p;->c()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    instance-of v1, v0, Ljava/util/Set;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    check-cast v0, Ljava/util/Set;

    .line 29
    .line 30
    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/o;->x(Ljava/util/Set;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    check-cast v0, [Ljava/util/Set;

    .line 39
    .line 40
    array-length v1, v0

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-ge v3, v1, :cond_3

    .line 43
    .line 44
    aget-object v4, v0, v3

    .line 45
    .line 46
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/o;->x(Ljava/util/Set;Z)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "corrupt pendingModifications drain: "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Landroidx/compose/runtime/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Landroidx/compose/runtime/k;->s(Ljava/lang/String;)Ljava/lang/Void;

    .line 72
    .line 73
    .line 74
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 75
    .line 76
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_2
    const-string v0, "pending composition has not been applied"

    .line 81
    .line 82
    invoke-static {v0}, Landroidx/compose/runtime/k;->s(Ljava/lang/String;)Ljava/lang/Void;

    .line 83
    .line 84
    .line 85
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 86
    .line 87
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_3
    :goto_1
    return-void
.end method

.method private final C()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroidx/compose/runtime/p;->c()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    instance-of v1, v0, Ljava/util/Set;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Ljava/util/Set;

    .line 24
    .line 25
    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/o;->x(Ljava/util/Set;Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    check-cast v0, [Ljava/util/Set;

    .line 34
    .line 35
    array-length v1, v0

    .line 36
    move v3, v2

    .line 37
    :goto_0
    if-ge v3, v1, :cond_3

    .line 38
    .line 39
    aget-object v4, v0, v3

    .line 40
    .line 41
    invoke-direct {p0, v4, v2}, Landroidx/compose/runtime/o;->x(Ljava/util/Set;Z)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-string v0, "calling recordModificationsOf and applyChanges concurrently is not supported"

    .line 50
    .line 51
    invoke-static {v0}, Landroidx/compose/runtime/k;->s(Ljava/lang/String;)Ljava/lang/Void;

    .line 52
    .line 53
    .line 54
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 55
    .line 56
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "corrupt pendingModifications drain: "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroidx/compose/runtime/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Landroidx/compose/runtime/k;->s(Ljava/lang/String;)Ljava/lang/Void;

    .line 80
    .line 81
    .line 82
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 83
    .line 84
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_3
    :goto_1
    return-void
.end method

.method private final D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->z0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final F(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/c;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v4

    .line 12
    :try_start_0
    iget-object v5, v1, Landroidx/compose/runtime/o;->p:Landroidx/compose/runtime/o;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    iget-object v7, v1, Landroidx/compose/runtime/o;->f:Landroidx/compose/runtime/j2;

    .line 18
    .line 19
    iget v8, v1, Landroidx/compose/runtime/o;->q:I

    .line 20
    .line 21
    invoke-virtual {v7, v8, v2}, Landroidx/compose/runtime/j2;->v(ILandroidx/compose/runtime/c;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v5, v6

    .line 29
    :goto_0
    move-object v6, v5

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto/16 :goto_7

    .line 33
    .line 34
    :cond_1
    :goto_1
    if-nez v6, :cond_b

    .line 35
    .line 36
    invoke-direct {v1, v0, v3}, Landroidx/compose/runtime/o;->L(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    monitor-exit v4

    .line 45
    return-object v0

    .line 46
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/o;->H()Landroidx/compose/runtime/tooling/c;

    .line 47
    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    iget-object v5, v1, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 52
    .line 53
    sget-object v7, Landroidx/compose/runtime/f2;->a:Landroidx/compose/runtime/f2;

    .line 54
    .line 55
    invoke-virtual {v5, v0, v7}, Landroidx/compose/runtime/collection/e;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_3
    instance-of v5, v3, Landroidx/compose/runtime/z;

    .line 61
    .line 62
    if-nez v5, :cond_4

    .line 63
    .line 64
    iget-object v5, v1, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 65
    .line 66
    sget-object v7, Landroidx/compose/runtime/f2;->a:Landroidx/compose/runtime/f2;

    .line 67
    .line 68
    invoke-virtual {v5, v0, v7}, Landroidx/compose/runtime/collection/e;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_4
    iget-object v5, v1, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 74
    .line 75
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/e;->d()Landroidx/collection/n0;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5, v0}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    if-eqz v5, :cond_a

    .line 84
    .line 85
    instance-of v7, v5, Landroidx/collection/MutableScatterSet;

    .line 86
    .line 87
    if-eqz v7, :cond_9

    .line 88
    .line 89
    check-cast v5, Landroidx/collection/MutableScatterSet;

    .line 90
    .line 91
    iget-object v7, v5, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 92
    .line 93
    iget-object v5, v5, Landroidx/collection/ScatterSet;->a:[J

    .line 94
    .line 95
    array-length v8, v5

    .line 96
    add-int/lit8 v8, v8, -0x2

    .line 97
    .line 98
    if-ltz v8, :cond_a

    .line 99
    .line 100
    const/4 v10, 0x0

    .line 101
    :goto_2
    aget-wide v11, v5, v10

    .line 102
    .line 103
    not-long v13, v11

    .line 104
    const/4 v15, 0x7

    .line 105
    shl-long/2addr v13, v15

    .line 106
    and-long/2addr v13, v11

    .line 107
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    and-long/2addr v13, v15

    .line 113
    cmp-long v13, v13, v15

    .line 114
    .line 115
    if-eqz v13, :cond_8

    .line 116
    .line 117
    sub-int v13, v10, v8

    .line 118
    .line 119
    not-int v13, v13

    .line 120
    ushr-int/lit8 v13, v13, 0x1f

    .line 121
    .line 122
    const/16 v14, 0x8

    .line 123
    .line 124
    rsub-int/lit8 v13, v13, 0x8

    .line 125
    .line 126
    const/4 v15, 0x0

    .line 127
    :goto_3
    if-ge v15, v13, :cond_7

    .line 128
    .line 129
    const-wide/16 v16, 0xff

    .line 130
    .line 131
    and-long v16, v11, v16

    .line 132
    .line 133
    const-wide/16 v18, 0x80

    .line 134
    .line 135
    cmp-long v16, v16, v18

    .line 136
    .line 137
    if-gez v16, :cond_6

    .line 138
    .line 139
    shl-int/lit8 v16, v10, 0x3

    .line 140
    .line 141
    add-int v16, v16, v15

    .line 142
    .line 143
    aget-object v9, v7, v16

    .line 144
    .line 145
    sget-object v14, Landroidx/compose/runtime/f2;->a:Landroidx/compose/runtime/f2;

    .line 146
    .line 147
    if-ne v9, v14, :cond_5

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_5
    const/16 v9, 0x8

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_6
    move v9, v14

    .line 154
    :goto_4
    shr-long/2addr v11, v9

    .line 155
    add-int/lit8 v15, v15, 0x1

    .line 156
    .line 157
    move v14, v9

    .line 158
    goto :goto_3

    .line 159
    :cond_7
    move v9, v14

    .line 160
    if-ne v13, v9, :cond_a

    .line 161
    .line 162
    :cond_8
    if-eq v10, v8, :cond_a

    .line 163
    .line 164
    add-int/lit8 v10, v10, 0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_9
    sget-object v7, Landroidx/compose/runtime/f2;->a:Landroidx/compose/runtime/f2;

    .line 168
    .line 169
    if-ne v5, v7, :cond_a

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_a
    iget-object v5, v1, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 173
    .line 174
    invoke-virtual {v5, v0, v3}, Landroidx/compose/runtime/collection/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    :cond_b
    :goto_5
    monitor-exit v4

    .line 178
    if-eqz v6, :cond_c

    .line 179
    .line 180
    invoke-direct {v6, v0, v2, v3}, Landroidx/compose/runtime/o;->F(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/c;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0

    .line 185
    :cond_c
    iget-object v0, v1, Landroidx/compose/runtime/o;->a:Landroidx/compose/runtime/m;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/m;->k(Landroidx/compose/runtime/y;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/o;->o()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_d

    .line 195
    .line 196
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->DEFERRED:Landroidx/compose/runtime/InvalidationResult;

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_d
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->SCHEDULED:Landroidx/compose/runtime/InvalidationResult;

    .line 200
    .line 201
    :goto_6
    return-object v0

    .line 202
    :goto_7
    monitor-exit v4

    .line 203
    throw v0
.end method

.method private final G(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/e;->d()Landroidx/collection/n0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 22
    .line 23
    array-length v2, v0

    .line 24
    add-int/lit8 v2, v2, -0x2

    .line 25
    .line 26
    if-ltz v2, :cond_4

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    aget-wide v5, v0, v4

    .line 31
    .line 32
    not-long v7, v5

    .line 33
    const/4 v9, 0x7

    .line 34
    shl-long/2addr v7, v9

    .line 35
    and-long/2addr v7, v5

    .line 36
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v7, v9

    .line 42
    cmp-long v7, v7, v9

    .line 43
    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    sub-int v7, v4, v2

    .line 47
    .line 48
    not-int v7, v7

    .line 49
    ushr-int/lit8 v7, v7, 0x1f

    .line 50
    .line 51
    const/16 v8, 0x8

    .line 52
    .line 53
    rsub-int/lit8 v7, v7, 0x8

    .line 54
    .line 55
    move v9, v3

    .line 56
    :goto_1
    if-ge v9, v7, :cond_1

    .line 57
    .line 58
    const-wide/16 v10, 0xff

    .line 59
    .line 60
    and-long/2addr v10, v5

    .line 61
    const-wide/16 v12, 0x80

    .line 62
    .line 63
    cmp-long v10, v10, v12

    .line 64
    .line 65
    if-gez v10, :cond_0

    .line 66
    .line 67
    shl-int/lit8 v10, v4, 0x3

    .line 68
    .line 69
    add-int/2addr v10, v9

    .line 70
    aget-object v10, v1, v10

    .line 71
    .line 72
    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 73
    .line 74
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->s(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    sget-object v12, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    .line 79
    .line 80
    if-ne v11, v12, :cond_0

    .line 81
    .line 82
    iget-object v11, p0, Landroidx/compose/runtime/o;->m:Landroidx/compose/runtime/collection/e;

    .line 83
    .line 84
    invoke-virtual {v11, p1, v10}, Landroidx/compose/runtime/collection/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    shr-long/2addr v5, v8

    .line 88
    add-int/lit8 v9, v9, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    if-ne v7, v8, :cond_4

    .line 92
    .line 93
    :cond_2
    if-eq v4, v2, :cond_4

    .line 94
    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->s(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object v2, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    .line 105
    .line 106
    if-ne v1, v2, :cond_4

    .line 107
    .line 108
    iget-object v1, p0, Landroidx/compose/runtime/o;->m:Landroidx/compose/runtime/collection/e;

    .line 109
    .line 110
    invoke-virtual {v1, p1, v0}, Landroidx/compose/runtime/collection/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    return-void
.end method

.method private final H()Landroidx/compose/runtime/tooling/c;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->r:Landroidx/compose/runtime/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/u;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/u;->a()Landroidx/compose/runtime/tooling/c;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/o;->a:Landroidx/compose/runtime/m;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/compose/runtime/m;->i()Landroidx/compose/runtime/u;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/runtime/u;->a()Landroidx/compose/runtime/tooling/c;

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/u;->a()Landroidx/compose/runtime/tooling/c;

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/u;->c(Landroidx/compose/runtime/tooling/c;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-object v2
.end method

.method private final K()Landroidx/compose/runtime/collection/e;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/runtime/collection/e;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/compose/runtime/collection/e;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, p0, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 9
    .line 10
    return-object v0
.end method

.method private final L(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/o;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->o1(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public static final synthetic v(Landroidx/compose/runtime/o;)Landroidx/compose/runtime/collection/e;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 2
    .line 3
    return-object p0
.end method

.method private final w(Ljava/lang/Object;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/e;->d()Landroidx/collection/n0;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_6

    .line 16
    .line 17
    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    .line 18
    .line 19
    if-eqz v3, :cond_4

    .line 20
    .line 21
    check-cast v2, Landroidx/collection/MutableScatterSet;

    .line 22
    .line 23
    iget-object v3, v2, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v2, v2, Landroidx/collection/ScatterSet;->a:[J

    .line 26
    .line 27
    array-length v4, v2

    .line 28
    add-int/lit8 v4, v4, -0x2

    .line 29
    .line 30
    if-ltz v4, :cond_6

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    move v6, v5

    .line 34
    :goto_0
    aget-wide v7, v2, v6

    .line 35
    .line 36
    not-long v9, v7

    .line 37
    const/4 v11, 0x7

    .line 38
    shl-long/2addr v9, v11

    .line 39
    and-long/2addr v9, v7

    .line 40
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    and-long/2addr v9, v11

    .line 46
    cmp-long v9, v9, v11

    .line 47
    .line 48
    if-eqz v9, :cond_3

    .line 49
    .line 50
    sub-int v9, v6, v4

    .line 51
    .line 52
    not-int v9, v9

    .line 53
    ushr-int/lit8 v9, v9, 0x1f

    .line 54
    .line 55
    const/16 v10, 0x8

    .line 56
    .line 57
    rsub-int/lit8 v9, v9, 0x8

    .line 58
    .line 59
    move v11, v5

    .line 60
    :goto_1
    if-ge v11, v9, :cond_2

    .line 61
    .line 62
    const-wide/16 v12, 0xff

    .line 63
    .line 64
    and-long/2addr v12, v7

    .line 65
    const-wide/16 v14, 0x80

    .line 66
    .line 67
    cmp-long v12, v12, v14

    .line 68
    .line 69
    if-gez v12, :cond_1

    .line 70
    .line 71
    shl-int/lit8 v12, v6, 0x3

    .line 72
    .line 73
    add-int/2addr v12, v11

    .line 74
    aget-object v12, v3, v12

    .line 75
    .line 76
    check-cast v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 77
    .line 78
    iget-object v13, v0, Landroidx/compose/runtime/o;->m:Landroidx/compose/runtime/collection/e;

    .line 79
    .line 80
    invoke-virtual {v13, v1, v12}, Landroidx/compose/runtime/collection/e;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    if-nez v13, :cond_1

    .line 85
    .line 86
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->s(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    sget-object v14, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 91
    .line 92
    if-eq v13, v14, :cond_1

    .line 93
    .line 94
    invoke-virtual {v12}, Landroidx/compose/runtime/RecomposeScopeImpl;->t()Z

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    if-eqz v13, :cond_0

    .line 99
    .line 100
    if-nez p2, :cond_0

    .line 101
    .line 102
    iget-object v13, v0, Landroidx/compose/runtime/o;->i:Landroidx/collection/MutableScatterSet;

    .line 103
    .line 104
    invoke-virtual {v13, v12}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_0
    iget-object v13, v0, Landroidx/compose/runtime/o;->h:Landroidx/collection/MutableScatterSet;

    .line 109
    .line 110
    invoke-virtual {v13, v12}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_1
    :goto_2
    shr-long/2addr v7, v10

    .line 114
    add-int/lit8 v11, v11, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    if-ne v9, v10, :cond_6

    .line 118
    .line 119
    :cond_3
    if-eq v6, v4, :cond_6

    .line 120
    .line 121
    add-int/lit8 v6, v6, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 125
    .line 126
    iget-object v3, v0, Landroidx/compose/runtime/o;->m:Landroidx/compose/runtime/collection/e;

    .line 127
    .line 128
    invoke-virtual {v3, v1, v2}, Landroidx/compose/runtime/collection/e;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_6

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->s(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    sget-object v3, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 139
    .line 140
    if-eq v1, v3, :cond_6

    .line 141
    .line 142
    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->t()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    if-nez p2, :cond_5

    .line 149
    .line 150
    iget-object v1, v0, Landroidx/compose/runtime/o;->i:Landroidx/collection/MutableScatterSet;

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    iget-object v1, v0, Landroidx/compose/runtime/o;->h:Landroidx/collection/MutableScatterSet;

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_3
    return-void
.end method

.method private final x(Ljava/util/Set;Z)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    instance-of v3, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v13, 0x8

    if-eqz v3, :cond_a

    .line 2
    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/ScatterSetWrapper;->a()Landroidx/collection/ScatterSet;

    move-result-object v1

    .line 3
    iget-object v3, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 4
    iget-object v1, v1, Landroidx/collection/ScatterSet;->a:[J

    .line 5
    array-length v14, v1

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_11

    const/4 v15, 0x0

    .line 6
    :goto_0
    aget-wide v4, v1, v15

    not-long v7, v4

    shl-long v6, v7, v9

    and-long/2addr v6, v4

    and-long/2addr v6, v10

    cmp-long v6, v6, v10

    if-eqz v6, :cond_9

    sub-int v6, v15, v14

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_8

    const-wide/16 v19, 0xff

    and-long v21, v4, v19

    const-wide/16 v17, 0x80

    cmp-long v8, v21, v17

    if-gez v8, :cond_7

    shl-int/lit8 v8, v15, 0x3

    add-int/2addr v8, v7

    .line 7
    aget-object v8, v3, v8

    .line 8
    instance-of v12, v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v12, :cond_1

    .line 9
    check-cast v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/RecomposeScopeImpl;->s(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    :cond_0
    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 p1, v14

    move v11, v15

    goto/16 :goto_4

    .line 10
    :cond_1
    invoke-direct {v0, v8, v2}, Landroidx/compose/runtime/o;->w(Ljava/lang/Object;Z)V

    .line 11
    iget-object v12, v0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 12
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/e;->d()Landroidx/collection/n0;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 13
    instance-of v12, v8, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_5

    .line 14
    check-cast v8, Landroidx/collection/MutableScatterSet;

    .line 15
    iget-object v12, v8, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 16
    iget-object v8, v8, Landroidx/collection/ScatterSet;->a:[J

    .line 17
    array-length v13, v8

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_0

    move/from16 p1, v14

    move v11, v15

    const/4 v10, 0x0

    .line 18
    :goto_2
    aget-wide v14, v8, v10

    move/from16 v25, v6

    move/from16 v26, v7

    not-long v6, v14

    shl-long/2addr v6, v9

    and-long/2addr v6, v14

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v6, v6, v23

    cmp-long v6, v6, v23

    if-eqz v6, :cond_4

    sub-int v6, v10, v13

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_3

    const-wide/16 v19, 0xff

    and-long v27, v14, v19

    const-wide/16 v17, 0x80

    cmp-long v27, v27, v17

    if-gez v27, :cond_2

    shl-int/lit8 v27, v10, 0x3

    add-int v27, v27, v7

    .line 19
    aget-object v27, v12, v27

    move-object/from16 v9, v27

    check-cast v9, Landroidx/compose/runtime/z;

    .line 20
    invoke-direct {v0, v9, v2}, Landroidx/compose/runtime/o;->w(Ljava/lang/Object;Z)V

    :cond_2
    const/16 v9, 0x8

    shr-long/2addr v14, v9

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x7

    goto :goto_3

    :cond_3
    const/16 v9, 0x8

    if-ne v6, v9, :cond_6

    :cond_4
    if-eq v10, v13, :cond_6

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v25

    move/from16 v7, v26

    const/4 v9, 0x7

    goto :goto_2

    :cond_5
    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 p1, v14

    move v11, v15

    .line 21
    check-cast v8, Landroidx/compose/runtime/z;

    .line 22
    invoke-direct {v0, v8, v2}, Landroidx/compose/runtime/o;->w(Ljava/lang/Object;Z)V

    :cond_6
    :goto_4
    const/16 v6, 0x8

    goto :goto_5

    :cond_7
    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 p1, v14

    move v11, v15

    move v6, v13

    :goto_5
    shr-long/2addr v4, v6

    add-int/lit8 v7, v26, 0x1

    move/from16 v14, p1

    move v13, v6

    move v15, v11

    move/from16 v6, v25

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto/16 :goto_1

    :cond_8
    move/from16 p1, v14

    move v11, v15

    move/from16 v33, v13

    move v13, v6

    move/from16 v6, v33

    if-ne v13, v6, :cond_11

    move/from16 v14, p1

    goto :goto_6

    :cond_9
    move v11, v15

    :goto_6
    if-eq v11, v14, :cond_11

    add-int/lit8 v15, v11, 0x1

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v13, 0x8

    goto/16 :goto_0

    .line 23
    :cond_a
    check-cast v1, Ljava/lang/Iterable;

    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    instance-of v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v4, :cond_c

    .line 26
    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->s(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    .line 27
    invoke-direct {v0, v3, v2}, Landroidx/compose/runtime/o;->w(Ljava/lang/Object;Z)V

    .line 28
    iget-object v5, v0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 29
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/e;->d()Landroidx/collection/n0;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 30
    instance-of v5, v3, Landroidx/collection/MutableScatterSet;

    if-eqz v5, :cond_10

    .line 31
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 32
    iget-object v5, v3, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 33
    iget-object v3, v3, Landroidx/collection/ScatterSet;->a:[J

    .line 34
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_b

    const/4 v7, 0x0

    .line 35
    :goto_8
    aget-wide v8, v3, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_f

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v13, v10, 0x8

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v13, :cond_e

    const-wide/16 v11, 0xff

    and-long v14, v8, v11

    const-wide/16 v11, 0x80

    cmp-long v14, v14, v11

    if-gez v14, :cond_d

    shl-int/lit8 v11, v7, 0x3

    add-int/2addr v11, v10

    .line 36
    aget-object v11, v5, v11

    check-cast v11, Landroidx/compose/runtime/z;

    .line 37
    invoke-direct {v0, v11, v2}, Landroidx/compose/runtime/o;->w(Ljava/lang/Object;Z)V

    :cond_d
    const/16 v11, 0x8

    shr-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    const/16 v11, 0x8

    if-ne v13, v11, :cond_b

    :cond_f
    if-eq v7, v6, :cond_b

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 38
    :cond_10
    check-cast v3, Landroidx/compose/runtime/z;

    .line 39
    invoke-direct {v0, v3, v2}, Landroidx/compose/runtime/o;->w(Ljava/lang/Object;Z)V

    goto :goto_7

    .line 40
    :cond_11
    iget-object v1, v0, Landroidx/compose/runtime/o;->i:Landroidx/collection/MutableScatterSet;

    .line 41
    iget-object v3, v0, Landroidx/compose/runtime/o;->h:Landroidx/collection/MutableScatterSet;

    .line 42
    const-string v4, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2"

    const-string v5, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>"

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->e()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 43
    iget-object v2, v0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 44
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/e;->d()Landroidx/collection/n0;

    move-result-object v2

    .line 45
    iget-object v7, v2, Landroidx/collection/u0;->a:[J

    .line 46
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_20

    const/4 v9, 0x0

    .line 47
    :goto_a
    aget-wide v10, v7, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1f

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v12, :cond_1e

    const-wide/16 v14, 0xff

    and-long v25, v10, v14

    const-wide/16 v14, 0x80

    cmp-long v16, v25, v14

    if-gez v16, :cond_1d

    shl-int/lit8 v14, v9, 0x3

    add-int/2addr v14, v13

    .line 48
    iget-object v15, v2, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    aget-object v15, v15, v14

    iget-object v15, v2, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    aget-object v15, v15, v14

    .line 49
    instance-of v6, v15, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_19

    .line 50
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroidx/collection/MutableScatterSet;

    .line 51
    iget-object v6, v15, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    move-object/from16 v16, v7

    .line 52
    iget-object v7, v15, Landroidx/collection/ScatterSet;->a:[J

    move-object/from16 v25, v5

    .line 53
    array-length v5, v7

    add-int/lit8 v5, v5, -0x2

    move/from16 p2, v8

    move/from16 v26, v9

    if-ltz v5, :cond_17

    const/4 v0, 0x0

    .line 54
    :goto_c
    aget-wide v8, v7, v0

    move/from16 v27, v12

    move/from16 v29, v13

    not-long v12, v8

    const/16 v28, 0x7

    shl-long v12, v12, v28

    and-long/2addr v12, v8

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v12, v12, v23

    cmp-long v12, v12, v23

    if-eqz v12, :cond_16

    sub-int v12, v0, v5

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v12, :cond_15

    const-wide/16 v19, 0xff

    and-long v30, v8, v19

    const-wide/16 v17, 0x80

    cmp-long v30, v30, v17

    if-gez v30, :cond_14

    shl-int/lit8 v30, v0, 0x3

    move-object/from16 v31, v7

    add-int v7, v30, v13

    .line 55
    aget-object v30, v6, v7

    move-object/from16 v32, v6

    move-object/from16 v6, v30

    check-cast v6, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 56
    invoke-virtual {v1, v6}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_12

    invoke-virtual {v3, v6}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 57
    :cond_12
    invoke-virtual {v15, v7}, Landroidx/collection/MutableScatterSet;->y(I)V

    :cond_13
    :goto_e
    const/16 v6, 0x8

    goto :goto_f

    :cond_14
    move-object/from16 v32, v6

    move-object/from16 v31, v7

    goto :goto_e

    :goto_f
    shr-long/2addr v8, v6

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v31

    move-object/from16 v6, v32

    goto :goto_d

    :cond_15
    move-object/from16 v32, v6

    move-object/from16 v31, v7

    const/16 v6, 0x8

    if-ne v12, v6, :cond_18

    goto :goto_10

    :cond_16
    move-object/from16 v32, v6

    move-object/from16 v31, v7

    :goto_10
    if-eq v0, v5, :cond_18

    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v27

    move/from16 v13, v29

    move-object/from16 v7, v31

    move-object/from16 v6, v32

    goto :goto_c

    :cond_17
    move/from16 v27, v12

    move/from16 v29, v13

    .line 58
    :cond_18
    invoke-virtual {v15}, Landroidx/collection/ScatterSet;->d()Z

    move-result v0

    goto :goto_12

    :cond_19
    move-object/from16 v25, v5

    move-object/from16 v16, v7

    move/from16 p2, v8

    move/from16 v26, v9

    move/from16 v27, v12

    move/from16 v29, v13

    .line 59
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 60
    invoke-virtual {v1, v15}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v3, v15}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_1c

    .line 61
    invoke-virtual {v2, v14}, Landroidx/collection/n0;->p(I)Ljava/lang/Object;

    :cond_1c
    :goto_13
    const/16 v0, 0x8

    goto :goto_14

    :cond_1d
    move-object/from16 v25, v5

    move-object/from16 v16, v7

    move/from16 p2, v8

    move/from16 v26, v9

    move/from16 v27, v12

    move/from16 v29, v13

    goto :goto_13

    :goto_14
    shr-long/2addr v10, v0

    add-int/lit8 v13, v29, 0x1

    move-object/from16 v0, p0

    move/from16 v8, p2

    move-object/from16 v7, v16

    move-object/from16 v5, v25

    move/from16 v9, v26

    move/from16 v12, v27

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v25, v5

    move-object/from16 v16, v7

    move/from16 p2, v8

    move/from16 v26, v9

    move v13, v12

    const/16 v0, 0x8

    if-ne v13, v0, :cond_20

    move/from16 v8, p2

    move/from16 v0, v26

    goto :goto_15

    :cond_1f
    move-object/from16 v25, v5

    move-object/from16 v16, v7

    move v0, v9

    :goto_15
    if-eq v0, v8, :cond_20

    add-int/lit8 v9, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, v16

    move-object/from16 v5, v25

    goto/16 :goto_a

    .line 62
    :cond_20
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->m()V

    .line 63
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/o;->z()V

    goto/16 :goto_23

    :cond_21
    move-object/from16 v25, v5

    .line 64
    invoke-virtual {v3}, Landroidx/collection/ScatterSet;->e()Z

    move-result v0

    if-eqz v0, :cond_30

    move-object/from16 v0, p0

    .line 65
    iget-object v1, v0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 66
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/e;->d()Landroidx/collection/n0;

    move-result-object v1

    .line 67
    iget-object v2, v1, Landroidx/collection/u0;->a:[J

    .line 68
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_2f

    const/4 v6, 0x0

    .line 69
    :goto_16
    aget-wide v7, v2, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2e

    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v13, v9, 0x8

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v13, :cond_2d

    const-wide/16 v10, 0xff

    and-long v14, v7, v10

    const-wide/16 v10, 0x80

    cmp-long v12, v14, v10

    if-gez v12, :cond_22

    const/4 v10, 0x1

    goto :goto_18

    :cond_22
    const/4 v10, 0x0

    :goto_18
    if-eqz v10, :cond_2c

    shl-int/lit8 v10, v6, 0x3

    add-int/2addr v10, v9

    .line 70
    iget-object v11, v1, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    aget-object v11, v11, v10

    iget-object v11, v1, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    aget-object v11, v11, v10

    .line 71
    instance-of v12, v11, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_2a

    move-object/from16 v12, v25

    .line 72
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/collection/MutableScatterSet;

    .line 73
    iget-object v14, v11, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 74
    iget-object v15, v11, Landroidx/collection/ScatterSet;->a:[J

    .line 75
    array-length v0, v15

    add-int/lit8 v0, v0, -0x2

    move-object/from16 v16, v2

    move/from16 p2, v5

    move/from16 v25, v6

    if-ltz v0, :cond_28

    const/4 v2, 0x0

    .line 76
    :goto_19
    aget-wide v5, v15, v2

    move-object/from16 v27, v12

    move/from16 v26, v13

    not-long v12, v5

    const/16 v28, 0x7

    shl-long v12, v12, v28

    and-long/2addr v12, v5

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v12, v12, v23

    cmp-long v12, v12, v23

    if-eqz v12, :cond_27

    sub-int v12, v2, v0

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v12, :cond_26

    const-wide/16 v19, 0xff

    and-long v29, v5, v19

    const-wide/16 v17, 0x80

    cmp-long v29, v29, v17

    if-gez v29, :cond_23

    const/16 v29, 0x1

    goto :goto_1b

    :cond_23
    const/16 v29, 0x0

    :goto_1b
    if-eqz v29, :cond_25

    shl-int/lit8 v29, v2, 0x3

    move-object/from16 v30, v15

    add-int v15, v29, v13

    .line 77
    aget-object v29, v14, v15

    move-object/from16 v31, v14

    move-object/from16 v14, v29

    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 78
    invoke-virtual {v3, v14}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 79
    invoke-virtual {v11, v15}, Landroidx/collection/MutableScatterSet;->y(I)V

    :cond_24
    :goto_1c
    const/16 v14, 0x8

    goto :goto_1d

    :cond_25
    move-object/from16 v31, v14

    move-object/from16 v30, v15

    goto :goto_1c

    :goto_1d
    shr-long/2addr v5, v14

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v15, v30

    move-object/from16 v14, v31

    goto :goto_1a

    :cond_26
    move-object/from16 v31, v14

    move-object/from16 v30, v15

    const/16 v14, 0x8

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    if-ne v12, v14, :cond_29

    goto :goto_1e

    :cond_27
    move-object/from16 v31, v14

    move-object/from16 v30, v15

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    :goto_1e
    if-eq v2, v0, :cond_29

    add-int/lit8 v2, v2, 0x1

    move/from16 v13, v26

    move-object/from16 v12, v27

    move-object/from16 v15, v30

    move-object/from16 v14, v31

    goto :goto_19

    :cond_28
    move-object/from16 v27, v12

    move/from16 v26, v13

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v28, 0x7

    .line 80
    :cond_29
    invoke-virtual {v11}, Landroidx/collection/ScatterSet;->d()Z

    move-result v0

    goto :goto_1f

    :cond_2a
    move-object/from16 v16, v2

    move/from16 p2, v5

    move/from16 v26, v13

    move-object/from16 v27, v25

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v28, 0x7

    move/from16 v25, v6

    .line 81
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 82
    invoke-virtual {v3, v11}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v0

    :goto_1f
    if-eqz v0, :cond_2b

    .line 83
    invoke-virtual {v1, v10}, Landroidx/collection/n0;->p(I)Ljava/lang/Object;

    :cond_2b
    :goto_20
    const/16 v0, 0x8

    goto :goto_21

    :cond_2c
    move-object/from16 v16, v2

    move/from16 p2, v5

    move/from16 v26, v13

    move-object/from16 v27, v25

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v28, 0x7

    move/from16 v25, v6

    goto :goto_20

    :goto_21
    shr-long/2addr v7, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v2, v16

    move/from16 v6, v25

    move/from16 v13, v26

    move-object/from16 v25, v27

    goto/16 :goto_17

    :cond_2d
    move-object/from16 v16, v2

    move/from16 p2, v5

    move-object/from16 v27, v25

    const/16 v0, 0x8

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v28, 0x7

    move/from16 v25, v6

    if-ne v13, v0, :cond_2f

    move/from16 v5, p2

    move/from16 v2, v25

    goto :goto_22

    :cond_2e
    move-object/from16 v16, v2

    move-object/from16 v27, v25

    const/16 v0, 0x8

    const-wide/16 v17, 0x80

    const-wide/16 v19, 0xff

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v28, 0x7

    move v2, v6

    :goto_22
    if-eq v2, v5, :cond_2f

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v25, v27

    goto/16 :goto_16

    .line 84
    :cond_2f
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/o;->z()V

    .line 85
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->m()V

    :cond_30
    :goto_23
    return-void
.end method

.method private final y(Ls/a;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-instance v2, Landroidx/compose/runtime/o$a;

    .line 5
    .line 6
    iget-object v3, v1, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 7
    .line 8
    invoke-direct {v2, v3}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ls/a;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget-object v0, v1, Landroidx/compose/runtime/o;->l:Ls/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Ls/a;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/runtime/o$a;->f()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    :try_start_1
    const-string v3, "Compose:applyChanges"

    .line 30
    .line 31
    sget-object v4, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 37
    :try_start_2
    iget-object v5, v1, Landroidx/compose/runtime/o;->b:Landroidx/compose/runtime/f;

    .line 38
    .line 39
    invoke-interface {v5}, Landroidx/compose/runtime/f;->h()V

    .line 40
    .line 41
    .line 42
    iget-object v5, v1, Landroidx/compose/runtime/o;->f:Landroidx/compose/runtime/j2;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroidx/compose/runtime/j2;->x()Landroidx/compose/runtime/m2;

    .line 45
    .line 46
    .line 47
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 48
    const/4 v6, 0x0

    .line 49
    :try_start_3
    iget-object v7, v1, Landroidx/compose/runtime/o;->b:Landroidx/compose/runtime/f;

    .line 50
    .line 51
    move-object/from16 v8, p1

    .line 52
    .line 53
    invoke-virtual {v8, v7, v5, v2}, Ls/a;->b(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V

    .line 54
    .line 55
    .line 56
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 57
    .line 58
    :try_start_4
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/m2;->L(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v5, v1, Landroidx/compose/runtime/o;->b:Landroidx/compose/runtime/f;

    .line 62
    .line 63
    invoke-interface {v5}, Landroidx/compose/runtime/f;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 64
    .line 65
    .line 66
    :try_start_5
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroidx/compose/runtime/o$a;->g()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroidx/compose/runtime/o$a;->h()V

    .line 73
    .line 74
    .line 75
    iget-boolean v3, v1, Landroidx/compose/runtime/o;->o:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 76
    .line 77
    if-eqz v3, :cond_10

    .line 78
    .line 79
    :try_start_6
    const-string v3, "Compose:unobserve"

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 85
    :try_start_7
    iput-boolean v6, v1, Landroidx/compose/runtime/o;->o:Z

    .line 86
    .line 87
    iget-object v4, v1, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 88
    .line 89
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/e;->d()Landroidx/collection/n0;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object v5, v4, Landroidx/collection/u0;->a:[J

    .line 94
    .line 95
    array-length v7, v5

    .line 96
    add-int/lit8 v7, v7, -0x2

    .line 97
    .line 98
    if-ltz v7, :cond_e

    .line 99
    .line 100
    move v8, v6

    .line 101
    :goto_0
    aget-wide v9, v5, v8

    .line 102
    .line 103
    not-long v11, v9

    .line 104
    const/4 v13, 0x7

    .line 105
    shl-long/2addr v11, v13

    .line 106
    and-long/2addr v11, v9

    .line 107
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    and-long/2addr v11, v14

    .line 113
    cmp-long v11, v11, v14

    .line 114
    .line 115
    if-eqz v11, :cond_d

    .line 116
    .line 117
    sub-int v11, v8, v7

    .line 118
    .line 119
    not-int v11, v11

    .line 120
    ushr-int/lit8 v11, v11, 0x1f

    .line 121
    .line 122
    const/16 v12, 0x8

    .line 123
    .line 124
    rsub-int/lit8 v11, v11, 0x8

    .line 125
    .line 126
    :goto_1
    if-ge v6, v11, :cond_c

    .line 127
    .line 128
    const-wide/16 v16, 0xff

    .line 129
    .line 130
    and-long v18, v9, v16

    .line 131
    .line 132
    const-wide/16 v20, 0x80

    .line 133
    .line 134
    cmp-long v18, v18, v20

    .line 135
    .line 136
    if-gez v18, :cond_b

    .line 137
    .line 138
    shl-int/lit8 v18, v8, 0x3

    .line 139
    .line 140
    add-int v0, v18, v6

    .line 141
    .line 142
    iget-object v12, v4, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    .line 143
    .line 144
    aget-object v12, v12, v0

    .line 145
    .line 146
    iget-object v12, v4, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 147
    .line 148
    aget-object v12, v12, v0

    .line 149
    .line 150
    instance-of v14, v12, Landroidx/collection/MutableScatterSet;

    .line 151
    .line 152
    if-eqz v14, :cond_8

    .line 153
    .line 154
    const-string v14, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>"

    .line 155
    .line 156
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    check-cast v12, Landroidx/collection/MutableScatterSet;

    .line 160
    .line 161
    iget-object v14, v12, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 162
    .line 163
    iget-object v15, v12, Landroidx/collection/ScatterSet;->a:[J

    .line 164
    .line 165
    array-length v13, v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 166
    add-int/lit8 v13, v13, -0x2

    .line 167
    .line 168
    move-object/from16 v25, v2

    .line 169
    .line 170
    move-object/from16 v24, v5

    .line 171
    .line 172
    if-ltz v13, :cond_6

    .line 173
    .line 174
    const/4 v5, 0x0

    .line 175
    :goto_2
    :try_start_8
    aget-wide v1, v15, v5

    .line 176
    .line 177
    move/from16 v26, v7

    .line 178
    .line 179
    move/from16 v27, v8

    .line 180
    .line 181
    not-long v7, v1

    .line 182
    const/16 v18, 0x7

    .line 183
    .line 184
    shl-long v7, v7, v18

    .line 185
    .line 186
    and-long/2addr v7, v1

    .line 187
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    and-long v7, v7, v22

    .line 193
    .line 194
    cmp-long v7, v7, v22

    .line 195
    .line 196
    if-eqz v7, :cond_5

    .line 197
    .line 198
    sub-int v7, v5, v13

    .line 199
    .line 200
    not-int v7, v7

    .line 201
    ushr-int/lit8 v7, v7, 0x1f

    .line 202
    .line 203
    const/16 v8, 0x8

    .line 204
    .line 205
    rsub-int/lit8 v7, v7, 0x8

    .line 206
    .line 207
    const/4 v8, 0x0

    .line 208
    :goto_3
    if-ge v8, v7, :cond_4

    .line 209
    .line 210
    and-long v28, v1, v16

    .line 211
    .line 212
    cmp-long v28, v28, v20

    .line 213
    .line 214
    if-gez v28, :cond_3

    .line 215
    .line 216
    shl-int/lit8 v28, v5, 0x3

    .line 217
    .line 218
    move-object/from16 v29, v15

    .line 219
    .line 220
    add-int v15, v28, v8

    .line 221
    .line 222
    aget-object v28, v14, v15

    .line 223
    .line 224
    check-cast v28, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 225
    .line 226
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/RecomposeScopeImpl;->r()Z

    .line 227
    .line 228
    .line 229
    move-result v28

    .line 230
    if-nez v28, :cond_2

    .line 231
    .line 232
    invoke-virtual {v12, v15}, Landroidx/collection/MutableScatterSet;->y(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    goto/16 :goto_c

    .line 238
    .line 239
    :cond_2
    :goto_4
    const/16 v15, 0x8

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_3
    move-object/from16 v29, v15

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :goto_5
    shr-long/2addr v1, v15

    .line 246
    const/16 v19, 0x1

    .line 247
    .line 248
    add-int/lit8 v8, v8, 0x1

    .line 249
    .line 250
    move-object/from16 v15, v29

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_4
    move-object/from16 v29, v15

    .line 254
    .line 255
    const/16 v15, 0x8

    .line 256
    .line 257
    const/16 v19, 0x1

    .line 258
    .line 259
    if-ne v7, v15, :cond_7

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_5
    move-object/from16 v29, v15

    .line 263
    .line 264
    const/16 v19, 0x1

    .line 265
    .line 266
    :goto_6
    if-eq v5, v13, :cond_7

    .line 267
    .line 268
    add-int/lit8 v5, v5, 0x1

    .line 269
    .line 270
    move/from16 v7, v26

    .line 271
    .line 272
    move/from16 v8, v27

    .line 273
    .line 274
    move-object/from16 v15, v29

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_6
    move/from16 v26, v7

    .line 278
    .line 279
    move/from16 v27, v8

    .line 280
    .line 281
    const/16 v18, 0x7

    .line 282
    .line 283
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    :cond_7
    invoke-virtual {v12}, Landroidx/collection/ScatterSet;->d()Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    goto :goto_7

    .line 293
    :catchall_1
    move-exception v0

    .line 294
    move-object/from16 v25, v2

    .line 295
    .line 296
    goto/16 :goto_c

    .line 297
    .line 298
    :cond_8
    move-object/from16 v25, v2

    .line 299
    .line 300
    move-object/from16 v24, v5

    .line 301
    .line 302
    move/from16 v26, v7

    .line 303
    .line 304
    move/from16 v27, v8

    .line 305
    .line 306
    move/from16 v18, v13

    .line 307
    .line 308
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    const-string v1, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2"

    .line 314
    .line 315
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    check-cast v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 319
    .line 320
    invoke-virtual {v12}, Landroidx/compose/runtime/RecomposeScopeImpl;->r()Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-nez v1, :cond_9

    .line 325
    .line 326
    const/4 v1, 0x1

    .line 327
    goto :goto_7

    .line 328
    :cond_9
    const/4 v1, 0x0

    .line 329
    :goto_7
    if-eqz v1, :cond_a

    .line 330
    .line 331
    invoke-virtual {v4, v0}, Landroidx/collection/n0;->p(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    :cond_a
    const/16 v0, 0x8

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_b
    move-object/from16 v25, v2

    .line 338
    .line 339
    move-object/from16 v24, v5

    .line 340
    .line 341
    move/from16 v26, v7

    .line 342
    .line 343
    move/from16 v27, v8

    .line 344
    .line 345
    move/from16 v18, v13

    .line 346
    .line 347
    move-wide/from16 v22, v14

    .line 348
    .line 349
    move v0, v12

    .line 350
    :goto_8
    shr-long/2addr v9, v0

    .line 351
    const/4 v1, 0x1

    .line 352
    add-int/2addr v6, v1

    .line 353
    move v12, v0

    .line 354
    move v0, v1

    .line 355
    move/from16 v13, v18

    .line 356
    .line 357
    move-wide/from16 v14, v22

    .line 358
    .line 359
    move-object/from16 v5, v24

    .line 360
    .line 361
    move-object/from16 v2, v25

    .line 362
    .line 363
    move/from16 v7, v26

    .line 364
    .line 365
    move/from16 v8, v27

    .line 366
    .line 367
    move-object/from16 v1, p0

    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :cond_c
    move v1, v0

    .line 372
    move-object/from16 v25, v2

    .line 373
    .line 374
    move-object/from16 v24, v5

    .line 375
    .line 376
    move/from16 v26, v7

    .line 377
    .line 378
    move/from16 v27, v8

    .line 379
    .line 380
    move v0, v12

    .line 381
    if-ne v11, v0, :cond_f

    .line 382
    .line 383
    move/from16 v7, v26

    .line 384
    .line 385
    move/from16 v6, v27

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_d
    move v1, v0

    .line 389
    move-object/from16 v25, v2

    .line 390
    .line 391
    move-object/from16 v24, v5

    .line 392
    .line 393
    move v6, v8

    .line 394
    :goto_9
    if-eq v6, v7, :cond_f

    .line 395
    .line 396
    add-int/lit8 v8, v6, 0x1

    .line 397
    .line 398
    move v0, v1

    .line 399
    move-object/from16 v5, v24

    .line 400
    .line 401
    move-object/from16 v2, v25

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    move-object/from16 v1, p0

    .line 405
    .line 406
    goto/16 :goto_0

    .line 407
    .line 408
    :cond_e
    move-object/from16 v25, v2

    .line 409
    .line 410
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/o;->z()V

    .line 411
    .line 412
    .line 413
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 414
    .line 415
    :try_start_9
    sget-object v0, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 416
    .line 417
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    :goto_a
    move-object/from16 v1, p0

    .line 421
    .line 422
    goto :goto_d

    .line 423
    :catchall_2
    move-exception v0

    .line 424
    :goto_b
    move-object/from16 v1, p0

    .line 425
    .line 426
    goto :goto_f

    .line 427
    :goto_c
    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 428
    .line 429
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 433
    :catchall_3
    move-exception v0

    .line 434
    move-object/from16 v25, v2

    .line 435
    .line 436
    goto :goto_b

    .line 437
    :cond_10
    move-object/from16 v25, v2

    .line 438
    .line 439
    goto :goto_a

    .line 440
    :goto_d
    iget-object v0, v1, Landroidx/compose/runtime/o;->l:Ls/a;

    .line 441
    .line 442
    invoke-virtual {v0}, Ls/a;->c()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_11

    .line 447
    .line 448
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/o$a;->f()V

    .line 449
    .line 450
    .line 451
    :cond_11
    return-void

    .line 452
    :catchall_4
    move-exception v0

    .line 453
    move-object/from16 v25, v2

    .line 454
    .line 455
    goto :goto_f

    .line 456
    :catchall_5
    move-exception v0

    .line 457
    move-object/from16 v25, v2

    .line 458
    .line 459
    goto :goto_e

    .line 460
    :catchall_6
    move-exception v0

    .line 461
    move-object/from16 v25, v2

    .line 462
    .line 463
    const/4 v2, 0x0

    .line 464
    :try_start_a
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/m2;->L(Z)V

    .line 465
    .line 466
    .line 467
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 468
    :catchall_7
    move-exception v0

    .line 469
    :goto_e
    :try_start_b
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 470
    .line 471
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 475
    :catchall_8
    move-exception v0

    .line 476
    :goto_f
    iget-object v2, v1, Landroidx/compose/runtime/o;->l:Ls/a;

    .line 477
    .line 478
    invoke-virtual {v2}, Ls/a;->c()Z

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    if-eqz v2, :cond_12

    .line 483
    .line 484
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/o$a;->f()V

    .line 485
    .line 486
    .line 487
    :cond_12
    throw v0
.end method

.method private final z()V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/e;->d()Landroidx/collection/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v1, Landroidx/collection/u0;->a:[J

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    add-int/lit8 v3, v3, -0x2

    .line 13
    .line 14
    const/4 v8, 0x7

    .line 15
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const/16 v12, 0x8

    .line 21
    .line 22
    if-ltz v3, :cond_c

    .line 23
    .line 24
    const/4 v14, 0x0

    .line 25
    :goto_0
    aget-wide v4, v2, v14

    .line 26
    .line 27
    not-long v6, v4

    .line 28
    shl-long/2addr v6, v8

    .line 29
    and-long/2addr v6, v4

    .line 30
    and-long/2addr v6, v9

    .line 31
    cmp-long v6, v6, v9

    .line 32
    .line 33
    if-eqz v6, :cond_b

    .line 34
    .line 35
    sub-int v6, v14, v3

    .line 36
    .line 37
    not-int v6, v6

    .line 38
    ushr-int/lit8 v6, v6, 0x1f

    .line 39
    .line 40
    rsub-int/lit8 v6, v6, 0x8

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    :goto_1
    if-ge v7, v6, :cond_a

    .line 44
    .line 45
    const-wide/16 v17, 0xff

    .line 46
    .line 47
    and-long v19, v4, v17

    .line 48
    .line 49
    const-wide/16 v15, 0x80

    .line 50
    .line 51
    cmp-long v19, v19, v15

    .line 52
    .line 53
    if-gez v19, :cond_9

    .line 54
    .line 55
    shl-int/lit8 v19, v14, 0x3

    .line 56
    .line 57
    add-int v11, v19, v7

    .line 58
    .line 59
    iget-object v13, v1, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    .line 60
    .line 61
    aget-object v13, v13, v11

    .line 62
    .line 63
    iget-object v13, v1, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 64
    .line 65
    aget-object v13, v13, v11

    .line 66
    .line 67
    instance-of v15, v13, Landroidx/collection/MutableScatterSet;

    .line 68
    .line 69
    if-eqz v15, :cond_6

    .line 70
    .line 71
    const-string v15, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>"

    .line 72
    .line 73
    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    check-cast v13, Landroidx/collection/MutableScatterSet;

    .line 77
    .line 78
    iget-object v15, v13, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v12, v13, Landroidx/collection/ScatterSet;->a:[J

    .line 81
    .line 82
    array-length v9, v12

    .line 83
    add-int/lit8 v9, v9, -0x2

    .line 84
    .line 85
    move-object/from16 v25, v2

    .line 86
    .line 87
    move/from16 v26, v3

    .line 88
    .line 89
    if-ltz v9, :cond_4

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    :goto_2
    aget-wide v2, v12, v10

    .line 93
    .line 94
    move/from16 v27, v14

    .line 95
    .line 96
    move-object/from16 v16, v15

    .line 97
    .line 98
    not-long v14, v2

    .line 99
    shl-long/2addr v14, v8

    .line 100
    and-long/2addr v14, v2

    .line 101
    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    and-long v14, v14, v23

    .line 107
    .line 108
    cmp-long v14, v14, v23

    .line 109
    .line 110
    if-eqz v14, :cond_3

    .line 111
    .line 112
    sub-int v14, v10, v9

    .line 113
    .line 114
    not-int v14, v14

    .line 115
    ushr-int/lit8 v14, v14, 0x1f

    .line 116
    .line 117
    const/16 v15, 0x8

    .line 118
    .line 119
    rsub-int/lit8 v14, v14, 0x8

    .line 120
    .line 121
    const/4 v15, 0x0

    .line 122
    :goto_3
    if-ge v15, v14, :cond_2

    .line 123
    .line 124
    const-wide/16 v17, 0xff

    .line 125
    .line 126
    and-long v28, v2, v17

    .line 127
    .line 128
    const-wide/16 v21, 0x80

    .line 129
    .line 130
    cmp-long v28, v28, v21

    .line 131
    .line 132
    move/from16 v22, v15

    .line 133
    .line 134
    move-object/from16 v21, v16

    .line 135
    .line 136
    if-gez v28, :cond_1

    .line 137
    .line 138
    shl-int/lit8 v28, v10, 0x3

    .line 139
    .line 140
    add-int v15, v28, v22

    .line 141
    .line 142
    aget-object v16, v21, v15

    .line 143
    .line 144
    move-object/from16 v8, v16

    .line 145
    .line 146
    check-cast v8, Landroidx/compose/runtime/z;

    .line 147
    .line 148
    move-object/from16 v16, v12

    .line 149
    .line 150
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/o;->v(Landroidx/compose/runtime/o;)Landroidx/compose/runtime/collection/e;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/collection/e;->c(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-nez v8, :cond_0

    .line 159
    .line 160
    invoke-virtual {v13, v15}, Landroidx/collection/MutableScatterSet;->y(I)V

    .line 161
    .line 162
    .line 163
    :cond_0
    :goto_4
    const/16 v8, 0x8

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_1
    move-object/from16 v16, v12

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :goto_5
    shr-long/2addr v2, v8

    .line 170
    add-int/lit8 v15, v22, 0x1

    .line 171
    .line 172
    move-object/from16 v12, v16

    .line 173
    .line 174
    move-object/from16 v16, v21

    .line 175
    .line 176
    const/4 v8, 0x7

    .line 177
    goto :goto_3

    .line 178
    :cond_2
    move-object/from16 v21, v16

    .line 179
    .line 180
    const/16 v8, 0x8

    .line 181
    .line 182
    move-object/from16 v16, v12

    .line 183
    .line 184
    if-ne v14, v8, :cond_5

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_3
    move-object/from16 v21, v16

    .line 188
    .line 189
    move-object/from16 v16, v12

    .line 190
    .line 191
    :goto_6
    if-eq v10, v9, :cond_5

    .line 192
    .line 193
    add-int/lit8 v10, v10, 0x1

    .line 194
    .line 195
    move-object/from16 v12, v16

    .line 196
    .line 197
    move-object/from16 v15, v21

    .line 198
    .line 199
    move/from16 v14, v27

    .line 200
    .line 201
    const/4 v8, 0x7

    .line 202
    goto :goto_2

    .line 203
    :cond_4
    move/from16 v27, v14

    .line 204
    .line 205
    :cond_5
    invoke-virtual {v13}, Landroidx/collection/ScatterSet;->d()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    goto :goto_7

    .line 210
    :cond_6
    move-object/from16 v25, v2

    .line 211
    .line 212
    move/from16 v26, v3

    .line 213
    .line 214
    move/from16 v27, v14

    .line 215
    .line 216
    const-string v2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2"

    .line 217
    .line 218
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    check-cast v13, Landroidx/compose/runtime/z;

    .line 222
    .line 223
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/o;->v(Landroidx/compose/runtime/o;)Landroidx/compose/runtime/collection/e;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/collection/e;->c(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_7

    .line 232
    .line 233
    const/4 v2, 0x1

    .line 234
    goto :goto_7

    .line 235
    :cond_7
    const/4 v2, 0x0

    .line 236
    :goto_7
    if-eqz v2, :cond_8

    .line 237
    .line 238
    invoke-virtual {v1, v11}, Landroidx/collection/n0;->p(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    :cond_8
    const/16 v2, 0x8

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_9
    move-object/from16 v25, v2

    .line 245
    .line 246
    move/from16 v26, v3

    .line 247
    .line 248
    move/from16 v27, v14

    .line 249
    .line 250
    move v2, v12

    .line 251
    :goto_8
    shr-long/2addr v4, v2

    .line 252
    add-int/lit8 v7, v7, 0x1

    .line 253
    .line 254
    move v12, v2

    .line 255
    move-object/from16 v2, v25

    .line 256
    .line 257
    move/from16 v3, v26

    .line 258
    .line 259
    move/from16 v14, v27

    .line 260
    .line 261
    const/4 v8, 0x7

    .line 262
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_a
    move-object/from16 v25, v2

    .line 270
    .line 271
    move/from16 v26, v3

    .line 272
    .line 273
    move v2, v12

    .line 274
    move/from16 v27, v14

    .line 275
    .line 276
    if-ne v6, v2, :cond_c

    .line 277
    .line 278
    move/from16 v3, v26

    .line 279
    .line 280
    move/from16 v13, v27

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_b
    move-object/from16 v25, v2

    .line 284
    .line 285
    move v13, v14

    .line 286
    :goto_9
    if-eq v13, v3, :cond_c

    .line 287
    .line 288
    add-int/lit8 v14, v13, 0x1

    .line 289
    .line 290
    move-object/from16 v2, v25

    .line 291
    .line 292
    const/4 v8, 0x7

    .line 293
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    const/16 v12, 0x8

    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_c
    iget-object v1, v0, Landroidx/compose/runtime/o;->i:Landroidx/collection/MutableScatterSet;

    .line 303
    .line 304
    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->e()Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_11

    .line 309
    .line 310
    iget-object v1, v0, Landroidx/compose/runtime/o;->i:Landroidx/collection/MutableScatterSet;

    .line 311
    .line 312
    iget-object v2, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 313
    .line 314
    iget-object v3, v1, Landroidx/collection/ScatterSet;->a:[J

    .line 315
    .line 316
    array-length v4, v3

    .line 317
    add-int/lit8 v4, v4, -0x2

    .line 318
    .line 319
    if-ltz v4, :cond_11

    .line 320
    .line 321
    const/4 v5, 0x0

    .line 322
    :goto_a
    aget-wide v6, v3, v5

    .line 323
    .line 324
    not-long v8, v6

    .line 325
    const/4 v10, 0x7

    .line 326
    shl-long/2addr v8, v10

    .line 327
    and-long/2addr v8, v6

    .line 328
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    and-long/2addr v8, v11

    .line 334
    cmp-long v8, v8, v11

    .line 335
    .line 336
    if-eqz v8, :cond_10

    .line 337
    .line 338
    sub-int v8, v5, v4

    .line 339
    .line 340
    not-int v8, v8

    .line 341
    ushr-int/lit8 v8, v8, 0x1f

    .line 342
    .line 343
    const/16 v9, 0x8

    .line 344
    .line 345
    rsub-int/lit8 v8, v8, 0x8

    .line 346
    .line 347
    const/4 v9, 0x0

    .line 348
    :goto_b
    if-ge v9, v8, :cond_f

    .line 349
    .line 350
    const-wide/16 v13, 0xff

    .line 351
    .line 352
    and-long v15, v6, v13

    .line 353
    .line 354
    const-wide/16 v17, 0x80

    .line 355
    .line 356
    cmp-long v15, v15, v17

    .line 357
    .line 358
    if-gez v15, :cond_d

    .line 359
    .line 360
    const/4 v15, 0x1

    .line 361
    goto :goto_c

    .line 362
    :cond_d
    const/4 v15, 0x0

    .line 363
    :goto_c
    if-eqz v15, :cond_e

    .line 364
    .line 365
    shl-int/lit8 v15, v5, 0x3

    .line 366
    .line 367
    add-int/2addr v15, v9

    .line 368
    aget-object v16, v2, v15

    .line 369
    .line 370
    check-cast v16, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 371
    .line 372
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/RecomposeScopeImpl;->t()Z

    .line 373
    .line 374
    .line 375
    move-result v16

    .line 376
    if-nez v16, :cond_e

    .line 377
    .line 378
    invoke-virtual {v1, v15}, Landroidx/collection/MutableScatterSet;->y(I)V

    .line 379
    .line 380
    .line 381
    :cond_e
    const/16 v15, 0x8

    .line 382
    .line 383
    shr-long/2addr v6, v15

    .line 384
    add-int/lit8 v9, v9, 0x1

    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_f
    const-wide/16 v13, 0xff

    .line 388
    .line 389
    const/16 v15, 0x8

    .line 390
    .line 391
    const-wide/16 v17, 0x80

    .line 392
    .line 393
    if-ne v8, v15, :cond_11

    .line 394
    .line 395
    goto :goto_d

    .line 396
    :cond_10
    const-wide/16 v13, 0xff

    .line 397
    .line 398
    const/16 v15, 0x8

    .line 399
    .line 400
    const-wide/16 v17, 0x80

    .line 401
    .line 402
    :goto_d
    if-eq v5, v4, :cond_11

    .line 403
    .line 404
    add-int/lit8 v5, v5, 0x1

    .line 405
    .line 406
    goto :goto_a

    .line 407
    :cond_11
    return-void
.end method


# virtual methods
.method public final E()Landroidx/compose/runtime/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->r:Landroidx/compose/runtime/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I(Landroidx/compose/runtime/z;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/e;->c(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/e;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final J(Ljava/lang/Object;Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/collection/e;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/o;->D()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_6

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->B0()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_6

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->H(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->w(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_6

    .line 28
    .line 29
    instance-of v4, v1, Landroidx/compose/runtime/snapshots/d0;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    move-object v4, v1

    .line 34
    check-cast v4, Landroidx/compose/runtime/snapshots/d0;

    .line 35
    .line 36
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/f;->a(I)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/d0;->recordReadIn-h_f27i8$runtime_release(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v4, v0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 44
    .line 45
    invoke-virtual {v4, v1, v2}, Landroidx/compose/runtime/collection/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    instance-of v4, v1, Landroidx/compose/runtime/z;

    .line 49
    .line 50
    if-eqz v4, :cond_6

    .line 51
    .line 52
    move-object v4, v1

    .line 53
    check-cast v4, Landroidx/compose/runtime/z;

    .line 54
    .line 55
    invoke-interface {v4}, Landroidx/compose/runtime/z;->b()Landroidx/compose/runtime/z$a;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v6, v0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 60
    .line 61
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/collection/e;->g(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v5}, Landroidx/compose/runtime/z$a;->b()Landroidx/collection/p0;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iget-object v7, v6, Landroidx/collection/p0;->b:[Ljava/lang/Object;

    .line 69
    .line 70
    iget-object v6, v6, Landroidx/collection/p0;->a:[J

    .line 71
    .line 72
    array-length v8, v6

    .line 73
    add-int/lit8 v8, v8, -0x2

    .line 74
    .line 75
    if-ltz v8, :cond_5

    .line 76
    .line 77
    const/4 v10, 0x0

    .line 78
    :goto_0
    aget-wide v11, v6, v10

    .line 79
    .line 80
    not-long v13, v11

    .line 81
    const/4 v15, 0x7

    .line 82
    shl-long/2addr v13, v15

    .line 83
    and-long/2addr v13, v11

    .line 84
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    and-long/2addr v13, v15

    .line 90
    cmp-long v13, v13, v15

    .line 91
    .line 92
    if-eqz v13, :cond_4

    .line 93
    .line 94
    sub-int v13, v10, v8

    .line 95
    .line 96
    not-int v13, v13

    .line 97
    ushr-int/lit8 v13, v13, 0x1f

    .line 98
    .line 99
    const/16 v14, 0x8

    .line 100
    .line 101
    rsub-int/lit8 v13, v13, 0x8

    .line 102
    .line 103
    const/4 v15, 0x0

    .line 104
    :goto_1
    if-ge v15, v13, :cond_3

    .line 105
    .line 106
    const-wide/16 v16, 0xff

    .line 107
    .line 108
    and-long v16, v11, v16

    .line 109
    .line 110
    const-wide/16 v18, 0x80

    .line 111
    .line 112
    cmp-long v16, v16, v18

    .line 113
    .line 114
    if-gez v16, :cond_2

    .line 115
    .line 116
    shl-int/lit8 v16, v10, 0x3

    .line 117
    .line 118
    add-int v16, v16, v15

    .line 119
    .line 120
    aget-object v16, v7, v16

    .line 121
    .line 122
    move-object/from16 v9, v16

    .line 123
    .line 124
    check-cast v9, Landroidx/compose/runtime/snapshots/c0;

    .line 125
    .line 126
    instance-of v14, v9, Landroidx/compose/runtime/snapshots/d0;

    .line 127
    .line 128
    if-eqz v14, :cond_1

    .line 129
    .line 130
    move-object v14, v9

    .line 131
    check-cast v14, Landroidx/compose/runtime/snapshots/d0;

    .line 132
    .line 133
    move-object/from16 v18, v6

    .line 134
    .line 135
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/f;->a(I)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/snapshots/d0;->recordReadIn-h_f27i8$runtime_release(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_1
    move-object/from16 v18, v6

    .line 144
    .line 145
    :goto_2
    iget-object v6, v0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 146
    .line 147
    invoke-virtual {v6, v9, v1}, Landroidx/compose/runtime/collection/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    const/16 v6, 0x8

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_2
    move-object/from16 v18, v6

    .line 154
    .line 155
    move v6, v14

    .line 156
    :goto_3
    shr-long/2addr v11, v6

    .line 157
    add-int/lit8 v15, v15, 0x1

    .line 158
    .line 159
    move v14, v6

    .line 160
    move-object/from16 v6, v18

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    move-object/from16 v18, v6

    .line 164
    .line 165
    move v6, v14

    .line 166
    if-ne v13, v6, :cond_5

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_4
    move-object/from16 v18, v6

    .line 170
    .line 171
    :goto_4
    if-eq v10, v8, :cond_5

    .line 172
    .line 173
    add-int/lit8 v10, v10, 0x1

    .line 174
    .line 175
    move-object/from16 v6, v18

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_5
    invoke-interface {v5}, Landroidx/compose/runtime/z$a;->a()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v2, v4, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->v(Landroidx/compose/runtime/z;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    return-void
.end method

.method public b(Lkotlin/jvm/functions/Function2;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/o;->B()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/runtime/o;->K()Landroidx/compose/runtime/collection/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-direct {p0}, Landroidx/compose/runtime/o;->H()Landroidx/compose/runtime/tooling/c;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 15
    .line 16
    invoke-virtual {v2, v1, p1}, Landroidx/compose/runtime/ComposerImpl;->g0(Landroidx/compose/runtime/collection/e;Lkotlin/jvm/functions/Function2;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    .line 18
    .line 19
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :catchall_1
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    :try_start_4
    iput-object v1, p0, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 27
    .line 28
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 29
    :goto_0
    :try_start_5
    monitor-exit v0

    .line 30
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 31
    :goto_1
    :try_start_6
    iget-object v0, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 32
    .line 33
    check-cast v0, Ljava/util/Collection;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Landroidx/compose/runtime/o$a;

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/compose/runtime/o$a;->f()V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catch_1
    move-exception p1

    .line 53
    goto :goto_3

    .line 54
    :cond_0
    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 55
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/runtime/o;->s()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o;->l:Ls/a;

    .line 5
    .line 6
    invoke-virtual {v1}, Ls/a;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/runtime/o;->l:Ls/a;

    .line 13
    .line 14
    invoke-direct {p0, v1}, Landroidx/compose/runtime/o;->y(Ls/a;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 25
    .line 26
    check-cast v2, Ljava/util/Collection;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    new-instance v2, Landroidx/compose/runtime/o$a;

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 37
    .line 38
    invoke-direct {v2, v3}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/compose/runtime/o$a;->f()V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_1
    move-exception v1

    .line 46
    goto :goto_4

    .line 47
    :catch_0
    move-exception v1

    .line 48
    goto :goto_3

    .line 49
    :cond_1
    :goto_2
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/runtime/o;->s()V

    .line 51
    .line 52
    .line 53
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :goto_4
    monitor-exit v0

    .line 55
    throw v1
.end method

.method public d(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/o;->A(Lkotlin/jvm/functions/Function2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public deactivate()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o;->f:Landroidx/compose/runtime/j2;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/j2;->p()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    move v1, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    :goto_0
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 20
    .line 21
    check-cast v4, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_4

    .line 32
    :cond_1
    :goto_1
    const-string v4, "Compose:deactivate"

    .line 33
    .line 34
    sget-object v5, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 35
    .line 36
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    new-instance v6, Landroidx/compose/runtime/o$a;

    .line 41
    .line 42
    iget-object v7, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 43
    .line 44
    invoke-direct {v6, v7}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 45
    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/compose/runtime/o;->b:Landroidx/compose/runtime/f;

    .line 50
    .line 51
    invoke-interface {v1}, Landroidx/compose/runtime/f;->h()V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroidx/compose/runtime/o;->f:Landroidx/compose/runtime/j2;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/compose/runtime/j2;->x()Landroidx/compose/runtime/m2;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :try_start_2
    invoke-static {v1, v6}, Landroidx/compose/runtime/k;->t(Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 64
    .line 65
    :try_start_3
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/m2;->L(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroidx/compose/runtime/o;->b:Landroidx/compose/runtime/f;

    .line 69
    .line 70
    invoke-interface {v1}, Landroidx/compose/runtime/f;->e()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Landroidx/compose/runtime/o$a;->g()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception v1

    .line 78
    goto :goto_3

    .line 79
    :catchall_2
    move-exception v3

    .line 80
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/m2;->L(Z)V

    .line 81
    .line 82
    .line 83
    throw v3

    .line 84
    :cond_2
    :goto_2
    invoke-virtual {v6}, Landroidx/compose/runtime/o$a;->f()V

    .line 85
    .line 86
    .line 87
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    .line 89
    :try_start_4
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/e;->b()V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/e;->b()V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/e;->b()V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Landroidx/compose/runtime/o;->k:Ls/a;

    .line 108
    .line 109
    invoke-virtual {v1}, Ls/a;->a()V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Landroidx/compose/runtime/o;->l:Ls/a;

    .line 113
    .line 114
    invoke-virtual {v1}, Ls/a;->a()V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->l0()V

    .line 120
    .line 121
    .line 122
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 126
    :goto_3
    :try_start_5
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 127
    .line 128
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    :goto_4
    monitor-exit v0

    .line 133
    throw v1
.end method

.method public dispose()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->K0()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block."

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroidx/compose/runtime/o;->v:Z

    .line 22
    .line 23
    if-nez v1, :cond_6

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Landroidx/compose/runtime/o;->v:Z

    .line 27
    .line 28
    sget-object v2, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->a:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->b()Lkotlin/jvm/functions/Function2;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Landroidx/compose/runtime/o;->w:Lkotlin/jvm/functions/Function2;

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->C0()Ls/a;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-direct {p0, v2}, Landroidx/compose/runtime/o;->y(Ls/a;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v2, p0, Landroidx/compose/runtime/o;->f:Landroidx/compose/runtime/j2;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/compose/runtime/j2;->p()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x0

    .line 54
    if-lez v2, :cond_2

    .line 55
    .line 56
    move v2, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v2, v3

    .line 59
    :goto_1
    if-nez v2, :cond_3

    .line 60
    .line 61
    iget-object v4, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 62
    .line 63
    check-cast v4, Ljava/util/Collection;

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_5

    .line 70
    .line 71
    :cond_3
    new-instance v4, Landroidx/compose/runtime/o$a;

    .line 72
    .line 73
    iget-object v5, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 74
    .line 75
    invoke-direct {v4, v5}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 76
    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    iget-object v2, p0, Landroidx/compose/runtime/o;->b:Landroidx/compose/runtime/f;

    .line 81
    .line 82
    invoke-interface {v2}, Landroidx/compose/runtime/f;->h()V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Landroidx/compose/runtime/o;->f:Landroidx/compose/runtime/j2;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroidx/compose/runtime/j2;->x()Landroidx/compose/runtime/m2;

    .line 88
    .line 89
    .line 90
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    invoke-static {v2, v4}, Landroidx/compose/runtime/k;->K(Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V

    .line 92
    .line 93
    .line 94
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    .line 96
    :try_start_2
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/m2;->L(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Landroidx/compose/runtime/o;->b:Landroidx/compose/runtime/f;

    .line 100
    .line 101
    invoke-interface {v1}, Landroidx/compose/runtime/f;->clear()V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Landroidx/compose/runtime/o;->b:Landroidx/compose/runtime/f;

    .line 105
    .line 106
    invoke-interface {v1}, Landroidx/compose/runtime/f;->e()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Landroidx/compose/runtime/o$a;->g()V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_1
    move-exception v1

    .line 114
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/m2;->L(Z)V

    .line 115
    .line 116
    .line 117
    throw v1

    .line 118
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/o$a;->f()V

    .line 119
    .line 120
    .line 121
    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 122
    .line 123
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->m0()V

    .line 124
    .line 125
    .line 126
    :cond_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    monitor-exit v0

    .line 129
    iget-object v0, p0, Landroidx/compose/runtime/o;->a:Landroidx/compose/runtime/m;

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/m;->r(Landroidx/compose/runtime/y;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :goto_3
    monitor-exit v0

    .line 136
    throw v1
.end method

.method public e(Landroidx/compose/runtime/x0;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/o$a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/runtime/x0;->a()Landroidx/compose/runtime/j2;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/compose/runtime/j2;->x()Landroidx/compose/runtime/m2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :try_start_0
    invoke-static {p1, v0}, Landroidx/compose/runtime/k;->K(Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/m2;->L(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/runtime/o$a;->g()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/m2;->L(Z)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public f(Ljava/util/List;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    .line 10
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    check-cast v4, Lkotlin/Pair;

    .line 15
    .line 16
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroidx/compose/runtime/y0;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/compose/runtime/y0;->b()Landroidx/compose/runtime/y;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    move v0, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/2addr v3, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    invoke-static {v0}, Landroidx/compose/runtime/k;->O(Z)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->H0(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    iget-object v0, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 49
    .line 50
    check-cast v0, Ljava/util/Collection;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    new-instance v0, Landroidx/compose/runtime/o$a;

    .line 59
    .line 60
    iget-object v1, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/runtime/o$a;->f()V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception p1

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    :goto_2
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/runtime/o;->s()V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public g(Landroidx/compose/runtime/y;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-ltz p2, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/o;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/runtime/o;->p:Landroidx/compose/runtime/o;

    .line 14
    .line 15
    iput p2, p0, Landroidx/compose/runtime/o;->q:I

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    const/4 p2, 0x0

    .line 19
    :try_start_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iput-object p2, p0, Landroidx/compose/runtime/o;->p:Landroidx/compose/runtime/o;

    .line 24
    .line 25
    iput p1, p0, Landroidx/compose/runtime/o;->q:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p3

    .line 29
    iput-object p2, p0, Landroidx/compose/runtime/o;->p:Landroidx/compose/runtime/o;

    .line 30
    .line 31
    iput p1, p0, Landroidx/compose/runtime/o;->q:I

    .line 32
    .line 33
    throw p3

    .line 34
    :cond_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    :goto_0
    return-object p3
.end method

.method public h(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/compose/runtime/o;->o:Z

    .line 3
    .line 4
    return-void
.end method

.method public i()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/o;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    invoke-direct {p0}, Landroidx/compose/runtime/o;->K()Landroidx/compose/runtime/collection/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-direct {p0}, Landroidx/compose/runtime/o;->H()Landroidx/compose/runtime/tooling/c;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->R0(Landroidx/compose/runtime/collection/e;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/compose/runtime/o;->C()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception v2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return v2

    .line 32
    :goto_1
    :try_start_3
    iput-object v1, p0, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 33
    .line 34
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :goto_2
    :try_start_4
    iget-object v2, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 36
    .line 37
    check-cast v2, Ljava/util/Collection;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    new-instance v2, Landroidx/compose/runtime/o$a;

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 48
    .line 49
    invoke-direct {v2, v3}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroidx/compose/runtime/o$a;->f()V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catchall_1
    move-exception v1

    .line 57
    goto :goto_5

    .line 58
    :catch_1
    move-exception v1

    .line 59
    goto :goto_4

    .line 60
    :cond_1
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Landroidx/compose/runtime/o;->s()V

    .line 62
    .line 63
    .line 64
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 65
    :goto_5
    monitor-exit v0

    .line 66
    throw v1
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/o;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public j(Ljava/util/Set;)Z
    .locals 14

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/ScatterSetWrapper;->a()Landroidx/collection/ScatterSet;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/collection/ScatterSet;->a:[J

    .line 16
    .line 17
    array-length v3, p1

    .line 18
    add-int/lit8 v3, v3, -0x2

    .line 19
    .line 20
    if-ltz v3, :cond_7

    .line 21
    .line 22
    move v4, v1

    .line 23
    :goto_0
    aget-wide v5, p1, v4

    .line 24
    .line 25
    not-long v7, v5

    .line 26
    const/4 v9, 0x7

    .line 27
    shl-long/2addr v7, v9

    .line 28
    and-long/2addr v7, v5

    .line 29
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v7, v9

    .line 35
    cmp-long v7, v7, v9

    .line 36
    .line 37
    if-eqz v7, :cond_3

    .line 38
    .line 39
    sub-int v7, v4, v3

    .line 40
    .line 41
    not-int v7, v7

    .line 42
    ushr-int/lit8 v7, v7, 0x1f

    .line 43
    .line 44
    const/16 v8, 0x8

    .line 45
    .line 46
    rsub-int/lit8 v7, v7, 0x8

    .line 47
    .line 48
    move v9, v1

    .line 49
    :goto_1
    if-ge v9, v7, :cond_2

    .line 50
    .line 51
    const-wide/16 v10, 0xff

    .line 52
    .line 53
    and-long/2addr v10, v5

    .line 54
    const-wide/16 v12, 0x80

    .line 55
    .line 56
    cmp-long v10, v10, v12

    .line 57
    .line 58
    if-gez v10, :cond_1

    .line 59
    .line 60
    shl-int/lit8 v10, v4, 0x3

    .line 61
    .line 62
    add-int/2addr v10, v9

    .line 63
    aget-object v10, v0, v10

    .line 64
    .line 65
    iget-object v11, p0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 66
    .line 67
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/collection/e;->c(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-nez v11, :cond_0

    .line 72
    .line 73
    iget-object v11, p0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 74
    .line 75
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/collection/e;->c(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_1

    .line 80
    .line 81
    :cond_0
    return v2

    .line 82
    :cond_1
    shr-long/2addr v5, v8

    .line 83
    add-int/lit8 v9, v9, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    if-ne v7, v8, :cond_7

    .line 87
    .line 88
    :cond_3
    if-eq v4, v3, :cond_7

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    check-cast p1, Ljava/lang/Iterable;

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v3, p0, Landroidx/compose/runtime/o;->g:Landroidx/compose/runtime/collection/e;

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/e;->c(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_6

    .line 116
    .line 117
    iget-object v3, p0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 118
    .line 119
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/e;->c(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    :cond_6
    return v2

    .line 126
    :cond_7
    return v1
.end method

.method public k(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->C(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->i()Landroidx/compose/runtime/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/c;->b()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v2, p0, Landroidx/compose/runtime/o;->f:Landroidx/compose/runtime/j2;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/j2;->y(Landroidx/compose/runtime/c;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/o;->p:Landroidx/compose/runtime/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-direct {v2, p1, p2}, Landroidx/compose/runtime/o;->L(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, v1, :cond_2

    .line 45
    .line 46
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IMMINENT:Landroidx/compose/runtime/InvalidationResult;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 50
    .line 51
    return-object p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v0

    .line 54
    throw p1

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->j()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_4
    invoke-direct {p0, p1, v0, p2}, Landroidx/compose/runtime/o;->F(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/c;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_5
    :goto_0
    sget-object p1, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    .line 70
    .line 71
    return-object p1
.end method

.method public l(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->P0(Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Ljava/util/Set;)V
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    move v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/p;->c()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    if-eqz v2, :cond_2

    .line 21
    .line 22
    move-object v2, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    instance-of v2, v0, Ljava/util/Set;

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    new-array v2, v2, [Ljava/util/Set;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v0, v2, v3

    .line 33
    .line 34
    aput-object p1, v2, v1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    instance-of v1, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    if-eqz v1, :cond_5

    .line 40
    .line 41
    const-string v1, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v1, v0

    .line 47
    check-cast v1, [Ljava/util/Set;

    .line 48
    .line 49
    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->C([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_1
    iget-object v1, p0, Landroidx/compose/runtime/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    .line 55
    invoke-static {v1, v0, v2}, Landroidx/compose/animation/core/j0;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter p1

    .line 66
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/runtime/o;->C()V

    .line 67
    .line 68
    .line 69
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    monitor-exit p1

    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p1

    .line 75
    throw v0

    .line 76
    :cond_4
    :goto_2
    return-void

    .line 77
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v1, "corrupt pendingModifications: "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroidx/compose/runtime/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public n()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o;->k:Ls/a;

    .line 5
    .line 6
    invoke-direct {p0, v1}, Landroidx/compose/runtime/o;->y(Ls/a;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/runtime/o;->C()V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 18
    .line 19
    check-cast v2, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Landroidx/compose/runtime/o$a;

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/compose/runtime/o$a;->f()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    goto :goto_2

    .line 40
    :catch_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/runtime/o;->s()V

    .line 44
    .line 45
    .line 46
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :goto_2
    monitor-exit v0

    .line 48
    throw v1
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->K0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public p(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->m1()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/compose/runtime/o;->A(Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->s0()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public q(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/o;->G(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/o;->j:Landroidx/compose/runtime/collection/e;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/e;->d()Landroidx/collection/n0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    instance-of v1, p1, Landroidx/collection/MutableScatterSet;

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 24
    .line 25
    iget-object v1, p1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/collection/ScatterSet;->a:[J

    .line 28
    .line 29
    array-length v2, p1

    .line 30
    add-int/lit8 v2, v2, -0x2

    .line 31
    .line 32
    if-ltz v2, :cond_4

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    move v4, v3

    .line 36
    :goto_0
    aget-wide v5, p1, v4

    .line 37
    .line 38
    not-long v7, v5

    .line 39
    const/4 v9, 0x7

    .line 40
    shl-long/2addr v7, v9

    .line 41
    and-long/2addr v7, v5

    .line 42
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v7, v9

    .line 48
    cmp-long v7, v7, v9

    .line 49
    .line 50
    if-eqz v7, :cond_2

    .line 51
    .line 52
    sub-int v7, v4, v2

    .line 53
    .line 54
    not-int v7, v7

    .line 55
    ushr-int/lit8 v7, v7, 0x1f

    .line 56
    .line 57
    const/16 v8, 0x8

    .line 58
    .line 59
    rsub-int/lit8 v7, v7, 0x8

    .line 60
    .line 61
    move v9, v3

    .line 62
    :goto_1
    if-ge v9, v7, :cond_1

    .line 63
    .line 64
    const-wide/16 v10, 0xff

    .line 65
    .line 66
    and-long/2addr v10, v5

    .line 67
    const-wide/16 v12, 0x80

    .line 68
    .line 69
    cmp-long v10, v10, v12

    .line 70
    .line 71
    if-gez v10, :cond_0

    .line 72
    .line 73
    shl-int/lit8 v10, v4, 0x3

    .line 74
    .line 75
    add-int/2addr v10, v9

    .line 76
    aget-object v10, v1, v10

    .line 77
    .line 78
    check-cast v10, Landroidx/compose/runtime/z;

    .line 79
    .line 80
    invoke-direct {p0, v10}, Landroidx/compose/runtime/o;->G(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_3

    .line 86
    :cond_0
    :goto_2
    shr-long/2addr v5, v8

    .line 87
    add-int/lit8 v9, v9, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    if-ne v7, v8, :cond_4

    .line 91
    .line 92
    :cond_2
    if-eq v4, v2, :cond_4

    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    check-cast p1, Landroidx/compose/runtime/z;

    .line 98
    .line 99
    invoke-direct {p0, p1}, Landroidx/compose/runtime/o;->G(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_3
    monitor-exit v0

    .line 107
    throw p1
.end method

.method public r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o;->n:Landroidx/compose/runtime/collection/e;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/e;->e()I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/o;->k:Ls/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ls/a;->a()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/o;->l:Ls/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Ls/a;->a()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 18
    .line 19
    check-cast v0, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Landroidx/compose/runtime/o$a;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/runtime/o$a;->f()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o;->s:Landroidx/compose/runtime/ComposerImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->d0()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 10
    .line 11
    check-cast v1, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Landroidx/compose/runtime/o$a;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/runtime/o$a;->f()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 37
    .line 38
    check-cast v2, Ljava/util/Collection;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    new-instance v2, Landroidx/compose/runtime/o$a;

    .line 47
    .line 48
    iget-object v3, p0, Landroidx/compose/runtime/o;->e:Ljava/util/Set;

    .line 49
    .line 50
    invoke-direct {v2, v3}, Landroidx/compose/runtime/o$a;-><init>(Ljava/util/Set;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/compose/runtime/o$a;->f()V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_1
    move-exception v1

    .line 58
    goto :goto_4

    .line 59
    :catch_0
    move-exception v1

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    :goto_2
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/runtime/o;->s()V

    .line 63
    .line 64
    .line 65
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    :goto_4
    monitor-exit v0

    .line 67
    throw v1
.end method

.method public u()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o;->f:Landroidx/compose/runtime/j2;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/j2;->q()[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_2

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    instance-of v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    check-cast v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    const/4 v4, 0x0

    .line 26
    :goto_1
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/compose/runtime/RecomposeScopeImpl;->invalidate()V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_2
    monitor-exit v0

    .line 39
    throw v1
.end method
