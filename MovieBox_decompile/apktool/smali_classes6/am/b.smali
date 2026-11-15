.class public abstract Lam/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Ljava/lang/Object;

.field private volatile c:Landroidx/lifecycle/b0;

.field private volatile d:Lio/reactivex/rxjava3/disposables/c;

.field private volatile e:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lam/b;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method private final e(Landroidx/lifecycle/b0;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lam/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    iget-object v2, p0, Lam/b;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "TAG"

    .line 12
    .line 13
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v3, "load data from preload"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lam/b;->b:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lam/b;->b:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    :cond_1
    iput-object p1, p0, Lam/b;->c:Landroidx/lifecycle/b0;

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method public static synthetic g(Lam/b;Landroidx/lifecycle/b0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lam/b;->f(Landroidx/lifecycle/b0;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: loadData"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Object;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lam/b;->b:Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lam/b;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lam/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lam/b;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    iget-object v3, p0, Lam/b;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x4

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v4, "load data handleFailureResult :"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    iget-object v9, p0, Lam/b;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v12, 0x4

    .line 31
    const/4 v13, 0x0

    .line 32
    const-string v10, "load data handleFailureResult : return to ui"

    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lam/b;->c:Landroidx/lifecycle/b0;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lam/b;->c:Landroidx/lifecycle/b0;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    iget-object p1, p0, Lam/b;->d:Lio/reactivex/rxjava3/disposables/c;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-static {p1}, Lam/d;->a(Lio/reactivex/rxjava3/disposables/c;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lam/b;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lam/b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    iget-object v3, p0, Lam/b;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x4

    .line 17
    const/4 v7, 0x0

    .line 18
    const-string v4, "load data handleSuccessResult : cache data"

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 26
    .line 27
    iget-object v9, p0, Lam/b;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v12, 0x4

    .line 33
    const/4 v13, 0x0

    .line 34
    const-string v10, "load data handleSuccessResult : return to ui"

    .line 35
    .line 36
    const/4 v11, 0x0

    .line 37
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lam/b;->c:Landroidx/lifecycle/b0;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lam/b;->c:Landroidx/lifecycle/b0;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    iget-object p1, p0, Lam/b;->d:Lio/reactivex/rxjava3/disposables/c;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-static {p1}, Lam/d;->a(Lio/reactivex/rxjava3/disposables/c;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method public final f(Landroidx/lifecycle/b0;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lam/b;->e(Landroidx/lifecycle/b0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    iget-object v2, p0, Lam/b;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v7, "TAG"

    .line 12
    .line 13
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lam/b;->d:Lio/reactivex/rxjava3/disposables/c;

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "loadData  disposable:"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "  this:"

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    move-object v1, v0

    .line 47
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lam/b;->d:Lio/reactivex/rxjava3/disposables/c;

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lam/b;->e:Lkotlinx/coroutines/t1;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-interface {v1}, Lkotlinx/coroutines/t1;->isActive()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/4 v2, 0x1

    .line 70
    if-ne v1, v2, :cond_1

    .line 71
    .line 72
    :goto_0
    iget-object v2, p0, Lam/b;->a:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 v5, 0x4

    .line 78
    const/4 v6, 0x0

    .line 79
    const-string v3, "load data ing .. wait"

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    move-object v1, v0

    .line 83
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iget-object v2, p0, Lam/b;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v5, 0x4

    .line 93
    const/4 v6, 0x0

    .line 94
    const-string v3, "loadDataFromService"

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    move-object v1, v0

    .line 98
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lam/b;->h(Landroidx/lifecycle/b0;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    return-void
.end method

.method public abstract h(Landroidx/lifecycle/b0;)V
.end method

.method public final i(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lam/b;->d:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    return-void
.end method

.method public final j(Lkotlinx/coroutines/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lam/b;->e:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    return-void
.end method
