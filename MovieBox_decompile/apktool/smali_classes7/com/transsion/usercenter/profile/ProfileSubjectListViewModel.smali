.class public final Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;
.super Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;
.source "source.java"


# instance fields
.field private k:I

.field private l:Ljava/lang/String;

.field private final m:Lkotlin/Lazy;

.field private final n:Lkotlin/Lazy;

.field private o:I

.field private p:Ljava/lang/String;


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
    invoke-direct {p0, p1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/transsion/usercenter/profile/j0;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/usercenter/profile/j0;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->m:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/usercenter/profile/k0;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/transsion/usercenter/profile/k0;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->n:Lkotlin/Lazy;

    .line 30
    .line 31
    const/16 p1, 0xa

    .line 32
    .line 33
    iput p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->o:I

    .line 34
    .line 35
    const-string p1, ""

    .line 36
    .line 37
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->p:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic O()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->e0()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic P(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->g0(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->f0()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic R(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->o()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic T(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Lcom/transsion/usercenter/profile/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->a0()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic U(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic V(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->y()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic W(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->b0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic X(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final Y()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->m:Lkotlin/Lazy;

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

.method private final a0()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->n:Lkotlin/Lazy;

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

.method private final b0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->l:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->l:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Y()Lqx/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 42
    :goto_2
    return v0
.end method

.method private final c0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->l:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Y()Lqx/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Y()Lqx/a;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-interface {v2}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Y()Lqx/a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    invoke-interface {v0}, Lqx/a;->a()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-ne v0, v3, :cond_5

    .line 69
    .line 70
    :cond_4
    const/4 v3, 0x0

    .line 71
    :cond_5
    :goto_1
    return v3
.end method

.method private final d0(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$loadNewSubject$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$loadNewSubject$1;-><init>(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method private static final e0()Lqx/a;
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

.method private static final f0()Lcom/transsion/usercenter/profile/b;
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

.method private static final g0(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/PublishEvent;->getPostId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->d0(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public A()Lcom/transsion/moviedetailapi/enum/PostListSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/enum/PostListSource;->PROFILE:Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Lcom/transsion/moviedetailapi/enum/ProfileSubSource;
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->POSTS:Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->LIKES:Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public E(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->l:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Y()Lqx/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v0

    .line 24
    :goto_0
    if-nez p1, :cond_1

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->c0()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget v1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->y()Landroidx/lifecycle/b0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;

    .line 57
    .line 58
    invoke-direct {v1, p0, p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;-><init>(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->n(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 66
    .line 67
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$b;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$b;-><init>(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public F(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "source"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    iput v1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const-string v2, "userId"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object p1, v1

    .line 25
    :goto_1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->l:Ljava/lang/String;

    .line 26
    .line 27
    iget p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->b0()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->c0()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance p1, Lcom/transsion/usercenter/profile/l0;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/transsion/usercenter/profile/l0;-><init>(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$onCreate$$inlined$observeEvent$1;

    .line 53
    .line 54
    invoke-direct {v5, v0, p1, v1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$onCreate$$inlined$observeEvent$1;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x3

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 62
    .line 63
    .line 64
    :cond_2
    const-string p1, "0"

    .line 65
    .line 66
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->p:Ljava/lang/String;

    .line 67
    .line 68
    return-void
.end method

.method public Z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public h0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public w(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "profiledetail_posts"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p1, "profiledetail_likes"

    .line 9
    .line 10
    :goto_0
    return-object p1
.end method
