.class public final Lcom/transsion/moviedetail/viewmodel/HotViewModel;
.super Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;
.source "source.java"


# instance fields
.field private final k:Lkotlin/Lazy;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private final p:Landroidx/lifecycle/b0;

.field private final q:Lkotlin/Lazy;


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
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/moviedetail/viewmodel/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/moviedetail/viewmodel/a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->k:Lkotlin/Lazy;

    .line 21
    .line 22
    const-string p1, "0"

    .line 23
    .line 24
    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->n:Ljava/lang/String;

    .line 25
    .line 26
    new-instance p1, Landroidx/lifecycle/b0;

    .line 27
    .line 28
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->p:Landroidx/lifecycle/b0;

    .line 32
    .line 33
    new-instance p1, Lcom/transsion/moviedetail/viewmodel/b;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/transsion/moviedetail/viewmodel/b;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->q:Lkotlin/Lazy;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic O()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->h0()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic P(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->i0(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q()Lom/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->j0()Lom/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic R(Lcom/transsion/moviedetail/viewmodel/HotViewModel;)Landroidx/lifecycle/b0;
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

.method public static final synthetic S(Lcom/transsion/moviedetail/viewmodel/HotViewModel;)Lcom/transsion/usercenter/profile/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->Y()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic T(Lcom/transsion/moviedetail/viewmodel/HotViewModel;)Landroidx/lifecycle/b0;
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

.method public static final synthetic U(Lcom/transsion/moviedetail/viewmodel/HotViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->p:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic V(Lcom/transsion/moviedetail/viewmodel/HotViewModel;)Lom/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->e0()Lom/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic W(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final Y()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->q:Lkotlin/Lazy;

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

.method private final a0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v9, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1;

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    move-object v1, v9

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p2

    .line 12
    move v5, p3

    .line 13
    move-object v6, p4

    .line 14
    move v7, p5

    .line 15
    invoke-direct/range {v1 .. v8}, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getPostSubject$1;-><init>(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    move-object v3, v9

    .line 23
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p1, "1"

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->b0(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final e0()Lom/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lom/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g0(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/moviedetail/viewmodel/HotViewModel$loadNewSubject$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/moviedetail/viewmodel/HotViewModel$loadNewSubject$1;-><init>(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method private static final h0()Lcom/transsion/usercenter/profile/b;
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

.method private static final i0(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
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
    invoke-direct {p0, p1}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->g0(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final j0()Lom/a;
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
    const-class v1, Lom/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lom/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public A()Lcom/transsion/moviedetailapi/enum/PostListSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/enum/PostListSource;->SUBJECT:Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Lcom/transsion/moviedetailapi/enum/ProfileSubSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->COMMENTS:Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public E(Z)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->l:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->n:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->X()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->t()Lcom/transsion/moviedetailapi/PostRankType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/PostRankType;->getValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    move-object v0, p0

    .line 18
    move v5, p1

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->a0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public F(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "subject_id"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->l:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "ops"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->m:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "rank_type"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "null cannot be cast to non-null type com.transsion.moviedetailapi.PostRankType"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Lcom/transsion/moviedetailapi/PostRankType;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->M(Lcom/transsion/moviedetailapi/PostRankType;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance p1, Lcom/transsion/moviedetail/viewmodel/c;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/transsion/moviedetail/viewmodel/c;-><init>(Lcom/transsion/moviedetail/viewmodel/HotViewModel;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/transsion/moviedetail/viewmodel/HotViewModel$onCreate$$inlined$observeEvent$1;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v3, v2, p1, v1}, Lcom/transsion/moviedetail/viewmodel/HotViewModel$onCreate$$inlined$observeEvent$1;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public X()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b0(Ljava/lang/String;I)V
    .locals 7

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getRecommendRooms$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/moviedetail/viewmodel/HotViewModel$getRecommendRooms$1;-><init>(Lcom/transsion/moviedetail/viewmodel/HotViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final d0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->p:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/moviedetail/viewmodel/HotViewModel;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public w(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_NEW:Lcom/transsion/moviedetailapi/PostRankType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const-string p1, "subjectdetail_new"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "subjectdetail_hot"

    .line 13
    .line 14
    :goto_0
    return-object p1
.end method
