.class public final Lcom/transsion/home/adapter/trending/provider/m;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/trending/provider/m$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/home/adapter/trending/provider/m$a;

.field public static final j:I


# instance fields
.field private final e:I

.field private final f:Lcom/transsion/home/preload/b;

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/adapter/trending/provider/m$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/adapter/trending/provider/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/adapter/trending/provider/m;->i:Lcom/transsion/home/adapter/trending/provider/m$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/adapter/trending/provider/m;->j:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/preload/b;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/home/adapter/trending/provider/m;->e:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/m;->f:Lcom/transsion/home/preload/b;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/transsion/home/adapter/trending/provider/m;->g:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/transsion/home/adapter/trending/provider/m;->h:Z

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic A(Lcom/transsion/home/adapter/trending/provider/m;Lcom/transsion/home/bean/OperateItem;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/trending/provider/m;->C(Lcom/transsion/home/adapter/trending/provider/m;Lcom/transsion/home/bean/OperateItem;ZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final C(Lcom/transsion/home/adapter/trending/provider/m;Lcom/transsion/home/bean/OperateItem;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/m;->F(Lcom/transsion/home/bean/OperateItem;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D(Lcom/transsion/home/adapter/trending/provider/m;Lcom/transsion/home/bean/OperateItem;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/m;->F(Lcom/transsion/home/bean/OperateItem;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;Lcom/transsion/home/adapter/trending/provider/m;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getSubjects()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p4, 0x0

    .line 21
    :goto_0
    if-lt p6, p4, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getSubjects()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    if-eqz p4, :cond_3

    .line 29
    .line 30
    invoke-interface {p4, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    check-cast p4, Lcom/transsion/home/bean/AppointSubject;

    .line 35
    .line 36
    if-eqz p4, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1, p6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/16 p5, 0x64

    .line 43
    .line 44
    if-ne p1, p5, :cond_2

    .line 45
    .line 46
    invoke-direct {p2, p0, p3}, Lcom/transsion/home/adapter/trending/provider/m;->F(Lcom/transsion/home/bean/OperateItem;Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-direct {p2, p4, p6, p0, p3}, Lcom/transsion/home/adapter/trending/provider/m;->G(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;Z)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    return-void
.end method

.method private final F(Lcom/transsion/home/bean/OperateItem;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v0, v1, v2, v1}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/home/adapter/trending/provider/m;->g:Z

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    new-instance v0, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    const-string p2, "click_rank_horiz_more"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string p2, "click_rank_more"

    .line 47
    .line 48
    :goto_0
    const-string v2, "event_type"

    .line 49
    .line 50
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string v1, "sequence"

    .line 58
    .line 59
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const-string v1, ""

    .line 67
    .line 68
    if-nez p2, :cond_3

    .line 69
    .line 70
    move-object p2, v1

    .line 71
    :cond_3
    const-string v2, "deepLink"

    .line 72
    .line 73
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-nez p2, :cond_4

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    move-object v1, p2

    .line 84
    :goto_1
    const-string p2, "title"

    .line 85
    .line 86
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget p2, p0, Lcom/transsion/home/adapter/trending/provider/m;->e:I

    .line 90
    .line 91
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string v1, "tabId"

    .line 96
    .line 97
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p1, "_RANK_MORE"

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string p2, "opt_type"

    .line 125
    .line 126
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 130
    .line 131
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 132
    .line 133
    iget v1, p0, Lcom/transsion/home/adapter/trending/provider/m;->e:I

    .line 134
    .line 135
    invoke-virtual {p2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    sget-object p2, Lzk/c;->a:Lzk/c;

    .line 144
    .line 145
    invoke-virtual {p2, p1, v1}, Lzk/c;->i(Lcom/transsion/home/bean/OperateItem;Ljava/lang/Integer;)V

    .line 146
    .line 147
    .line 148
    :goto_2
    return-void
.end method

.method private final G(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;Z)V
    .locals 2

    .line 1
    const-string v0, "opt_movie_rank"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lzk/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/transsion/home/adapter/trending/provider/m;->g:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    const-string p4, "click_rank_horiz_item"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p4, "click_rank_item"

    .line 21
    .line 22
    :goto_0
    const-string v1, "event_type"

    .line 23
    .line 24
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p4, "sequence"

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lcom/transsion/home/adapter/trending/provider/m;->e:I

    .line 37
    .line 38
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string p4, "tabId"

    .line 43
    .line 44
    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    invoke-static {p3, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {p1, v0}, Lsk/b;->d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 56
    .line 57
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 58
    .line 59
    iget p3, p0, Lcom/transsion/home/adapter/trending/provider/m;->e:I

    .line 60
    .line 61
    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    sget-object p4, Lzk/c;->a:Lzk/c;

    .line 70
    .line 71
    invoke-virtual {p4, p1, p2, p3}, Lzk/c;->h(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/trending/provider/m;Lcom/transsion/home/bean/OperateItem;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/trending/provider/m;->D(Lcom/transsion/home/adapter/trending/provider/m;Lcom/transsion/home/bean/OperateItem;ZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;Lcom/transsion/home/adapter/trending/provider/m;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/home/adapter/trending/provider/m;->E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;Lcom/transsion/home/adapter/trending/provider/m;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 13

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
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankingData()Lcom/transsion/home/bean/RankingData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingData;->getRankingHorizontal()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v2

    .line 28
    :goto_0
    sget v3, Lcom/transsion/home/R$id;->main_operation_movie_rank_title:I

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    sget v4, Lcom/transsion/home/R$id;->main_operation_movie_more_text:I

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-static {v4}, Luf/c;->k(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Lcom/transsion/home/adapter/trending/provider/j;

    .line 68
    .line 69
    invoke-direct {v5, p0, p2, v0}, Lcom/transsion/home/adapter/trending/provider/j;-><init>(Lcom/transsion/home/adapter/trending/provider/m;Lcom/transsion/home/bean/OperateItem;Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    new-instance v3, Lcom/transsion/home/adapter/trending/provider/k;

    .line 76
    .line 77
    invoke-direct {v3, p0, p2, v0}, Lcom/transsion/home/adapter/trending/provider/k;-><init>(Lcom/transsion/home/adapter/trending/provider/m;Lcom/transsion/home/bean/OperateItem;Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    :goto_1
    invoke-static {v4}, Luf/c;->h(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    sget v3, Lcom/transsion/home/R$id;->main_operation_movie_rank_recycler:I

    .line 88
    .line 89
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    new-instance v12, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;

    .line 96
    .line 97
    iget-boolean v6, p0, Lcom/transsion/home/adapter/trending/provider/m;->g:Z

    .line 98
    .line 99
    iget v7, p0, Lcom/transsion/home/adapter/trending/provider/m;->e:I

    .line 100
    .line 101
    iget-boolean v9, p0, Lcom/transsion/home/adapter/trending/provider/m;->h:Z

    .line 102
    .line 103
    const/4 v10, 0x1

    .line 104
    const/4 v11, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    move-object v3, v12

    .line 107
    move-object v5, p2

    .line 108
    move v8, v0

    .line 109
    invoke-direct/range {v3 .. v11}, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;-><init>(ILcom/transsion/home/bean/OperateItem;ZIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v12}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    .line 114
    .line 115
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-direct {v3, v4, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_3

    .line 135
    .line 136
    new-instance v1, Ltf/f;

    .line 137
    .line 138
    const/4 v7, 0x2

    .line 139
    const/4 v8, 0x0

    .line 140
    const/high16 v4, 0x41000000    # 8.0f

    .line 141
    .line 142
    const/4 v5, 0x0

    .line 143
    const/high16 v6, 0x41400000    # 12.0f

    .line 144
    .line 145
    move-object v3, v1

    .line 146
    invoke-direct/range {v3 .. v8}, Ltf/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getSubjects()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-nez p1, :cond_4

    .line 157
    .line 158
    new-instance p1, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    const/16 v3, 0x1e

    .line 168
    .line 169
    if-le v1, v3, :cond_5

    .line 170
    .line 171
    const/16 v1, 0x1f

    .line 172
    .line 173
    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :cond_5
    check-cast p1, Ljava/util/Collection;

    .line 178
    .line 179
    invoke-virtual {v12, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 180
    .line 181
    .line 182
    new-instance p1, Lcom/transsion/home/adapter/trending/provider/l;

    .line 183
    .line 184
    invoke-direct {p1, p2, v12, p0, v0}, Lcom/transsion/home/adapter/trending/provider/l;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;Lcom/transsion/home/adapter/trending/provider/m;Z)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 188
    .line 189
    .line 190
    iget-boolean p1, p0, Lcom/transsion/home/adapter/trending/provider/m;->g:Z

    .line 191
    .line 192
    if-eqz p1, :cond_a

    .line 193
    .line 194
    new-instance p1, Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 197
    .line 198
    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    const-string v0, "browse_rank_horiz_more"

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_6
    const-string v0, "browse_rank_more"

    .line 205
    .line 206
    :goto_3
    const-string v1, "event_type"

    .line 207
    .line 208
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v0, :cond_7

    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    goto :goto_4

    .line 232
    :cond_7
    const/4 v0, 0x0

    .line 233
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const-string v1, "sequence"

    .line 238
    .line 239
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v1, ""

    .line 247
    .line 248
    if-nez v0, :cond_8

    .line 249
    .line 250
    move-object v0, v1

    .line 251
    :cond_8
    const-string v2, "deepLink"

    .line 252
    .line 253
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-nez v0, :cond_9

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_9
    move-object v1, v0

    .line 264
    :goto_5
    const-string v0, "title"

    .line 265
    .line 266
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    iget v0, p0, Lcom/transsion/home/adapter/trending/provider/m;->e:I

    .line 270
    .line 271
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    const-string v1, "tabId"

    .line 276
    .line 277
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    invoke-static {p2, p1}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string p2, "_RANK_MORE"

    .line 296
    .line 297
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    const-string v0, "opt_type"

    .line 305
    .line 306
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    sget-object p2, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 310
    .line 311
    sget-object v0, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 312
    .line 313
    iget v1, p0, Lcom/transsion/home/adapter/trending/provider/m;->e:I

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p2, v0, p1}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    .line 321
    .line 322
    :cond_a
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/m;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->OP_SUBJECTS_MOVIE:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->post_list_item_op_movie_rank:I

    .line 2
    .line 3
    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 7

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/m;->f:Lcom/transsion/home/preload/b;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/transsion/home/preload/b;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/m;->f:Lcom/transsion/home/preload/b;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/transsion/home/preload/b;->c()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 25
    .line 26
    const/4 v5, 0x4

    .line 27
    const/4 v6, 0x0

    .line 28
    const-string v2, "MainXMLPreload"

    .line 29
    .line 30
    const-string v3, "subjectOpView"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/m;->f:Lcom/transsion/home/preload/b;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/transsion/home/preload/b;->c()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    .line 51
    const/4 p2, -0x1

    .line 52
    const/4 v1, -0x2

    .line 53
    invoke-direct {p1, p2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 60
    .line 61
    invoke-direct {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_0
    return-object p1
.end method
