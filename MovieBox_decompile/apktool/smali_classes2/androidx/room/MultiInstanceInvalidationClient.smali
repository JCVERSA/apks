.class public final Landroidx/room/MultiInstanceInvalidationClient;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/room/InvalidationTracker;

.field private final c:Landroid/content/Context;

.field private final d:Lkotlinx/coroutines/n0;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:I

.field private g:Landroidx/room/j;

.field private final h:Lkotlinx/coroutines/flow/w0;

.field private final i:Landroidx/room/MultiInstanceInvalidationClient$a;

.field private final j:Landroidx/room/i;

.field private final k:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/InvalidationTracker;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "invalidationTracker"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->a:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p3, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/InvalidationTracker;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->c:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p3}, Landroidx/room/InvalidationTracker;->n()Landroidx/room/RoomDatabase;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->x()Lkotlinx/coroutines/n0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->d:Lkotlinx/coroutines/n0;

    .line 38
    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 49
    .line 50
    invoke-static {p1, p1, p2}, Lkotlinx/coroutines/flow/c1;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/w0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->h:Lkotlinx/coroutines/flow/w0;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroidx/room/InvalidationTracker;->o()[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance p2, Landroidx/room/MultiInstanceInvalidationClient$a;

    .line 61
    .line 62
    invoke-direct {p2, p0, p1}, Landroidx/room/MultiInstanceInvalidationClient$a;-><init>(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->i:Landroidx/room/MultiInstanceInvalidationClient$a;

    .line 66
    .line 67
    new-instance p1, Landroidx/room/MultiInstanceInvalidationClient$invalidationCallback$1;

    .line 68
    .line 69
    invoke-direct {p1, p0}, Landroidx/room/MultiInstanceInvalidationClient$invalidationCallback$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->j:Landroidx/room/i;

    .line 73
    .line 74
    new-instance p1, Landroidx/room/MultiInstanceInvalidationClient$b;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Landroidx/room/MultiInstanceInvalidationClient$b;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->k:Landroid/content/ServiceConnection;

    .line 80
    .line 81
    return-void
.end method

.method public static final synthetic a(Landroidx/room/MultiInstanceInvalidationClient;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic b(Landroidx/room/MultiInstanceInvalidationClient;)Lkotlinx/coroutines/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->d:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/room/MultiInstanceInvalidationClient;)Lkotlinx/coroutines/flow/w0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->h:Lkotlinx/coroutines/flow/w0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Landroidx/room/MultiInstanceInvalidationClient;)Landroidx/room/j;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Landroidx/room/MultiInstanceInvalidationClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/MultiInstanceInvalidationClient;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Landroidx/room/MultiInstanceInvalidationClient;Landroidx/room/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/j;

    .line 2
    .line 3
    return-void
.end method

.method private final i()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->j:Landroidx/room/i;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Landroidx/room/j;->r0(Landroidx/room/i;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->f:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-string v1, "ROOM"

    .line 18
    .line 19
    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final h()Landroidx/room/InvalidationTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/InvalidationTracker;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "serviceIntent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->c:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->k:Landroid/content/ServiceConnection;

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/InvalidationTracker;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->i:Landroidx/room/MultiInstanceInvalidationClient$a;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/room/InvalidationTracker;->j(Landroidx/room/InvalidationTracker$b;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->b:Landroidx/room/InvalidationTracker;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->i:Landroidx/room/MultiInstanceInvalidationClient$a;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker;->y(Landroidx/room/InvalidationTracker$b;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->g:Landroidx/room/j;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->j:Landroidx/room/i;

    .line 23
    .line 24
    iget v2, p0, Landroidx/room/MultiInstanceInvalidationClient;->f:I

    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Landroidx/room/j;->V0(Landroidx/room/i;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "ROOM"

    .line 32
    .line 33
    const-string v2, "Cannot unregister multi-instance invalidation callback"

    .line 34
    .line 35
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->c:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->k:Landroid/content/ServiceConnection;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
