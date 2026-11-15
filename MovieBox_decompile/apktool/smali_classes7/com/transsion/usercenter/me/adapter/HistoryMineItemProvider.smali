.class public final Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;

.field private final f:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->e:Lcom/transsion/usercenter/me/adapter/o;

    .line 5
    new-instance p1, Lcom/transsion/usercenter/me/adapter/e;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/e;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->f:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method public static synthetic A()Lcom/transsion/usercenter/me/adapter/p;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->G()Lcom/transsion/usercenter/me/adapter/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p3, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 7
    .line 8
    const-string v0, "history"

    .line 9
    .line 10
    invoke-virtual {p3, v0}, Lcom/transsion/usercenter/me/k;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p3, "/download/play_history"

    .line 14
    .line 15
    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-static {p3, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->e:Lcom/transsion/usercenter/me/adapter/o;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method private static final D(Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "view"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->E()Lcom/transsion/usercenter/me/adapter/p;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of p3, p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    sget-object p3, Lij/g;->a:Lij/g;

    .line 25
    .line 26
    invoke-virtual {p3}, Lij/g;->b()Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v4, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider$convert$2$1;

    .line 41
    .line 42
    invoke-direct {v4, p1, v0}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider$convert$2$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x3

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getOps()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p2, p3, v0, p1}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->F(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    instance-of p0, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 72
    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v4, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider$convert$2$2;

    .line 84
    .line 85
    invoke-direct {v4, p1, v0}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider$convert$2$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 86
    .line 87
    .line 88
    const/4 v5, 0x3

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v2, 0x0

    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    return-void
.end method

.method private final E()Lcom/transsion/usercenter/me/adapter/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/usercenter/me/adapter/p;

    .line 8
    .line 9
    return-object v0
.end method

.method private final F(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "/movie/detail"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p2, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :goto_0
    const-string v1, "subject_type"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "id"

    .line 27
    .line 28
    invoke-virtual {p2, v0, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string p3, "ops"

    .line 33
    .line 34
    invoke-virtual {p2, p3, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string p3, "module_name"

    .line 39
    .line 40
    const-string p4, "profiledetail"

    .line 41
    .line 42
    invoke-virtual {p2, p3, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 p3, 0x2

    .line 51
    const/4 p4, 0x0

    .line 52
    invoke-static {p2, p1, p4, p3, p4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private static final G()Lcom/transsion/usercenter/me/adapter/p;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/usercenter/me/adapter/p;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/usercenter/me/adapter/p;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->D(Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 7

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 27
    .line 28
    const-string v2, "itemView"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lcom/transsion/usercenter/me/adapter/c;

    .line 34
    .line 35
    invoke-direct {v4, p1, p0, p2}, Lcom/transsion/usercenter/me/adapter/c;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    const/4 v6, 0x0

    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    invoke-static/range {v1 .. v6}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sget p2, Lcom/transsion/usercenter/R$id;->historyRv:I

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-direct {p2, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->E()Lcom/transsion/usercenter/me/adapter/p;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->E()Lcom/transsion/usercenter/me/adapter/p;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    new-instance v1, Lcom/transsion/usercenter/me/adapter/d;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/me/adapter/d;-><init>(Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->E()Lcom/transsion/usercenter/me/adapter/p;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;->getList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/util/Collection;

    .line 94
    .line 95
    invoke-virtual {p2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MeHistoryInfo;->getList()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Ljava/util/Collection;

    .line 103
    .line 104
    if-eqz p2, :cond_3

    .line 105
    .line 106
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_2

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move p2, v2

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    :goto_1
    const/4 p2, 0x1

    .line 116
    :goto_2
    if-nez p2, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    const/16 v2, 0x8

    .line 120
    .line 121
    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/HistoryMineItemProvider;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_history_layout:I

    .line 2
    .line 3
    return v0
.end method
