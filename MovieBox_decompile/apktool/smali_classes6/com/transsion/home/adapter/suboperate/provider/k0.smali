.class public final Lcom/transsion/home/adapter/suboperate/provider/k0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->e:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->f:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x4

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x3

    .line 13
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    int-to-float p2, p2

    .line 26
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->b(F)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    add-int/lit8 p2, p2, -0xc

    .line 31
    .line 32
    mul-int/lit8 v0, p1, 0x8

    .line 33
    .line 34
    sub-int/2addr p2, v0

    .line 35
    add-int/lit8 p2, p2, -0xc

    .line 36
    .line 37
    int-to-float p2, p2

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    .line 40
    mul-float/2addr p2, v0

    .line 41
    int-to-float p1, p1

    .line 42
    div-float/2addr p2, p1

    .line 43
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    int-to-float p1, p1

    .line 48
    const p2, 0x3fb1eb85    # 1.39f

    .line 49
    .line 50
    .line 51
    mul-float/2addr p1, p2

    .line 52
    float-to-int p1, p1

    .line 53
    const/high16 p2, 0x41d00000    # 26.0f

    .line 54
    .line 55
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    add-int/2addr p1, p2

    .line 60
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->g:I

    .line 61
    .line 62
    return-void
.end method

.method private static final A(Ljava/util/List;Lcom/transsion/home/adapter/suboperate/provider/k0;Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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
    invoke-static {p0, p5}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lcom/transsion/home/bean/BffCommonOpData;

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/lit8 p0, p0, -0x1

    .line 23
    .line 24
    if-ne p5, p0, :cond_1

    .line 25
    .line 26
    invoke-direct {p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/k0;->B(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/BffCommonOpData;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p3, p5, p2}, Lcom/transsion/home/adapter/suboperate/provider/k0;->D(Lcom/transsion/home/bean/BffCommonOpData;ILcom/transsion/home/bean/OperateItem;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-direct {p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/k0;->B(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/BffCommonOpData;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p3, p5, p2}, Lcom/transsion/home/adapter/suboperate/provider/k0;->D(Lcom/transsion/home/bean/BffCommonOpData;ILcom/transsion/home/bean/OperateItem;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method private final B(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/BffCommonOpData;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/transsion/home/bean/BffCommonOpData;->getDeepLink()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0, p2, v0}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final C(Lcom/transsion/home/bean/OperateItem;)V
    .locals 4

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
    const-string v2, "browse_post_list"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    :cond_0
    move-object v2, v1

    .line 24
    :cond_1
    const-string v3, "title"

    .line 25
    .line 26
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v1, v2

    .line 39
    :cond_3
    :goto_0
    const-string v2, "opId"

    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->e:I

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "tabId"

    .line 51
    .line 52
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 61
    .line 62
    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 63
    .line 64
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->e:I

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private final D(Lcom/transsion/home/bean/BffCommonOpData;ILcom/transsion/home/bean/OperateItem;)V
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
    const-string v2, "click_post_list_item"

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
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->e:I

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
    invoke-static {p1, v0}, Lsk/b;->c(Lcom/transsion/home/bean/BffCommonOpData;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p3, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 40
    .line 41
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 42
    .line 43
    iget p3, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->e:I

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static synthetic y(Ljava/util/List;Lcom/transsion/home/adapter/suboperate/provider/k0;Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/home/adapter/suboperate/provider/k0;->A(Ljava/util/List;Lcom/transsion/home/adapter/suboperate/provider/k0;Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/k0;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->POST_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_variable:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 11

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
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getPostData()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v2, v3

    .line 34
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    sget v1, Lcom/transsion/home/R$id;->sub_operation_variable_title:I

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    sget v1, Lcom/transsion/home/R$id;->sub_operation_variable_recycle:I

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    check-cast v0, Ljava/lang/Iterable;

    .line 68
    .line 69
    const/16 v1, 0xa

    .line 70
    .line 71
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->g:I

    .line 76
    .line 77
    if-lez v1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->g:I

    .line 84
    .line 85
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    instance-of v2, v1, Lcom/transsion/home/adapter/suboperate/adapter/o;

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    check-cast v1, Lcom/transsion/home/adapter/suboperate/adapter/o;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v1, 0x0

    .line 102
    :goto_1
    if-nez v1, :cond_5

    .line 103
    .line 104
    new-instance v1, Lcom/transsion/home/adapter/suboperate/adapter/o;

    .line 105
    .line 106
    iget v7, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->e:I

    .line 107
    .line 108
    iget-boolean v8, p0, Lcom/transsion/home/adapter/suboperate/provider/k0;->f:Z

    .line 109
    .line 110
    const/4 v9, 0x1

    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    move-object v4, v1

    .line 114
    move-object v6, p2

    .line 115
    invoke-direct/range {v4 .. v10}, Lcom/transsion/home/adapter/suboperate/adapter/o;-><init>(ILcom/transsion/home/bean/OperateItem;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-direct {v2, v4, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 125
    .line 126
    .line 127
    const/4 v3, 0x1

    .line 128
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_6

    .line 145
    .line 146
    new-instance v2, Ltf/f;

    .line 147
    .line 148
    const/4 v7, 0x2

    .line 149
    const/4 v8, 0x0

    .line 150
    const/high16 v4, 0x41000000    # 8.0f

    .line 151
    .line 152
    const/4 v5, 0x0

    .line 153
    const/high16 v6, 0x41400000    # 12.0f

    .line 154
    .line 155
    move-object v3, v2

    .line 156
    invoke-direct/range {v3 .. v8}, Ltf/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    invoke-virtual {v1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/o;->E1(Lcom/transsion/home/bean/OperateItem;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    :goto_2
    move-object p1, v0

    .line 167
    check-cast p1, Ljava/util/Collection;

    .line 168
    .line 169
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/j0;

    .line 173
    .line 174
    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/j0;-><init>(Ljava/util/List;Lcom/transsion/home/adapter/suboperate/provider/k0;Lcom/transsion/home/bean/OperateItem;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/suboperate/provider/k0;->C(Lcom/transsion/home/bean/OperateItem;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method
