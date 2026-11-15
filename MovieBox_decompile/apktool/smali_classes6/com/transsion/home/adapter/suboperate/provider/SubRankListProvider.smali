.class public final Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:I

.field private f:Lkotlinx/coroutines/t1;

.field private g:Lcom/transsion/home/bean/OperateItem;

.field private h:Lcom/transsion/home/adapter/suboperate/adapter/r;

.field private i:Lcom/transsion/home/adapter/suboperate/adapter/s;

.field private j:I


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
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->e:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)Lcom/transsion/home/adapter/suboperate/adapter/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->h:Lcom/transsion/home/adapter/suboperate/adapter/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)Lcom/transsion/home/bean/OperateItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->g:Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;)Lcom/transsion/home/adapter/suboperate/adapter/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/s;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->L(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    .line 2
    .line 3
    return-void
.end method

.method private static final G(Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0, p1, v0}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final H(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Ltf/f;

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    const/4 v8, 0x0

    .line 31
    const/high16 v4, 0x41000000    # 8.0f

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/high16 v6, 0x41400000    # 12.0f

    .line 35
    .line 36
    move-object v3, v2

    .line 37
    invoke-direct/range {v3 .. v8}, Ltf/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    new-instance v2, Lcom/transsion/home/adapter/suboperate/adapter/r;

    .line 44
    .line 45
    iget v12, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->e:I

    .line 46
    .line 47
    const/4 v13, 0x1

    .line 48
    const/4 v14, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    move-object v9, v2

    .line 51
    move-object/from16 v11, p3

    .line 52
    .line 53
    invoke-direct/range {v9 .. v14}, Lcom/transsion/home/adapter/suboperate/adapter/r;-><init>(ILcom/transsion/home/bean/OperateItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    iput-object v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->h:Lcom/transsion/home/adapter/suboperate/adapter/r;

    .line 57
    .line 58
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/4 v4, 0x0

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move-object v3, v4

    .line 71
    :goto_0
    check-cast v3, Ljava/util/Collection;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->h:Lcom/transsion/home/adapter/suboperate/adapter/r;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    .line 80
    .line 81
    iget v2, v0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Landroidx/recyclerview/widget/n;

    .line 90
    .line 91
    invoke-direct {v2}, Landroidx/recyclerview/widget/n;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/r;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;

    .line 98
    .line 99
    move-object/from16 v4, p2

    .line 100
    .line 101
    invoke-direct {v3, v2, p0, v4}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$a;-><init>(Landroidx/recyclerview/widget/n;Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private final I(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V
    .locals 9

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ltf/f;

    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    const/4 v8, 0x0

    .line 28
    const/high16 v4, 0x41000000    # 8.0f

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/high16 v6, 0x41400000    # 12.0f

    .line 32
    .line 33
    move-object v3, v0

    .line 34
    invoke-direct/range {v3 .. v8}, Ltf/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/s;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v0, v2, v1, v3}, Lcom/transsion/home/adapter/suboperate/adapter/s;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/s;

    .line 47
    .line 48
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/s;->C1(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/s;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :cond_1
    check-cast v3, Ljava/util/Collection;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/s;

    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/m0;

    .line 77
    .line 78
    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/home/adapter/suboperate/provider/m0;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/s;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    .line 88
    .line 89
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private static final J(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput p5, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    .line 10
    .line 11
    if-eqz p5, :cond_2

    .line 12
    .line 13
    iget-object p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->h:Lcom/transsion/home/adapter/suboperate/adapter/r;

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p3, -0x1

    .line 29
    :goto_0
    add-int/lit8 p3, p3, -0x1

    .line 30
    .line 31
    if-ne p5, p3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-direct {p0, p1, p5}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->L(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 39
    .line 40
    .line 41
    :goto_2
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->i:Lcom/transsion/home/adapter/suboperate/adapter/s;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->j:I

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lcom/transsion/home/adapter/suboperate/adapter/s;->C1(I)V

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final K()V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->e:I

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
    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {v4, p0, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider$registerCourse$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Lkotlin/coroutines/Continuation;)V

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
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->f:Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    return-void
.end method

.method private final L(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    div-int/lit8 p2, p2, 0x2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    div-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    sub-int/2addr p2, v1

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sub-int/2addr v0, p2

    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void
.end method

.method private final M()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->f:Lkotlinx/coroutines/t1;

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
    iput-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->f:Lkotlinx/coroutines/t1;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->J(Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->G(Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 2

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
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->g:Lcom/transsion/home/bean/OperateItem;

    .line 12
    .line 13
    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_title_text:I

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 20
    .line 21
    .line 22
    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_title_linear:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/l0;

    .line 29
    .line 30
    invoke-direct {v1, p2}, Lcom/transsion/home/adapter/suboperate/provider/l0;-><init>(Lcom/transsion/home/bean/OperateItem;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_all:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    const/4 v1, 0x4

    .line 58
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_recycler:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    sget v1, Lcom/transsion/home/R$id;->sub_operation_ranklist_title_tab_recycler:I

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->H(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->I(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->RANKING_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_rank_list:I

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
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->K()V

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
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubRankListProvider;->M()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
