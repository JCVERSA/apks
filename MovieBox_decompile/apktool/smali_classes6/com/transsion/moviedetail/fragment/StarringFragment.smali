.class public final Lcom/transsion/moviedetail/fragment/StarringFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Llm/n;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/moviedetail/fragment/StarringFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Llm/n;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "d0",
        "(Landroid/view/LayoutInflater;)Llm/n;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
        "a",
        "Lkotlin/Lazy;",
        "c0",
        "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
        "movieDetailViewModel",
        "MovieDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/moviedetail/fragment/StarringFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/StarringFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/transsion/moviedetail/fragment/StarringFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/transsion/moviedetail/fragment/StarringFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/StarringFragment;->a:Lkotlin/Lazy;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a0(Landroidx/fragment/app/Fragment;Lcom/transsion/moviedetail/fragment/StarringFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/StarringFragment;->e0(Landroidx/fragment/app/Fragment;Lcom/transsion/moviedetail/fragment/StarringFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/StarringFragment;->f0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/StarringFragment;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final e0(Landroidx/fragment/app/Fragment;Lcom/transsion/moviedetail/fragment/StarringFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/moviedetail/activity/MovieDetailActivity;->s:Lcom/transsion/moviedetail/activity/MovieDetailActivity$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "movie_detail get movie detail data --> it = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Lcom/transsion/moviedetail/activity/MovieDetailActivity$a;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getStaffList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    move-object p2, p0

    .line 40
    check-cast p2, Ljava/util/Collection;

    .line 41
    .line 42
    if-eqz p2, :cond_7

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Llm/n;

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    iget-object p2, p2, Llm/n;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "("

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ")"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Llm/n;

    .line 98
    .line 99
    if-eqz p2, :cond_3

    .line 100
    .line 101
    iget-object p2, p2, Llm/n;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    new-instance v0, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x4

    .line 112
    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Llm/n;

    .line 123
    .line 124
    if-eqz p2, :cond_4

    .line 125
    .line 126
    iget-object p2, p2, Llm/n;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 127
    .line 128
    if-eqz p2, :cond_4

    .line 129
    .line 130
    new-instance v0, Ltf/b;

    .line 131
    .line 132
    const/high16 v1, 0x40800000    # 4.0f

    .line 133
    .line 134
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    const/high16 v3, 0x41400000    # 12.0f

    .line 143
    .line 144
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-direct {v0, v2, v1, v4, v3}, Ltf/b;-><init>(IIII)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    new-instance p2, Lcom/transsion/moviedetail/adapter/a;

    .line 159
    .line 160
    invoke-direct {p2, p0}, Lcom/transsion/moviedetail/adapter/a;-><init>(Ljava/util/List;)V

    .line 161
    .line 162
    .line 163
    new-instance p0, Lcom/transsion/moviedetail/fragment/i1;

    .line 164
    .line 165
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/i1;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, Llm/n;

    .line 176
    .line 177
    if-eqz p0, :cond_5

    .line 178
    .line 179
    iget-object p0, p0, Llm/n;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    .line 181
    if-eqz p0, :cond_5

    .line 182
    .line 183
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    .line 185
    .line 186
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    check-cast p0, Llm/n;

    .line 191
    .line 192
    if-eqz p0, :cond_6

    .line 193
    .line 194
    iget-object p0, p0, Llm/n;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 195
    .line 196
    if-eqz p0, :cond_6

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    if-eqz p0, :cond_6

    .line 203
    .line 204
    new-instance p2, Lcom/transsion/moviedetail/fragment/StarringFragment$a;

    .line 205
    .line 206
    invoke-direct {p2, p1}, Lcom/transsion/moviedetail/fragment/StarringFragment$a;-><init>(Lcom/transsion/moviedetail/fragment/StarringFragment;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 210
    .line 211
    .line 212
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 213
    .line 214
    return-object p0

    .line 215
    :cond_7
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 216
    .line 217
    return-object p0
.end method

.method private static final f0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "v"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "/movie/staff"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p2, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Staff"

    .line 22
    .line 23
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p0, Lcom/transsion/moviedetailapi/bean/Staff;

    .line 27
    .line 28
    const-string p2, "staff"

    .line 29
    .line 30
    invoke-virtual {v0, p2, p0}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x0

    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-static {p0, p1, p2, v0, p2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public d0(Landroid/view/LayoutInflater;)Llm/n;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Llm/n;->c(Landroid/view/LayoutInflater;)Llm/n;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/fragment/StarringFragment;->d0(Landroid/view/LayoutInflater;)Llm/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public lazyLoadData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/StarringFragment;->c0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->F()Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/transsion/moviedetail/fragment/h1;

    .line 16
    .line 17
    invoke-direct {v2, v0, p0}, Lcom/transsion/moviedetail/fragment/h1;-><init>(Landroidx/fragment/app/Fragment;Lcom/transsion/moviedetail/fragment/StarringFragment;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/transsion/moviedetail/fragment/StarringFragment$b;

    .line 21
    .line 22
    invoke-direct {v0, v2}, Lcom/transsion/moviedetail/fragment/StarringFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
