.class final Lcom/transsion/moviedetail/adapter/i;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/adapter/i$a;
    }
.end annotation


# instance fields
.field private final e:Lcom/transsion/moviedetail/fragment/ForYouFragment;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

.field private final h:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/moviedetail/fragment/ForYouFragment;Ljava/lang/String;Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "movieDetailViewModel"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/i;->e:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/transsion/moviedetail/adapter/i;->f:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/transsion/moviedetail/adapter/i;->g:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/transsion/moviedetail/adapter/i;->h:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 26
    .line 27
    return-void
.end method

.method private static final B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetail/adapter/i;Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 4
    .line 5
    const/4 v6, 0x4

    .line 6
    const/4 v7, 0x0

    .line 7
    const-string v3, "MovieDetailViewModel"

    .line 8
    .line 9
    const-string v4, "ForYouFragment \u63a8\u8350\u5e16\u5b50-\u5f00\u59cb\u6e32\u67d3"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget v2, Lcom/transsion/moviedetail/R$id;->tvTitle:I

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;->getTitle()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v4, v3

    .line 26
    :goto_0
    invoke-virtual {p0, v2, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 27
    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;->getPosts()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object p0, v3

    .line 37
    :goto_1
    check-cast p0, Ljava/util/Collection;

    .line 38
    .line 39
    if-eqz p0, :cond_6

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_2
    if-eqz p3, :cond_3

    .line 50
    .line 51
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;->getPosts()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :cond_3
    check-cast v3, Ljava/util/Collection;

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    if-eqz p3, :cond_6

    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;->getPosts()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_6

    .line 67
    .line 68
    check-cast p0, Ljava/lang/Iterable;

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    move p1, v1

    .line 75
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    if-eqz p3, :cond_6

    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    add-int/lit8 v2, p1, 0x1

    .line 86
    .line 87
    if-gez p1, :cond_4

    .line 88
    .line 89
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 90
    .line 91
    .line 92
    :cond_4
    check-cast p3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 93
    .line 94
    const-string v3, "source"

    .line 95
    .line 96
    const-string v4, "for_you"

    .line 97
    .line 98
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-nez v4, :cond_5

    .line 107
    .line 108
    const-string v4, ""

    .line 109
    .line 110
    :cond_5
    const-string v5, "post_id"

    .line 111
    .line 112
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const-string v5, "position"

    .line 117
    .line 118
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v5, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v5, "module_name"

    .line 127
    .line 128
    const-string v6, "item"

    .line 129
    .line 130
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const-string v6, "ops"

    .line 135
    .line 136
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-static {v6, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    const/4 v6, 0x5

    .line 145
    new-array v6, v6, [Lkotlin/Pair;

    .line 146
    .line 147
    aput-object v3, v6, v1

    .line 148
    .line 149
    aput-object v4, v6, v0

    .line 150
    .line 151
    const/4 v3, 0x2

    .line 152
    aput-object p1, v6, v3

    .line 153
    .line 154
    const/4 p1, 0x3

    .line 155
    aput-object v5, v6, p1

    .line 156
    .line 157
    const/4 p1, 0x4

    .line 158
    aput-object p3, v6, p1

    .line 159
    .line 160
    invoke-static {v6}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 165
    .line 166
    iget-object v3, p2, Lcom/transsion/moviedetail/adapter/i;->f:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p3, v3, p1}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    move p1, v2

    .line 172
    goto :goto_2

    .line 173
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    return-object p0
.end method

.method private static final C(Lcom/transsion/moviedetail/adapter/i;Landroid/view/View;)V
    .locals 9

    .line 1
    const-string p1, "source"

    .line 2
    .line 3
    const-string v0, "for_you"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "module_name"

    .line 10
    .line 11
    const-string v1, "explore"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object p1, v1, v2

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    aput-object v0, v1, p1

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/transsion/moviedetail/adapter/i;->f:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    sget-object v2, Lep/k;->a:Lep/k;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/transsion/moviedetail/adapter/i;->f:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v7, 0x3

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v6, 0x1

    .line 46
    invoke-static/range {v2 .. v8}, Lep/k;->i(Lep/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic y(Lcom/transsion/moviedetail/adapter/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/adapter/i;->C(Lcom/transsion/moviedetail/adapter/i;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetail/adapter/i;Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/moviedetail/adapter/i;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetail/adapter/i;Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 7

    .line 1
    const-string v0, "holder"

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
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v2, "MovieDetailViewModel"

    .line 16
    .line 17
    const-string v3, "ForYouFragment \u63a8\u8350\u5e16\u5b50 item convert "

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    instance-of v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c(Z)V

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance p2, Lcom/transsion/moviedetail/adapter/i$a;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/i;->f:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p2, v0}, Lcom/transsion/moviedetail/adapter/i$a;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget v0, Lcom/transsion/moviedetail/R$id;->recyclerView:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    .line 54
    new-instance v1, Ltf/a;

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-static {v2}, Llj/a;->b(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-direct {v1, v2, v3, v3, v3}, Ltf/a;-><init>(IIII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/4 v3, 0x3

    .line 75
    invoke-direct {v1, v2, v3}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/i;->h:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->I()Landroidx/lifecycle/b0;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/transsion/moviedetail/adapter/i;->e:Lcom/transsion/moviedetail/fragment/ForYouFragment;

    .line 91
    .line 92
    new-instance v2, Lcom/transsion/moviedetail/adapter/e;

    .line 93
    .line 94
    invoke-direct {v2, p1, p2, p0}, Lcom/transsion/moviedetail/adapter/e;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetail/adapter/i;)V

    .line 95
    .line 96
    .line 97
    new-instance p2, Lcom/transsion/moviedetail/adapter/i$b;

    .line 98
    .line 99
    invoke-direct {p2, v2}, Lcom/transsion/moviedetail/adapter/i$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, p2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 103
    .line 104
    .line 105
    sget p2, Lcom/transsion/moviedetail/R$id;->tvMore:I

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroid/widget/TextView;

    .line 112
    .line 113
    new-instance p2, Lcom/transsion/moviedetail/adapter/f;

    .line 114
    .line 115
    invoke-direct {p2, p0}, Lcom/transsion/moviedetail/adapter/f;-><init>(Lcom/transsion/moviedetail/adapter/i;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/i;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/16 v0, -0x26ad

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you_recommend_posts:I

    .line 2
    .line 3
    return v0
.end method
