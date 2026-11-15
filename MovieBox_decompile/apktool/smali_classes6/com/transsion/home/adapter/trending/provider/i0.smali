.class public final Lcom/transsion/home/adapter/trending/provider/i0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/trending/provider/i0$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/home/adapter/trending/provider/i0$a;

.field public static final j:I


# instance fields
.field private final e:I

.field private final f:Z

.field private g:Lbj/b;

.field private final h:Lcom/transsion/home/adapter/trending/provider/i0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/adapter/trending/provider/i0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/adapter/trending/provider/i0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/adapter/trending/provider/i0;->i:Lcom/transsion/home/adapter/trending/provider/i0$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/adapter/trending/provider/i0;->j:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/home/adapter/trending/provider/i0;->f:Z

    .line 7
    .line 8
    new-instance p1, Lcom/transsion/home/adapter/trending/provider/i0$e;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/transsion/home/adapter/trending/provider/i0$e;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/i0;->h:Lcom/transsion/home/adapter/trending/provider/i0$e;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Lzk/j;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsion/home/adapter/trending/provider/i0;->P(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Lzk/j;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/trending/provider/i0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Lzk/j;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/i0;->J(Lcom/transsion/home/bean/OperateItem;Lzk/j;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/home/adapter/trending/provider/i0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 2
    .line 3
    return p0
.end method

.method private final E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    const-string v0, "/rank/all"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "category"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "tabId"

    .line 18
    .line 19
    iget v2, p0, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "defaultCategory"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "rankingListId"

    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/therouter/router/Navigator;->p()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v0, "getAppPackageName(...)"

    .line 46
    .line 47
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "oneroom"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "://"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p2, "?type="

    .line 69
    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1
.end method

.method private final F(ILjava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "pos_"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "rank_"

    .line 26
    .line 27
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "_"

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method private static final H(Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/home/adapter/trending/provider/i0;->M(Lcom/transsion/home/bean/OperateItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    :cond_0
    const-string v2, "opt_id"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v1, p1

    .line 24
    :goto_0
    const-string p1, "opt_type"

    .line 25
    .line 26
    invoke-static {p1, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v1, 0x2

    .line 31
    new-array v1, v1, [Lkotlin/Pair;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    aput-object v0, v1, v2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    aput-object p1, v1, v0

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method private final J(Lcom/transsion/home/bean/OperateItem;Lzk/j;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankingListData;->getRankingListId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    :goto_0
    invoke-virtual {p2}, Lzk/j;->a()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    if-ltz p2, :cond_3

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    check-cast v1, Ljava/util/Collection;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ge p2, v1, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/4 p2, 0x0

    .line 52
    :goto_1
    if-ltz p2, :cond_4

    .line 53
    .line 54
    move-object v1, v0

    .line 55
    check-cast v1, Ljava/util/Collection;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ge p2, v1, :cond_4

    .line 62
    .line 63
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Lcom/transsion/home/bean/RankingListItem;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/transsion/home/bean/RankingListItem;->getCategoryId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p0, p2, p1}, Lcom/transsion/home/adapter/trending/provider/i0;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    const-string p1, ""

    .line 79
    .line 80
    :goto_2
    return-object p1
.end method

.method private final K(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lzk/j;
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/i0;->F(ILjava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/transsion/home/adapter/trending/provider/i0;->h:Lcom/transsion/home/adapter/trending/provider/i0$e;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lzk/j;

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    new-instance p2, Lzk/j;

    .line 26
    .line 27
    invoke-direct {p2}, Lzk/j;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/i0;->h:Lcom/transsion/home/adapter/trending/provider/i0$e;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object p2
.end method

.method private final L(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;Lcom/transsion/home/bean/OperateItem;Lzk/j;)V
    .locals 7

    .line 1
    new-instance v6, Lbj/b;

    .line 2
    .line 3
    new-instance v2, Lcom/transsion/home/adapter/trending/provider/i0$b;

    .line 4
    .line 5
    invoke-direct {v2, p2, p0, p3, p4}, Lcom/transsion/home/adapter/trending/provider/i0$b;-><init>(Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Lzk/j;)V

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const v1, 0x3f19999a    # 0.6f

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v0, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lbj/b;-><init>(FLbj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {v6, p2}, Lbj/b;->n(I)V

    .line 20
    .line 21
    .line 22
    sget-object p2, Lcom/transsion/baselib/exposure/ExposureType;->NEST_HORIZONTAL:Lcom/transsion/baselib/exposure/ExposureType;

    .line 23
    .line 24
    invoke-virtual {v6, p2}, Lbj/b;->o(Lcom/transsion/baselib/exposure/ExposureType;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 28
    .line 29
    .line 30
    iput-object v6, p0, Lcom/transsion/home/adapter/trending/provider/i0;->g:Lbj/b;

    .line 31
    .line 32
    return-void
.end method

.method private final N(Lzk/j;Lcom/transsion/home/bean/OperateItem;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/transsion/home/bean/RankingListData;->getRankingListId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p2, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Lzk/j;->a()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    if-ltz p1, :cond_3

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    check-cast v1, Ljava/util/Collection;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ge p1, v1, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/4 p1, 0x0

    .line 52
    :goto_1
    if-ltz p1, :cond_4

    .line 53
    .line 54
    move-object v1, v0

    .line 55
    check-cast v1, Ljava/util/Collection;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ge p1, v1, :cond_4

    .line 62
    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/transsion/home/bean/RankingListItem;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankingListItem;->getCategoryId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "/rank/all"

    .line 74
    .line 75
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "category"

    .line 80
    .line 81
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "tabId"

    .line 86
    .line 87
    iget v2, p0, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "defaultCategory"

    .line 94
    .line 95
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v0, "rankingListId"

    .line 100
    .line 101
    invoke-virtual {p1, v0, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lij/k;->p(Lcom/therouter/router/Navigator;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method private final O(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;Lzk/j;)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ltf/f;

    .line 31
    .line 32
    const/4 v13, 0x6

    .line 33
    const/4 v14, 0x0

    .line 34
    const/high16 v10, 0x41000000    # 8.0f

    .line 35
    .line 36
    const/4 v11, 0x0

    .line 37
    const/4 v12, 0x0

    .line 38
    move-object v9, v0

    .line 39
    invoke-direct/range {v9 .. v14}, Ltf/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    instance-of v1, v0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    check-cast v0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_0
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 68
    .line 69
    iget v13, v6, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 70
    .line 71
    iget-boolean v15, v6, Lcom/transsion/home/adapter/trending/provider/i0;->f:Z

    .line 72
    .line 73
    const/16 v16, 0x1

    .line 74
    .line 75
    const/16 v17, 0x0

    .line 76
    .line 77
    const/4 v11, 0x0

    .line 78
    move-object v10, v0

    .line 79
    move-object/from16 v12, p2

    .line 80
    .line 81
    move v14, v5

    .line 82
    invoke-direct/range {v10 .. v17}, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;-><init>(ILcom/transsion/home/bean/OperateItem;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 88
    .line 89
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    .line 94
    move-object v10, v0

    .line 95
    check-cast v10, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 96
    .line 97
    new-instance v11, Lcom/transsion/home/adapter/trending/provider/h0;

    .line 98
    .line 99
    move-object v0, v11

    .line 100
    move-object v1, v9

    .line 101
    move-object/from16 v2, p0

    .line 102
    .line 103
    move-object/from16 v3, p2

    .line 104
    .line 105
    move-object/from16 v4, p3

    .line 106
    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/transsion/home/adapter/trending/provider/h0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Lzk/j;Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v11}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {p3 .. p3}, Lzk/j;->a()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-nez v1, :cond_4

    .line 128
    .line 129
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_4
    move-object v2, v1

    .line 134
    check-cast v2, Ljava/util/Collection;

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_6

    .line 141
    .line 142
    if-ltz v0, :cond_6

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-ge v0, v2, :cond_6

    .line 149
    .line 150
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lcom/transsion/home/bean/RankingListItem;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/transsion/home/bean/RankingListItem;->getSubjects()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-nez v1, :cond_5

    .line 161
    .line 162
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    :cond_5
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v2, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 169
    .line 170
    check-cast v1, Ljava/util/Collection;

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8, v0, v7}, Lzk/j;->b(ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 179
    .line 180
    .line 181
    new-instance v0, Lcom/transsion/home/adapter/trending/provider/i0$c;

    .line 182
    .line 183
    invoke-direct {v0, v8, v7}, Lcom/transsion/home/adapter/trending/provider/i0$c;-><init>(Lzk/j;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 192
    .line 193
    move-object/from16 v1, p2

    .line 194
    .line 195
    invoke-direct {v6, v7, v0, v1, v8}, Lcom/transsion/home/adapter/trending/provider/i0;->L(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;Lcom/transsion/home/bean/OperateItem;Lzk/j;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method private static final P(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Lzk/j;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p5, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p5, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 12
    .line 13
    invoke-virtual {p5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    if-nez p5, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p6

    .line 24
    if-lt p7, p6, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {p5, p7}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    check-cast p5, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 32
    .line 33
    if-nez p5, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-direct {p1, p2}, Lcom/transsion/home/adapter/trending/provider/i0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    .line 37
    .line 38
    .line 39
    move-result-object p6

    .line 40
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move-object v0, v1

    .line 63
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "sequence"

    .line 68
    .line 69
    invoke-virtual {p6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2, p3}, Lcom/transsion/home/adapter/trending/provider/i0;->J(Lcom/transsion/home/bean/OperateItem;Lzk/j;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v3, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 79
    .line 80
    invoke-virtual {v3, p7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/16 v4, 0x64

    .line 85
    .line 86
    const-string v5, ""

    .line 87
    .line 88
    const-string v6, "deepkLink"

    .line 89
    .line 90
    if-ne v3, v4, :cond_4

    .line 91
    .line 92
    invoke-interface {p6, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string p4, "module_name"

    .line 96
    .line 97
    const-string p5, "more"

    .line 98
    .line 99
    invoke-interface {p6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    sget-object p4, Lqi/h;->a:Lqi/h;

    .line 103
    .line 104
    sget-object p5, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 105
    .line 106
    iget v3, p1, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 107
    .line 108
    invoke-virtual {p5, v3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p5

    .line 112
    invoke-virtual {p4, p5, p6}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, p3, p2}, Lcom/transsion/home/adapter/trending/provider/i0;->N(Lzk/j;Lcom/transsion/home/bean/OperateItem;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {p5}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    if-nez p3, :cond_5

    .line 124
    .line 125
    move-object p3, v5

    .line 126
    :cond_5
    const-string v3, "subject_id"

    .line 127
    .line 128
    invoke-interface {p6, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    invoke-interface {p6, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p5}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    if-eqz p3, :cond_6

    .line 143
    .line 144
    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    if-nez p3, :cond_7

    .line 149
    .line 150
    :cond_6
    move-object p3, v5

    .line 151
    :cond_7
    const-string v3, "subject_type"

    .line 152
    .line 153
    invoke-interface {p6, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p5}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    const-string v3, "has_resource"

    .line 165
    .line 166
    invoke-interface {p6, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 170
    .line 171
    sget-object v3, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 172
    .line 173
    iget v7, p1, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 174
    .line 175
    invoke-virtual {v3, v7}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {p3, v3, p6}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, p5, p7, p2, p4}, Lcom/transsion/home/adapter/trending/provider/i0;->S(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;Z)V

    .line 183
    .line 184
    .line 185
    :goto_1
    invoke-direct {p1, p2}, Lcom/transsion/home/adapter/trending/provider/i0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 190
    .line 191
    .line 192
    move-result-object p4

    .line 193
    if-eqz p4, :cond_8

    .line 194
    .line 195
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object p4

    .line 199
    if-eqz p4, :cond_8

    .line 200
    .line 201
    invoke-interface {p4, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    :cond_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 219
    .line 220
    invoke-virtual {p0, p7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-ne p0, v4, :cond_9

    .line 225
    .line 226
    invoke-virtual {p6, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    move-object v0, p0

    .line 231
    check-cast v0, Ljava/lang/String;

    .line 232
    .line 233
    if-nez v0, :cond_9

    .line 234
    .line 235
    move-object v0, v5

    .line 236
    :cond_9
    invoke-virtual {p3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    sget-object p0, Lqi/h;->a:Lqi/h;

    .line 240
    .line 241
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 242
    .line 243
    iget p1, p1, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 244
    .line 245
    invoke-virtual {p2, p1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p0, p1, p3}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method private final Q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;Lzk/j;)V
    .locals 14

    .line 1
    move-object v9, p0

    .line 2
    move-object v10, p1

    .line 3
    move-object/from16 v5, p3

    .line 4
    .line 5
    move-object/from16 v11, p4

    .line 6
    .line 7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Lcom/transsion/home/adapter/suboperate/adapter/a;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    check-cast v0, Lcom/transsion/home/adapter/suboperate/adapter/a;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v0, v3

    .line 37
    :goto_0
    if-nez v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/a;

    .line 40
    .line 41
    iget v1, v9, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/a;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    move-object v12, v0

    .line 50
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    move-object v4, v0

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_1

    .line 70
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lzk/j;->a()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    if-ltz v0, :cond_4

    .line 81
    .line 82
    move-object v1, v4

    .line 83
    check-cast v1, Ljava/util/Collection;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ge v0, v1, :cond_4

    .line 90
    .line 91
    move v2, v0

    .line 92
    goto :goto_4

    .line 93
    :cond_4
    invoke-virtual {v11, v2}, Lzk/j;->f(I)V

    .line 94
    .line 95
    .line 96
    :goto_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    goto :goto_5

    .line 117
    :cond_5
    move-object v0, v3

    .line 118
    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingListData;->getRankingListId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    move-object v6, v0

    .line 133
    goto :goto_6

    .line 134
    :cond_6
    move-object v6, v3

    .line 135
    :goto_6
    move-object v0, v4

    .line 136
    check-cast v0, Ljava/lang/Iterable;

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_8

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Lcom/transsion/home/bean/RankingListItem;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/transsion/home/bean/RankingListItem;->getCategoryId()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-direct {p0, v5}, Lcom/transsion/home/adapter/trending/provider/i0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    const-string v13, "sequence"

    .line 163
    .line 164
    invoke-virtual {v7, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    const-string v13, "deepkLink"

    .line 168
    .line 169
    invoke-direct {p0, v3, v6}, Lcom/transsion/home/adapter/trending/provider/i0;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v7, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/transsion/home/bean/RankingListItem;->getTitle()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    if-nez v1, :cond_7

    .line 181
    .line 182
    const-string v1, ""

    .line 183
    .line 184
    :cond_7
    const-string v3, "module_name"

    .line 185
    .line 186
    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    iget v1, v9, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 190
    .line 191
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const-string v3, "tabId"

    .line 196
    .line 197
    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 201
    .line 202
    sget-object v3, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 203
    .line 204
    iget v13, v9, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 205
    .line 206
    invoke-virtual {v3, v13}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v1, v3, v7}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_8
    move-object v0, v4

    .line 215
    check-cast v0, Ljava/util/Collection;

    .line 216
    .line 217
    invoke-virtual {v12, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v12, v2}, Lcom/transsion/home/adapter/suboperate/adapter/a;->D1(I)V

    .line 221
    .line 222
    .line 223
    new-instance v13, Lcom/transsion/home/adapter/trending/provider/g0;

    .line 224
    .line 225
    move-object v0, v13

    .line 226
    move-object v1, p1

    .line 227
    move-object v2, v4

    .line 228
    move-object v3, p0

    .line 229
    move-object v4, v6

    .line 230
    move-object/from16 v5, p3

    .line 231
    .line 232
    move-object/from16 v6, p4

    .line 233
    .line 234
    move-object/from16 v7, p2

    .line 235
    .line 236
    invoke-direct/range {v0 .. v8}, Lcom/transsion/home/adapter/trending/provider/g0;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/i0;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lzk/j;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v12, v13}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v11, p1}, Lzk/j;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 246
    .line 247
    .line 248
    new-instance v0, Lcom/transsion/home/adapter/trending/provider/i0$d;

    .line 249
    .line 250
    invoke-direct {v0, v11, p1}, Lcom/transsion/home/adapter/trending/provider/i0$d;-><init>(Lzk/j;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method private static final R(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/i0;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lzk/j;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    move/from16 v6, p10

    .line 14
    .line 15
    const-string v7, "<unused var>"

    .line 16
    .line 17
    move-object/from16 v8, p8

    .line 18
    .line 19
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v8, p9

    .line 23
    .line 24
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    instance-of v8, v7, Lcom/transsion/home/adapter/suboperate/adapter/a;

    .line 32
    .line 33
    if-eqz v8, :cond_0

    .line 34
    .line 35
    check-cast v7, Lcom/transsion/home/adapter/suboperate/adapter/a;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v7, 0x0

    .line 39
    :goto_0
    if-nez v7, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {v7}, Lcom/transsion/home/adapter/suboperate/adapter/a;->C1()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-ltz v6, :cond_3

    .line 47
    .line 48
    move-object v10, v0

    .line 49
    check-cast v10, Ljava/util/Collection;

    .line 50
    .line 51
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-ge v6, v10, :cond_3

    .line 56
    .line 57
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    check-cast v10, Lcom/transsion/home/bean/RankingListItem;

    .line 62
    .line 63
    invoke-virtual {v10}, Lcom/transsion/home/bean/RankingListItem;->getCategoryId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    move-object/from16 v12, p3

    .line 68
    .line 69
    invoke-direct {v1, v11, v12}, Lcom/transsion/home/adapter/trending/provider/i0;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-direct {v1, v2}, Lcom/transsion/home/adapter/trending/provider/i0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    const-string v13, "sequence"

    .line 78
    .line 79
    invoke-virtual {v12, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string v14, "deepkLink"

    .line 83
    .line 84
    invoke-virtual {v12, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10}, Lcom/transsion/home/bean/RankingListItem;->getTitle()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    if-nez v10, :cond_2

    .line 92
    .line 93
    const-string v10, ""

    .line 94
    .line 95
    :cond_2
    const-string v15, "module_name"

    .line 96
    .line 97
    invoke-virtual {v12, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget v10, v1, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 101
    .line 102
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    const-string v15, "tabId"

    .line 107
    .line 108
    invoke-virtual {v12, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    sget-object v10, Lqi/h;->a:Lqi/h;

    .line 112
    .line 113
    sget-object v15, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 114
    .line 115
    iget v9, v1, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 116
    .line 117
    invoke-virtual {v15, v9}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v10, v9, v12}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v2}, Lcom/transsion/home/adapter/trending/provider/i0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget v1, v1, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 135
    .line 136
    invoke-virtual {v15, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v10, v1, v2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    if-ne v6, v8, :cond_4

    .line 144
    .line 145
    return-void

    .line 146
    :cond_4
    invoke-virtual {v3, v8, v4}, Lzk/j;->d(ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v6}, Lzk/j;->f(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v6}, Lcom/transsion/home/adapter/suboperate/adapter/a;->D1(I)V

    .line 153
    .line 154
    .line 155
    if-ltz v6, :cond_8

    .line 156
    .line 157
    move-object v1, v0

    .line 158
    check-cast v1, Ljava/util/Collection;

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-ge v6, v1, :cond_8

    .line 165
    .line 166
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Lcom/transsion/home/bean/RankingListItem;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/transsion/home/bean/RankingListItem;->getSubjects()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-nez v0, :cond_5

    .line 177
    .line 178
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :cond_5
    invoke-virtual/range {p6 .. p6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    instance-of v2, v1, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 187
    .line 188
    if-eqz v2, :cond_6

    .line 189
    .line 190
    move-object v9, v1

    .line 191
    check-cast v9, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_6
    const/4 v9, 0x0

    .line 195
    :goto_1
    if-eqz v9, :cond_7

    .line 196
    .line 197
    check-cast v0, Ljava/util/Collection;

    .line 198
    .line 199
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    invoke-virtual {v3, v6, v4}, Lzk/j;->b(ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 203
    .line 204
    .line 205
    :cond_8
    return-void
.end method

.method private final S(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;Z)V
    .locals 0

    .line 1
    const-string p2, "ranking_list_multi_tab"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lzk/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic y(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/i0;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lzk/j;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/transsion/home/adapter/trending/provider/i0;->R(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/transsion/home/adapter/trending/provider/i0;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lzk/j;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/i0;->H(Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 3

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
    sget v0, Lcom/transsion/home/R$id;->tvModuleTitle:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    sget v1, Lcom/transsion/home/R$id;->tvRankMore:I

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/transsion/home/adapter/trending/provider/f0;

    .line 51
    .line 52
    invoke-direct {v2, p0, p2}, Lcom/transsion/home/adapter/trending/provider/f0;-><init>(Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    invoke-static {v1}, Luf/c;->h(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    sget v0, Lcom/transsion/home/R$id;->rvTabList:I

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    sget v1, Lcom/transsion/home/R$id;->rvContentList:I

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    invoke-direct {p0, p2, p1}, Lcom/transsion/home/adapter/trending/provider/i0;->K(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lzk/j;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/transsion/home/adapter/trending/provider/i0;->Q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;Lzk/j;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v1, p2, p1}, Lcom/transsion/home/adapter/trending/provider/i0;->O(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/bean/OperateItem;Lzk/j;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/trending/provider/i0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    goto :goto_2

    .line 116
    :cond_2
    const/4 v0, 0x0

    .line 117
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v1, "sequence"

    .line 122
    .line 123
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-nez p2, :cond_3

    .line 131
    .line 132
    const-string p2, ""

    .line 133
    .line 134
    :cond_3
    const-string v0, "deepkLink"

    .line 135
    .line 136
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    sget-object p2, Lqi/h;->a:Lqi/h;

    .line 140
    .line 141
    sget-object v0, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 142
    .line 143
    iget v1, p0, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p2, v0, p1}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final M(Lcom/transsion/home/bean/OperateItem;)V
    .locals 4

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v0, v1, v2, v1}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/trending/provider/i0;->I(Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "sequence"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    const-string p1, ""

    .line 57
    .line 58
    :cond_2
    const-string v1, "deepkLink"

    .line 59
    .line 60
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string p1, "all"

    .line 64
    .line 65
    const-string v1, "module_name"

    .line 66
    .line 67
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 71
    .line 72
    sget-object v2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 73
    .line 74
    iget v3, p0, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p1, v3, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget v1, p0, Lcom/transsion/home/adapter/trending/provider/i0;->e:I

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/i0;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->RANKING_LIST_MULTI_TAB:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->home_item_new_style_ranking:I

    .line 2
    .line 3
    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 7

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
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v2, "StateAwareRankListProvider"

    .line 14
    .line 15
    const-string v3, "onViewAttachedToWindow"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 7

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
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v2, "StateAwareRankListProvider"

    .line 14
    .line 15
    const-string v3, "onViewDetachedFromWindow"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/home/adapter/trending/provider/i0;->g:Lbj/b;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lbj/b;->f()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
