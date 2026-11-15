.class public final Lcom/transsion/home/view/OpRankingView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00172\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001a\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00060!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/home/view/OpRankingView;",
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "item",
        "",
        "e",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "Lcom/transsion/home/bean/OperateItem;",
        "operateItem",
        "setDatas",
        "(Lcom/transsion/home/bean/OperateItem;)V",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "gridLayoutManager",
        "Ljava/util/SortedSet;",
        "calcExposureLines",
        "(Landroidx/recyclerview/widget/GridLayoutManager;)Ljava/util/SortedSet;",
        "Lcom/transsion/home/view/RankingAdapter;",
        "a",
        "Lcom/transsion/home/view/RankingAdapter;",
        "mAdapter",
        "b",
        "I",
        "mRow",
        "Ljava/util/TreeSet;",
        "c",
        "Ljava/util/TreeSet;",
        "set",
        "Home_psRelease"
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private a:Lcom/transsion/home/view/RankingAdapter;

.field private b:I

.field private final c:Ljava/util/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/transsion/home/view/OpRankingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/home/view/OpRankingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/home/R$layout;->post_list_item_ranking_view:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 3
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/Integer;

    invoke-static {p1}, Lkotlin/collections/SetsKt;->e([Ljava/lang/Object;)Ljava/util/TreeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/view/OpRankingView;->c:Ljava/util/TreeSet;

    return-void
.end method

.method public static synthetic d(Ljava/util/List;Lcom/transsion/home/view/OpRankingView;Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/home/view/OpRankingView;->f(Ljava/util/List;Lcom/transsion/home/view/OpRankingView;Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 31
    .line 32
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v2, v0

    .line 36
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/16 v11, 0x180

    .line 43
    .line 44
    const/4 v12, 0x0

    .line 45
    const-string v3, "Trending"

    .line 46
    .line 47
    const-string v4, ""

    .line 48
    .line 49
    const-string v6, "download_subject"

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    move-object v8, p1

    .line 55
    invoke-static/range {v1 .. v12}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :goto_0
    const-string v0, "/movie/detail"

    .line 60
    .line 61
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :goto_1
    const-string v2, "subject_type"

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "id"

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "module_name"

    .line 99
    .line 100
    const-string v2, "opt_ranking"

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "ops"

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const/4 v1, 0x2

    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    return-void
.end method

.method private static final f(Ljava/util/List;Lcom/transsion/home/view/OpRankingView;Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    const-string v2, "adapter"

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "view"

    .line 13
    .line 14
    move-object/from16 v3, p4

    .line 15
    .line 16
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 30
    .line 31
    move-object/from16 v3, p1

    .line 32
    .line 33
    invoke-direct {v3, v0}, Lcom/transsion/home/view/OpRankingView;->e(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 34
    .line 35
    .line 36
    sget-object v3, Lzk/c;->a:Lzk/c;

    .line 37
    .line 38
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->OP_RANKING:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v15

    .line 68
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTag()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v16

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v17

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v18

    .line 80
    const/16 v19, 0x590

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    const-string v4, "Trending"

    .line 85
    .line 86
    const-string v5, "opt"

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v11, 0x0

    .line 90
    const/4 v12, 0x0

    .line 91
    const/4 v14, 0x0

    .line 92
    invoke-static/range {v3 .. v20}, Lzk/c;->d(Lzk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final calcExposureLines(Landroidx/recyclerview/widget/GridLayoutManager;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/GridLayoutManager;",
            ")",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "gridLayoutManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/home/view/OpRankingView;->a:Lcom/transsion/home/view/RankingAdapter;

    .line 14
    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    add-int/lit8 v2, v1, 0x1

    .line 40
    .line 41
    if-gez v1, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 44
    .line 45
    .line 46
    :cond_0
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/transsion/home/view/OpRankingView;->c:Ljava/util/TreeSet;

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move v1, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget v0, p0, Lcom/transsion/home/view/OpRankingView;->b:I

    .line 60
    .line 61
    move v2, v1

    .line 62
    :goto_1
    if-ge v2, v0, :cond_4

    .line 63
    .line 64
    mul-int/lit8 v3, v2, 0x3

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    new-instance v4, Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move v3, v1

    .line 83
    :goto_2
    if-eqz v3, :cond_3

    .line 84
    .line 85
    iget-object v3, p0, Lcom/transsion/home/view/OpRankingView;->c:Ljava/util/TreeSet;

    .line 86
    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/transsion/home/view/OpRankingView;->c:Ljava/util/TreeSet;

    .line 98
    .line 99
    return-object p1
.end method

.method public final setDatas(Lcom/transsion/home/bean/OperateItem;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget v0, Lcom/transsion/home/R$id;->tv_title:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    sget v0, Lcom/transsion/home/R$id;->recycler_view:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/transsion/home/view/HRecyclerView;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Lcom/transsion/home/view/OpRankingView$setDatas$2$1$1;

    .line 42
    .line 43
    invoke-direct {v3, v2}, Lcom/transsion/home/view/OpRankingView$setDatas$2$1$1;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x1

    .line 54
    if-ge v2, v3, :cond_2

    .line 55
    .line 56
    new-instance v2, Ltf/b;

    .line 57
    .line 58
    const/high16 v3, 0x40800000    # 4.0f

    .line 59
    .line 60
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/high16 v5, 0x41800000    # 16.0f

    .line 69
    .line 70
    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-direct {v2, v4, v3, v6, v5}, Ltf/b;-><init>(IIII)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    div-int/lit8 v2, v2, 0x3

    .line 89
    .line 90
    iput v2, p0, Lcom/transsion/home/view/OpRankingView;->b:I

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    mul-int/lit8 v2, v2, 0x3

    .line 94
    .line 95
    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v2, Lcom/transsion/home/view/RankingAdapter;

    .line 100
    .line 101
    move-object v3, v1

    .line 102
    check-cast v3, Ljava/util/Collection;

    .line 103
    .line 104
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-direct {v2, v3}, Lcom/transsion/home/view/RankingAdapter;-><init>(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcom/transsion/home/view/e;

    .line 112
    .line 113
    invoke-direct {v3, v1, p0, p1}, Lcom/transsion/home/view/e;-><init>(Ljava/util/List;Lcom/transsion/home/view/OpRankingView;Lcom/transsion/home/bean/OperateItem;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    .line 121
    .line 122
    iput-object v2, p0, Lcom/transsion/home/view/OpRankingView;->a:Lcom/transsion/home/view/RankingAdapter;

    .line 123
    .line 124
    :cond_3
    return-void
.end method
