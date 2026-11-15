.class public final Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:I

.field private f:Lkotlinx/coroutines/t1;

.field private g:Lcom/transsion/home/bean/OperateItem;

.field private h:Lcom/chad/library/adapter/base/BaseQuickAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;)Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->h:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;)Lcom/transsion/home/bean/OperateItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->g:Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    return-object p0
.end method

.method private final D()V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider$registerCourse$1;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {v4, p0, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider$registerCourse$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->f:Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    return-void
.end method

.method private final E(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "browse_ranking"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "sequence"

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v1, "tabId"

    .line 29
    .line 30
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-static {p1, v0}, Lsk/b;->d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {p3, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 42
    .line 43
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 44
    .line 45
    iget p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final F(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "click_ranking"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "sequence"

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v1, "tabId"

    .line 29
    .line 30
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-static {p1, v0}, Lsk/b;->d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {p3, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 42
    .line 43
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 44
    .line 45
    iget p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final G(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/transsion/home/bean/OperateItem;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/n0;

    .line 2
    .line 3
    invoke-direct {v0, p2, p0}, Lcom/transsion/home/adapter/suboperate/provider/n0;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lcom/transsion/home/adapter/suboperate/adapter/u;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lcom/transsion/home/adapter/suboperate/adapter/u;

    .line 15
    .line 16
    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/o0;

    .line 17
    .line 18
    invoke-direct {v1, p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/o0;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/transsion/home/bean/OperateItem;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/u;->F1(Lkotlin/jvm/functions/Function2;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->h:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->g:Lcom/transsion/home/bean/OperateItem;

    .line 27
    .line 28
    return-void
.end method

.method private static final H(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p2, 0x0

    .line 23
    :goto_0
    const-string p3, "op_ranking"

    .line 24
    .line 25
    invoke-static {p2, p3}, Lzk/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2, p4, p0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->F(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final I(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/transsion/home/bean/OperateItem;ILcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "subject"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p3, p2, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->E(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->f:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->f:Lkotlinx/coroutines/t1;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->H(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/transsion/home/bean/OperateItem;ILcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->I(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/transsion/home/bean/OperateItem;ILcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
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
    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranking_title:I

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranking_recycler:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const/high16 v0, 0x40800000    # 4.0f

    .line 35
    .line 36
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/high16 v1, 0x41400000    # 12.0f

    .line 41
    .line 42
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    new-instance v2, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider$a;

    .line 47
    .line 48
    invoke-direct {v2, v0, v1}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider$a;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move v0, v1

    .line 67
    :goto_0
    sget-object v2, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 68
    .line 69
    iget v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const/4 v4, 0x1

    .line 76
    invoke-virtual {v2, v3, v4}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/4 v3, 0x0

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankingData()Lcom/transsion/home/bean/RankingData;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/transsion/home/bean/RankingData;->getPerRow()Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/4 v5, 0x2

    .line 101
    if-ne v2, v5, :cond_4

    .line 102
    .line 103
    new-instance v2, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-direct {v2, v6, v5}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lcom/transsion/home/adapter/suboperate/adapter/u;

    .line 116
    .line 117
    iget v5, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->e:I

    .line 118
    .line 119
    invoke-direct {v2, v1, v5, v4, v3}, Lcom/transsion/home/adapter/suboperate/adapter/u;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_3

    .line 127
    .line 128
    rem-int/lit8 v3, v0, 0x2

    .line 129
    .line 130
    sub-int/2addr v0, v3

    .line 131
    invoke-interface {v4, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    :cond_3
    check-cast v3, Ljava/util/Collection;

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    :goto_1
    new-instance v2, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    const/4 v5, 0x3

    .line 148
    invoke-direct {v2, v4, v5}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    rem-int/lit8 v3, v0, 0x3

    .line 161
    .line 162
    sub-int/2addr v0, v3

    .line 163
    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    :cond_5
    new-instance v2, Lcom/transsion/home/view/RankingAdapter;

    .line 168
    .line 169
    if-eqz v3, :cond_6

    .line 170
    .line 171
    check-cast v3, Ljava/util/Collection;

    .line 172
    .line 173
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-nez v0, :cond_7

    .line 178
    .line 179
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    :cond_7
    invoke-direct {v2, v0}, Lcom/transsion/home/view/RankingAdapter;-><init>(Ljava/util/List;)V

    .line 185
    .line 186
    .line 187
    :goto_2
    invoke-direct {p0, v2, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->G(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/transsion/home/bean/OperateItem;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->OP_RANKING:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_ranking:I

    .line 2
    .line 3
    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->D()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->J()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
