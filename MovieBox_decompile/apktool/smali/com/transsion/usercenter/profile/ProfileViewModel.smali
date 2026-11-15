.class public final Lcom/transsion/usercenter/profile/ProfileViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private g:Lio/reactivex/rxjava3/disposables/c;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/transsion/usercenter/profile/m0;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/usercenter/profile/m0;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/usercenter/profile/n0;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/transsion/usercenter/profile/n0;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->c:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Landroidx/lifecycle/b0;

    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->d:Landroidx/lifecycle/b0;

    .line 37
    .line 38
    new-instance p1, Landroidx/lifecycle/b0;

    .line 39
    .line 40
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->e:Landroidx/lifecycle/b0;

    .line 44
    .line 45
    new-instance p1, Landroidx/lifecycle/b0;

    .line 46
    .line 47
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->f:Landroidx/lifecycle/b0;

    .line 51
    .line 52
    return-void
.end method

.method public static synthetic c()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/ProfileViewModel;->r()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/ProfileViewModel;->q()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/usercenter/profile/ProfileViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/usercenter/profile/ProfileViewModel;)Lqx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileViewModel;->n()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/usercenter/profile/ProfileViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/usercenter/profile/ProfileViewModel;Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->g:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    return-void
.end method

.method private final n()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final o()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/usercenter/profile/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final q()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final r()Lcom/transsion/usercenter/profile/b;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/usercenter/profile/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/usercenter/profile/b;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final i()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileViewModel;->o()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lcom/transsion/usercenter/profile/b$a;->g(Lcom/transsion/usercenter/profile/b;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 20
    .line 21
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/transsion/usercenter/profile/ProfileViewModel$a;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/profile/ProfileViewModel$a;-><init>(Lcom/transsion/usercenter/profile/ProfileViewModel;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/usercenter/profile/ProfileViewModel$fetchLatestDownloadList$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/usercenter/profile/ProfileViewModel$fetchLatestDownloadList$1;-><init>(Lcom/transsion/usercenter/profile/ProfileViewModel;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->g:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->g:Lio/reactivex/rxjava3/disposables/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileViewModel;->o()Lcom/transsion/usercenter/profile/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v1, p1

    .line 28
    :goto_0
    const/4 v2, 0x2

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {v0, v1, v3, v2, v3}, Lcom/transsion/usercenter/profile/b$a;->h(Lcom/transsion/usercenter/profile/b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lcom/transsion/usercenter/profile/ProfileViewModel$b;

    .line 43
    .line 44
    invoke-direct {v1, p1, p0}, Lcom/transsion/usercenter/profile/ProfileViewModel$b;-><init>(Ljava/lang/String;Lcom/transsion/usercenter/profile/ProfileViewModel;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->x(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v0, Lcom/transsion/usercenter/profile/ProfileViewModel$c;->a:Lcom/transsion/usercenter/profile/ProfileViewModel$c;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->h(Lyx/f;)Lio/reactivex/rxjava3/core/j;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 58
    .line 59
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Lcom/transsion/usercenter/profile/ProfileViewModel$d;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/ProfileViewModel$d;-><init>(Lcom/transsion/usercenter/profile/ProfileViewModel;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method
