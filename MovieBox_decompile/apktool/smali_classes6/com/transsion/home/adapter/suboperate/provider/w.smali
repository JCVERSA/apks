.class public final Lcom/transsion/home/adapter/suboperate/provider/w;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Ljava/lang/Integer;

.field private final f:Z

.field private final g:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/w;->e:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/home/adapter/suboperate/provider/w;->f:Z

    .line 7
    .line 8
    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/v;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/transsion/home/adapter/suboperate/provider/v;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/w;->g:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method private static final A()Lcom/transsion/home/adapter/suboperate/provider/w$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/w$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/home/adapter/suboperate/provider/w$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final B()Lcom/transsion/home/adapter/suboperate/provider/w$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/w;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/home/adapter/suboperate/provider/w$a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic y()Lcom/transsion/home/adapter/suboperate/provider/w$a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/adapter/suboperate/provider/w;->A()Lcom/transsion/home/adapter/suboperate/provider/w$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/w;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->FILTER:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_filter:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 9

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
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getFilters()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "itemView"

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 31
    .line 32
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 40
    .line 41
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    sget v1, Lcom/transsion/home/R$id;->sub_operation_filter_title:I

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    :goto_0
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 83
    .line 84
    sget v1, Lcom/transsion/home/R$id;->sub_operation_filter_recycler:I

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_4

    .line 114
    .line 115
    new-instance v1, Ltf/f;

    .line 116
    .line 117
    const/4 v6, 0x2

    .line 118
    const/4 v7, 0x0

    .line 119
    const/high16 v3, 0x41000000    # 8.0f

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    const/high16 v5, 0x41400000    # 12.0f

    .line 123
    .line 124
    move-object v2, v1

    .line 125
    invoke-direct/range {v2 .. v7}, Ltf/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$s;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/w;->B()Lcom/transsion/home/adapter/suboperate/provider/w$a;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_5

    .line 144
    .line 145
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/w;->B()Lcom/transsion/home/adapter/suboperate/provider/w$a;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    new-instance v1, Lcom/transsion/home/adapter/suboperate/adapter/SubFilterAdapter;

    .line 153
    .line 154
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/provider/w;->e:Ljava/lang/Integer;

    .line 155
    .line 156
    iget-boolean v6, p0, Lcom/transsion/home/adapter/suboperate/provider/w;->f:Z

    .line 157
    .line 158
    const/4 v7, 0x1

    .line 159
    const/4 v8, 0x0

    .line 160
    const/4 v3, 0x0

    .line 161
    move-object v2, v1

    .line 162
    move-object v5, p2

    .line 163
    invoke-direct/range {v2 .. v8}, Lcom/transsion/home/adapter/suboperate/adapter/SubFilterAdapter;-><init>(ILjava/lang/Integer;Lcom/transsion/home/bean/OperateItem;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 164
    .line 165
    .line 166
    check-cast v0, Ljava/util/Collection;

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method
