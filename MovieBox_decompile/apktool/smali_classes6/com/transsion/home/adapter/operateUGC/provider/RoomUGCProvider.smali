.class public final Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$a;,
        Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$a;

.field public static final i:I


# instance fields
.field private final e:I

.field private final f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field private final g:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->h:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->i:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->e:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->g:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->E(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/OperateItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->D(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/OperateItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final D(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/OperateItem;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->I(Lcom/transsion/home/bean/OperateItem;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lep/k;->a:Lep/k;

    .line 5
    .line 6
    const/16 v5, 0xb

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "UgcTrending"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static/range {v0 .. v6}, Lep/k;->i(Lep/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final E(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final F(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final G(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/RoomEntranceResponse;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p4}, Lcom/transsion/home/bean/RoomEntranceResponse;->getTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/transsion/home/bean/OperateItem;->setTitle(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/transsion/home/R$id;->tvProviderVerticalTitle:I

    .line 9
    .line 10
    invoke-virtual {p4}, Lcom/transsion/home/bean/RoomEntranceResponse;->getTitle()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/transsion/home/bean/RoomEntranceResponse;->getPosts()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Collection;

    .line 22
    .line 23
    const-string v1, "itemView"

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 35
    .line 36
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4}, Lcom/transsion/home/bean/RoomEntranceResponse;->getPosts()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    check-cast p4, Ljava/util/Collection;

    .line 55
    .line 56
    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 p2, 0x0

    .line 67
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    if-eqz p4, :cond_3

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    add-int/lit8 v0, p2, 0x1

    .line 78
    .line 79
    if-gez p2, :cond_1

    .line 80
    .line 81
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 82
    .line 83
    .line 84
    :cond_1
    check-cast p4, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 85
    .line 86
    invoke-direct {p3, p2, p0, p4}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->J(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 87
    .line 88
    .line 89
    move p2, v0

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    :goto_1
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 92
    .line 93
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p0
.end method

.method private final H(Lcom/transsion/home/bean/OperateItem;)V
    .locals 6

    .line 1
    const-string v0, "module_name"

    .line 2
    .line 3
    const-string v1, "all"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "position"

    .line 36
    .line 37
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->e:I

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "tabId"

    .line 48
    .line 49
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    const-string v3, ""

    .line 60
    .line 61
    :cond_1
    const-string v4, "title"

    .line 62
    .line 63
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v4, 0x4

    .line 68
    new-array v4, v4, [Lkotlin/Pair;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    aput-object v0, v4, v5

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    aput-object v1, v4, v0

    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    aput-object v2, v4, v0

    .line 78
    .line 79
    const/4 v0, 0x3

    .line 80
    aput-object v3, v4, v0

    .line 81
    .line 82
    invoke-static {v4}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 90
    .line 91
    const-string v1, "UgcTrending"

    .line 92
    .line 93
    invoke-virtual {p1, v1, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private final I(Lcom/transsion/home/bean/OperateItem;)V
    .locals 6

    .line 1
    const-string v0, "module_name"

    .line 2
    .line 3
    const-string v1, "all"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "position"

    .line 36
    .line 37
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->e:I

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "tabId"

    .line 48
    .line 49
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    const-string v3, ""

    .line 60
    .line 61
    :cond_1
    const-string v4, "title"

    .line 62
    .line 63
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v4, 0x4

    .line 68
    new-array v4, v4, [Lkotlin/Pair;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    aput-object v0, v4, v5

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    aput-object v1, v4, v0

    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    aput-object v2, v4, v0

    .line 78
    .line 79
    const/4 v0, 0x3

    .line 80
    aput-object v3, v4, v0

    .line 81
    .line 82
    invoke-static {v4}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 90
    .line 91
    const-string v1, "UgcTrending"

    .line 92
    .line 93
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private final J(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 12

    .line 1
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

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
    const-string v2, "post_id"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "position"

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v2, "module_name"

    .line 27
    .line 28
    const-string v3, "item"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "is_cache_post"

    .line 43
    .line 44
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    :cond_1
    move-object v4, v1

    .line 61
    :cond_2
    const-string v5, "user_id"

    .line 62
    .line 63
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-nez v5, :cond_4

    .line 78
    .line 79
    :cond_3
    move-object v5, v1

    .line 80
    :cond_4
    const-string v6, "group_id"

    .line 81
    .line 82
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-nez v6, :cond_6

    .line 97
    .line 98
    :cond_5
    move-object v6, v1

    .line 99
    :cond_6
    const-string v7, "subject_id"

    .line 100
    .line 101
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    if-eqz v7, :cond_7

    .line 110
    .line 111
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    if-eqz v7, :cond_7

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-nez v7, :cond_8

    .line 122
    .line 123
    :cond_7
    move-object v7, v1

    .line 124
    :cond_8
    const-string v8, "subject_type"

    .line 125
    .line 126
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_9

    .line 135
    .line 136
    const-string v8, "1"

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_9
    const-string v8, "0"

    .line 140
    .line 141
    :goto_0
    const-string v9, "builtin"

    .line 142
    .line 143
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    if-eqz v9, :cond_a

    .line 152
    .line 153
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    if-nez v9, :cond_b

    .line 158
    .line 159
    :cond_a
    sget-object v9, Lcom/transsion/moviedetailapi/bean/MediaType;->TEXT:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 160
    .line 161
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    :cond_b
    const-string v10, "post_media_type"

    .line 166
    .line 167
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    iget v10, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->e:I

    .line 172
    .line 173
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    const-string v11, "tabId"

    .line 178
    .line 179
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    if-eqz p2, :cond_d

    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getOps()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    if-nez v11, :cond_c

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_c
    move-object v1, v11

    .line 193
    goto :goto_2

    .line 194
    :cond_d
    :goto_1
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    if-nez p3, :cond_e

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_e
    move-object v1, p3

    .line 202
    :goto_2
    const-string p3, "ops"

    .line 203
    .line 204
    invoke-static {p3, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    const/16 v1, 0xc

    .line 209
    .line 210
    new-array v1, v1, [Lkotlin/Pair;

    .line 211
    .line 212
    const/4 v11, 0x0

    .line 213
    aput-object v0, v1, v11

    .line 214
    .line 215
    const/4 v0, 0x1

    .line 216
    aput-object p1, v1, v0

    .line 217
    .line 218
    const/4 p1, 0x2

    .line 219
    aput-object v2, v1, p1

    .line 220
    .line 221
    const/4 p1, 0x3

    .line 222
    aput-object v3, v1, p1

    .line 223
    .line 224
    const/4 p1, 0x4

    .line 225
    aput-object v4, v1, p1

    .line 226
    .line 227
    const/4 p1, 0x5

    .line 228
    aput-object v5, v1, p1

    .line 229
    .line 230
    const/4 p1, 0x6

    .line 231
    aput-object v6, v1, p1

    .line 232
    .line 233
    const/4 p1, 0x7

    .line 234
    aput-object v7, v1, p1

    .line 235
    .line 236
    const/16 p1, 0x8

    .line 237
    .line 238
    aput-object v8, v1, p1

    .line 239
    .line 240
    const/16 p1, 0x9

    .line 241
    .line 242
    aput-object v9, v1, p1

    .line 243
    .line 244
    const/16 p1, 0xa

    .line 245
    .line 246
    aput-object v10, v1, p1

    .line 247
    .line 248
    const/16 p1, 0xb

    .line 249
    .line 250
    aput-object p3, v1, p1

    .line 251
    .line 252
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    if-eqz p2, :cond_f

    .line 257
    .line 258
    invoke-static {p2, p1}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 259
    .line 260
    .line 261
    :cond_f
    sget-object p2, Lqi/h;->a:Lqi/h;

    .line 262
    .line 263
    const-string p3, "UgcTrending"

    .line 264
    .line 265
    invoke-virtual {p2, p3, p1}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    .line 267
    .line 268
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/RoomEntranceResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->G(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/RoomEntranceResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->F(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 5

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
    new-instance v0, Lcom/transsion/home/adapter/operateUGC/provider/x;

    .line 12
    .line 13
    invoke-direct {v0, p0, p2}, Lcom/transsion/home/adapter/operateUGC/provider/x;-><init>(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/OperateItem;)V

    .line 14
    .line 15
    .line 16
    sget v1, Lcom/transsion/home/R$id;->tvProviderVerticalTitle:I

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    .line 24
    new-instance v2, Lcom/transsion/home/adapter/operateUGC/provider/y;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Lcom/transsion/home/adapter/operateUGC/provider/y;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    sget v1, Lcom/transsion/home/R$id;->tvProviderVerticalMore:I

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/TextView;

    .line 39
    .line 40
    new-instance v2, Lcom/transsion/home/adapter/operateUGC/provider/z;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/transsion/home/adapter/operateUGC/provider/z;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p2}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->H(Lcom/transsion/home/bean/OperateItem;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget v0, Lcom/transsion/home/R$id;->tvProviderVerticalTitle:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    new-instance v0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;

    .line 80
    .line 81
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->e:I

    .line 82
    .line 83
    invoke-direct {v0, v1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;-><init>(ILcom/transsion/home/bean/OperateItem;)V

    .line 84
    .line 85
    .line 86
    sget v1, Lcom/transsion/home/R$id;->rvProviderVerticalPost:I

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    .line 94
    new-instance v2, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const/4 v4, 0x3

    .line 101
    invoke-direct {v2, v3, v4}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_2

    .line 112
    .line 113
    new-instance v2, Ltf/a;

    .line 114
    .line 115
    const/16 v3, 0x8

    .line 116
    .line 117
    invoke-static {v3}, Llj/a;->b(I)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-direct {v2, v3, v4, v4, v4}, Ltf/a;-><init>(IIII)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->g:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 132
    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->B()Landroidx/lifecycle/b0;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->p(Landroidx/lifecycle/u;)V

    .line 144
    .line 145
    .line 146
    :cond_3
    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->g:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 147
    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->B()Landroidx/lifecycle/b0;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_4

    .line 155
    .line 156
    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 157
    .line 158
    new-instance v3, Lcom/transsion/home/adapter/operateUGC/provider/a0;

    .line 159
    .line 160
    invoke-direct {v3, p2, p1, v0, p0}, Lcom/transsion/home/adapter/operateUGC/provider/a0;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$b;

    .line 164
    .line 165
    invoke-direct {p1, v3}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2, p1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->ROOM:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->provider_ugc_vertical_content:I

    .line 2
    .line 3
    return v0
.end method
