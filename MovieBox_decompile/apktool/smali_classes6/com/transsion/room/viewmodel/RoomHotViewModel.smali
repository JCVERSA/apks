.class public final Lcom/transsion/room/viewmodel/RoomHotViewModel;
.super Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;
.source "source.java"


# instance fields
.field private k:I

.field private final l:Lkotlin/Lazy;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private final o:Lkotlin/Lazy;


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
    const/16 p1, 0xa

    .line 10
    .line 11
    iput p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->k:I

    .line 12
    .line 13
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/room/viewmodel/j;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsion/room/viewmodel/j;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->l:Lkotlin/Lazy;

    .line 25
    .line 26
    const-string p1, "0"

    .line 27
    .line 28
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->n:Ljava/lang/String;

    .line 29
    .line 30
    new-instance p1, Lcom/transsion/room/viewmodel/k;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/transsion/room/viewmodel/k;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->o:Lkotlin/Lazy;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic O()Lip/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->d0()Lip/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic P(Lcom/transsion/room/viewmodel/RoomHotViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->c0(Lcom/transsion/room/viewmodel/RoomHotViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;

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
    invoke-static {}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->b0()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic R(Lcom/transsion/room/viewmodel/RoomHotViewModel;)Landroidx/lifecycle/b0;
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

.method public static final synthetic S(Lcom/transsion/room/viewmodel/RoomHotViewModel;)Lcom/transsion/usercenter/profile/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->X()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic T(Lcom/transsion/room/viewmodel/RoomHotViewModel;)Landroidx/lifecycle/b0;
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

.method public static final synthetic U(Lcom/transsion/room/viewmodel/RoomHotViewModel;)Lip/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->Z()Lip/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic V(Lcom/transsion/room/viewmodel/RoomHotViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final X()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->o:Lkotlin/Lazy;

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

.method private final Z()Lip/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lip/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final a0(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/room/viewmodel/RoomHotViewModel$loadNewSubject$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/room/viewmodel/RoomHotViewModel$loadNewSubject$1;-><init>(Lcom/transsion/room/viewmodel/RoomHotViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method private static final b0()Lcom/transsion/usercenter/profile/b;
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

.method private static final c0(Lcom/transsion/room/viewmodel/RoomHotViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
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
    invoke-direct {p0, p1}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->a0(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final d0()Lip/a;
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
    const-class v1, Lip/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lip/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public A()Lcom/transsion/moviedetailapi/enum/PostListSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/enum/PostListSource;->ROOM:Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public E(Z)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->m:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->n:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->W()I

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
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->Y(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

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
    iput-object v0, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->m:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "rank_type"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "null cannot be cast to non-null type com.transsion.moviedetailapi.PostRankType"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Lcom/transsion/moviedetailapi/PostRankType;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->M(Lcom/transsion/moviedetailapi/PostRankType;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance p1, Lcom/transsion/room/viewmodel/l;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/transsion/room/viewmodel/l;-><init>(Lcom/transsion/room/viewmodel/RoomHotViewModel;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/transsion/room/viewmodel/RoomHotViewModel$onCreate$$inlined$observeEvent$1;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v3, v2, p1, v1}, Lcom/transsion/room/viewmodel/RoomHotViewModel$onCreate$$inlined$observeEvent$1;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public W()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final Y(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sortType"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v0, Lcom/transsion/room/viewmodel/RoomHotViewModel$getPostSubject$1;

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    move-object v2, v0

    .line 19
    move-object v3, p0

    .line 20
    move-object v4, p1

    .line 21
    move-object v5, p2

    .line 22
    move v6, p3

    .line 23
    move-object v7, p4

    .line 24
    move v8, p5

    .line 25
    invoke-direct/range {v2 .. v9}, Lcom/transsion/room/viewmodel/RoomHotViewModel$getPostSubject$1;-><init>(Lcom/transsion/room/viewmodel/RoomHotViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    move-object v4, v0

    .line 33
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public e0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->k:I

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
    const-string p1, "roomdetail_new"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "roomdetail_hot"

    .line 13
    .line 14
    :goto_0
    return-object p1
.end method
