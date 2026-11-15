.class public final Landroidx/compose/ui/platform/AndroidUiDispatcher;
.super Lkotlinx/coroutines/i0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AndroidUiDispatcher$b;
    }
.end annotation


# static fields
.field public static final k:Landroidx/compose/ui/platform/AndroidUiDispatcher$b;

.field public static final l:I

.field private static final m:Lkotlin/Lazy;

.field private static final n:Ljava/lang/ThreadLocal;


# instance fields
.field private final a:Landroid/view/Choreographer;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Object;

.field private final d:Lkotlin/collections/ArrayDeque;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Z

.field private h:Z

.field private final i:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

.field private final j:Landroidx/compose/runtime/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/AndroidUiDispatcher$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidUiDispatcher$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->k:Landroidx/compose/ui/platform/AndroidUiDispatcher$b;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->l:I

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$Main$2;->INSTANCE:Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$Main$2;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->m:Lkotlin/Lazy;

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/ui/platform/AndroidUiDispatcher$a;

    .line 22
    .line 23
    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher$a;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->n:Ljava/lang/ThreadLocal;

    .line 27
    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/view/Choreographer;Landroid/os/Handler;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/i0;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->a:Landroid/view/Choreographer;

    .line 4
    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->b:Landroid/os/Handler;

    .line 5
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    .line 6
    new-instance p2, Lkotlin/collections/ArrayDeque;

    invoke-direct {p2}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->d:Lkotlin/collections/ArrayDeque;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->f:Ljava/util/List;

    .line 9
    new-instance p2, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;-><init>(Landroidx/compose/ui/platform/AndroidUiDispatcher;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->i:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    .line 10
    new-instance p2, Landroidx/compose/ui/platform/AndroidUiFrameClock;

    invoke-direct {p2, p1, p0}, Landroidx/compose/ui/platform/AndroidUiFrameClock;-><init>(Landroid/view/Choreographer;Landroidx/compose/ui/platform/AndroidUiDispatcher;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->j:Landroidx/compose/runtime/u0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/Choreographer;Landroid/os/Handler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;-><init>(Landroid/view/Choreographer;Landroid/os/Handler;)V

    return-void
.end method

.method private final S()Ljava/lang/Runnable;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->d:Lkotlin/collections/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0

    .line 16
    throw v1
.end method

.method private final T(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :try_start_1
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->f:Ljava/util/List;

    .line 16
    .line 17
    iput-object v3, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->f:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    if-ge v1, v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/view/Choreographer$FrameCallback;

    .line 33
    .line 34
    invoke-interface {v3, p1, p2}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v0

    .line 46
    throw p1
.end method

.method private final W()V
    .locals 2

    .line 1
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->S()Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->S()Ljava/lang/Runnable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->d:Lkotlin/collections/ArrayDeque;

    .line 19
    .line 20
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/4 v1, 0x1

    .line 33
    :goto_1
    monitor-exit v0

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0

    .line 38
    throw v1
.end method

.method public static final synthetic p()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->n:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic q(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->m:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic t(Landroidx/compose/ui/platform/AndroidUiDispatcher;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u(Landroidx/compose/ui/platform/AndroidUiDispatcher;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->T(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Landroidx/compose/ui/platform/AndroidUiDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Landroidx/compose/ui/platform/AndroidUiDispatcher;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final X(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->a:Landroid/view/Choreographer;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->i:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0

    .line 31
    throw p1
.end method

.method public final d0(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->e:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    .line 13
    throw p1
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->d:Lkotlin/collections/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->g:Z

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->g:Z

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->b:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->i:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iput-boolean p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->h:Z

    .line 28
    .line 29
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->a:Landroid/view/Choreographer;

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->i:Landroidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1;

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    monitor-exit p1

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p1

    .line 44
    throw p2
.end method

.method public final x()Landroid/view/Choreographer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->a:Landroid/view/Choreographer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/compose/runtime/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->j:Landroidx/compose/runtime/u0;

    .line 2
    .line 3
    return-object v0
.end method
