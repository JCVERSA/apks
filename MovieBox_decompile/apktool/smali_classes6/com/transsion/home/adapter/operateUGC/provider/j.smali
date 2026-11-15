.class public final Lcom/transsion/home/adapter/operateUGC/provider/j;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/operateUGC/provider/j$a;
    }
.end annotation


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
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/j;->e:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/j;->f:Z

    .line 7
    .line 8
    new-instance p1, Lcom/transsion/home/adapter/operateUGC/provider/h;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/transsion/home/adapter/operateUGC/provider/h;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/j;->g:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method private static final A()Lcom/transsion/home/adapter/operateUGC/provider/j$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/home/adapter/operateUGC/provider/j$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/home/adapter/operateUGC/provider/j$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final B()Lcom/transsion/home/adapter/operateUGC/provider/j$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/j;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/home/adapter/operateUGC/provider/j$b;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic y()Lcom/transsion/home/adapter/operateUGC/provider/j$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/adapter/operateUGC/provider/j;->A()Lcom/transsion/home/adapter/operateUGC/provider/j$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/j;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_FILTER:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    .locals 6

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
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v2, 0x0

    .line 71
    :goto_0
    if-eqz v2, :cond_4

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    :goto_1
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 95
    .line 96
    sget v1, Lcom/transsion/home/R$id;->sub_operation_filter_recycler:I

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    .line 104
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const/4 v3, 0x5

    .line 111
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_5

    .line 122
    .line 123
    new-instance v1, Ltf/b;

    .line 124
    .line 125
    const/high16 v2, 0x41400000    # 12.0f

    .line 126
    .line 127
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const/high16 v3, 0x40800000    # 4.0f

    .line 132
    .line 133
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    const/high16 v4, 0x41000000    # 8.0f

    .line 138
    .line 139
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    invoke-direct {v1, v2, v3, v5, v4}, Ltf/b;-><init>(IIII)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$s;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-direct {p0}, Lcom/transsion/home/adapter/operateUGC/provider/j;->B()Lcom/transsion/home/adapter/operateUGC/provider/j$b;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_6

    .line 166
    .line 167
    invoke-direct {p0}, Lcom/transsion/home/adapter/operateUGC/provider/j;->B()Lcom/transsion/home/adapter/operateUGC/provider/j$b;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    new-instance v1, Lcom/transsion/home/adapter/operateUGC/provider/j$a;

    .line 175
    .line 176
    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/j;->e:Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-direct {v1, v2, p2}, Lcom/transsion/home/adapter/operateUGC/provider/j$a;-><init>(Ljava/lang/Integer;Lcom/transsion/home/bean/OperateItem;)V

    .line 179
    .line 180
    .line 181
    check-cast v0, Ljava/util/Collection;

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method
