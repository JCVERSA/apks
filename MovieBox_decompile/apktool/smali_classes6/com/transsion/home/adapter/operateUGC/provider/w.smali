.class public final Lcom/transsion/home/adapter/operateUGC/provider/w;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:I

.field private f:Lcom/transsion/home/bean/OperateItem;

.field private g:Lcom/transsion/home/adapter/operateUGC/adapter/d;

.field private h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

.field private i:I


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
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/adapter/operateUGC/provider/w;)Lcom/transsion/home/adapter/operateUGC/adapter/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->K(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C(Lcom/transsion/home/adapter/operateUGC/provider/w;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    .line 2
    .line 3
    return-void
.end method

.method private static final E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/w;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p2, v1, v0, v1}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/operateUGC/provider/w;->J(Lcom/transsion/home/bean/OperateItem;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final F(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V
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
    new-instance v2, Lcom/transsion/home/adapter/operateUGC/adapter/d;

    .line 44
    .line 45
    iget v12, v0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

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
    invoke-direct/range {v9 .. v14}, Lcom/transsion/home/adapter/operateUGC/adapter/d;-><init>(ILcom/transsion/home/bean/OperateItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    iput-object v2, v0, Lcom/transsion/home/adapter/operateUGC/provider/w;->g:Lcom/transsion/home/adapter/operateUGC/adapter/d;

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
    iget-object v2, v0, Lcom/transsion/home/adapter/operateUGC/provider/w;->g:Lcom/transsion/home/adapter/operateUGC/adapter/d;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    .line 80
    .line 81
    iget v2, v0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

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
    new-instance v2, Lcom/transsion/home/view/d;

    .line 90
    .line 91
    const/high16 v3, 0x41400000    # 12.0f

    .line 92
    .line 93
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-direct {v2, v3}, Lcom/transsion/home/view/d;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/r;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lcom/transsion/home/adapter/operateUGC/provider/w$a;

    .line 104
    .line 105
    move-object/from16 v4, p2

    .line 106
    .line 107
    invoke-direct {v3, v2, p0, v4}, Lcom/transsion/home/adapter/operateUGC/provider/w$a;-><init>(Lcom/transsion/home/view/d;Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private final G(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V
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
    new-instance v0, Lcom/transsion/home/adapter/operateUGC/adapter/e;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v0, v2, v1, v3}, Lcom/transsion/home/adapter/operateUGC/adapter/e;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    .line 47
    .line 48
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/transsion/home/adapter/operateUGC/adapter/e;->C1(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

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
    iget-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    new-instance v0, Lcom/transsion/home/adapter/operateUGC/provider/v;

    .line 77
    .line 78
    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/home/adapter/operateUGC/provider/v;-><init>(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    .line 88
    .line 89
    iget p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private static final H(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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
    iput p5, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    .line 10
    .line 11
    if-eqz p5, :cond_2

    .line 12
    .line 13
    iget-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->g:Lcom/transsion/home/adapter/operateUGC/adapter/d;

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
    invoke-direct {p0, p1, p5}, Lcom/transsion/home/adapter/operateUGC/provider/w;->K(Landroidx/recyclerview/widget/RecyclerView;I)V

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
    iget-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->h:Lcom/transsion/home/adapter/operateUGC/adapter/e;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->i:I

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lcom/transsion/home/adapter/operateUGC/adapter/e;->C1(I)V

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

.method private final I(Lcom/transsion/home/bean/OperateItem;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "module_name"

    .line 7
    .line 8
    const-string v2, "all"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "position"

    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const-string v1, ""

    .line 51
    .line 52
    :cond_1
    const-string v2, "title"

    .line 53
    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "tabId"

    .line 64
    .line 65
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 72
    .line 73
    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 74
    .line 75
    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v1, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final J(Lcom/transsion/home/bean/OperateItem;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "module_name"

    .line 7
    .line 8
    const-string v2, "all"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "position"

    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const-string v1, ""

    .line 51
    .line 52
    :cond_1
    const-string v2, "title"

    .line 53
    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "tabId"

    .line 64
    .line 65
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 72
    .line 73
    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 74
    .line 75
    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->e:I

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final K(Landroidx/recyclerview/widget/RecyclerView;I)V
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

.method public static synthetic y(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/home/adapter/operateUGC/provider/w;->H(Lcom/transsion/home/adapter/operateUGC/provider/w;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/w;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/w;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
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
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/w;->f:Lcom/transsion/home/bean/OperateItem;

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
    new-instance v1, Lcom/transsion/home/adapter/operateUGC/provider/u;

    .line 29
    .line 30
    invoke-direct {v1, p2, p0}, Lcom/transsion/home/adapter/operateUGC/provider/u;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/w;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    sget v0, Lcom/transsion/home/R$id;->sub_operation_ranklist_recycler:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    sget v1, Lcom/transsion/home/R$id;->sub_operation_ranklist_title_tab_recycler:I

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->F(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->G(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->I(Lcom/transsion/home/bean/OperateItem;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/w;->D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_RANKING_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
