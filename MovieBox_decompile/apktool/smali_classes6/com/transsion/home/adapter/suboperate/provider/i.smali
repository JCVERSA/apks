.class public final Lcom/transsion/home/adapter/suboperate/provider/i;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field private final e:I

.field private final f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field private final g:Ljava/util/Set;

.field private h:Landroid/os/Handler;

.field private i:Landroidx/viewpager2/widget/ViewPager2;

.field private j:Landroidx/viewpager2/widget/ViewPager2;

.field private k:Lcom/transsion/baseui/recycler/InterceptView;

.field private l:I

.field private m:J

.field private n:Z

.field private o:Lcom/transsion/home/adapter/suboperate/adapter/v;

.field private p:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

.field private q:Lcom/transsion/home/adapter/suboperate/adapter/v;

.field private final r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/fragment/tab/BaseHomeSubFragment;)V
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
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->e:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->g:Ljava/util/Set;

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->l:I

    .line 22
    .line 23
    const-wide/16 p1, 0x1388

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->U()V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/e;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/suboperate/provider/e;-><init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic A(Lcom/transsion/home/adapter/suboperate/provider/i;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->Z(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->V(Lcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->Y(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/home/adapter/suboperate/provider/i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic E(Lcom/transsion/home/adapter/suboperate/provider/i;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->Q()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic F(Lcom/transsion/home/adapter/suboperate/provider/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->l:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic G(Lcom/transsion/home/adapter/suboperate/provider/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic H(Lcom/transsion/home/adapter/suboperate/provider/i;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic I(Lcom/transsion/home/adapter/suboperate/provider/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->W(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lcom/transsion/home/adapter/suboperate/provider/i;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/i;->a0(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K(Lcom/transsion/home/adapter/suboperate/provider/i;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->l:I

    .line 2
    .line 3
    return-void
.end method

.method private final L(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v1, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->m()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    check-cast p1, Ljava/lang/Iterable;

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    move-object v6, v4

    .line 37
    check-cast v6, Lcom/transsion/home/bean/BannerData;

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    :cond_1
    if-eqz v5, :cond_0

    .line 46
    .line 47
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_8

    .line 62
    .line 63
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_6

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    move-object v3, v2

    .line 83
    check-cast v3, Lcom/transsion/home/bean/BannerData;

    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    move-object v3, v5

    .line 93
    :goto_2
    if-nez v3, :cond_4

    .line 94
    .line 95
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, Ljava/util/List;

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_7
    sget-object p1, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    .line 119
    .line 120
    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/h;

    .line 121
    .line 122
    invoke-direct {v1, v0, p2}, Lcom/transsion/home/adapter/suboperate/provider/h;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v1}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->k(Lkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    :cond_8
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Ljava/util/List;

    .line 131
    .line 132
    return-object p1
.end method

.method private static final M(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;I)Lkotlin/Unit;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-le v2, v1, :cond_1

    .line 19
    .line 20
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Ljava/util/List;

    .line 23
    .line 24
    new-instance v15, Lcom/transsion/home/bean/BannerData;

    .line 25
    .line 26
    const/16 v16, 0x7ff

    .line 27
    .line 28
    const/16 v17, 0x0

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v13, 0x0

    .line 40
    const/4 v14, 0x0

    .line 41
    move-object v3, v15

    .line 42
    move-object/from16 v18, v15

    .line 43
    .line 44
    move-object/from16 v15, p2

    .line 45
    .line 46
    invoke-direct/range {v3 .. v17}, Lcom/transsion/home/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Image;ZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    move-object/from16 v3, v18

    .line 50
    .line 51
    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Ljava/util/List;

    .line 58
    .line 59
    new-instance v15, Lcom/transsion/home/bean/BannerData;

    .line 60
    .line 61
    const/16 v16, 0x7ff

    .line 62
    .line 63
    const/16 v17, 0x0

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    const/4 v11, 0x0

    .line 74
    const/4 v12, 0x0

    .line 75
    const/4 v13, 0x0

    .line 76
    move-object v2, v15

    .line 77
    move-object/from16 v14, p2

    .line 78
    .line 79
    move-object/from16 v19, v15

    .line 80
    .line 81
    move/from16 v15, v16

    .line 82
    .line 83
    move-object/from16 v16, v17

    .line 84
    .line 85
    invoke-direct/range {v2 .. v16}, Lcom/transsion/home/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Image;ZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    .line 87
    .line 88
    move-object/from16 v2, v19

    .line 89
    .line 90
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :goto_0
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 94
    .line 95
    move-object/from16 v1, p1

    .line 96
    .line 97
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    return-object v0
.end method

.method private final N()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final P(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->b0(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final Q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "cardPager"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private final R(I)I
    .locals 1

    .line 1
    const v0, 0x3fffffff    # 1.9999999f

    .line 2
    .line 3
    .line 4
    rem-int p1, v0, p1

    .line 5
    .line 6
    sub-int/2addr v0, p1

    .line 7
    return v0
.end method

.method private final S(Ljava/util/List;Lcom/transsion/home/bean/OperateItem;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "cardPager"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    new-instance v3, Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 13
    .line 14
    invoke-direct {v3}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v1

    .line 28
    :cond_1
    const/4 v3, 0x3

    .line 29
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

    .line 33
    .line 34
    iget v3, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->e:I

    .line 35
    .line 36
    invoke-direct {v0, p1, v3, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;-><init>(Ljava/util/List;ILcom/transsion/home/bean/OperateItem;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-object p1, v1

    .line 49
    :cond_2
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 55
    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move-object v1, p1

    .line 63
    :goto_0
    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/i$b;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/suboperate/provider/i$b;-><init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private final U()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 2
    .line 3
    new-instance v6, Lcom/transsion/home/adapter/suboperate/provider/g;

    .line 4
    .line 5
    invoke-direct {v6, p0}, Lcom/transsion/home/adapter/suboperate/provider/g;-><init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 9
    .line 10
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 17
    .line 18
    const-class v2, Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "getName(...)"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 30
    .line 31
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static final V(Lcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->n:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;->getShow()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    .line 31
    .line 32
    iget-wide v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method private final W(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "viewPager2"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v0

    .line 27
    :goto_0
    const/4 v0, 0x1

    .line 28
    invoke-virtual {v1, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method private final X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "viewPager2"

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/v;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/home/adapter/suboperate/adapter/v;->g()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    check-cast v0, Ljava/util/Collection;

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    :cond_2
    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/f;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/transsion/home/adapter/suboperate/provider/f;-><init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v0, v1}, Lcom/transsion/home/adapter/suboperate/provider/i;->L(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method private static final Y(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->b0(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final Z(Lcom/transsion/home/adapter/suboperate/provider/i;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    const-string v1, "viewPager2"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v2

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v3, v2

    .line 28
    :cond_1
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 35
    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object p0, v2

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    rem-int/2addr v3, p0

    .line 64
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->N()V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_0
    return-void
.end method

.method private final a0(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->Q()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "cardPager"

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private final b0(Ljava/util/List;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/v;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/v;->i(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/v;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;->h(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    const/4 p1, 0x0

    .line 38
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :goto_3
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->P(Lcom/transsion/home/adapter/suboperate/provider/i;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/i;->M(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public O(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 8

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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 12
    .line 13
    sget v1, Lcom/transsion/home/R$id;->sub_operation_view_pager:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    sget v0, Lcom/transsion/home/R$id;->cardPager:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 32
    .line 33
    sget v0, Lcom/transsion/home/R$id;->interestLayout:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/transsion/baseui/recycler/InterceptView;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->k:Lcom/transsion/baseui/recycler/InterceptView;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    const-string v0, "interestLayout"

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-object v0, v1

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 53
    .line 54
    const-string v3, "cardPager"

    .line 55
    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v2, v1

    .line 62
    :cond_1
    invoke-virtual {v0, v2}, Lcom/transsion/baseui/recycler/InterceptView;->setPostView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    sget v0, Lcom/transsion/home/R$id;->sub_operation_view_scroll_helper:I

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/transsion/baseui/widget/OperateScrollableHost;

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-virtual {v0, v2}, Lcom/transsion/baseui/widget/OperateScrollableHost;->interceptAllEvent(Z)V

    .line 75
    .line 76
    .line 77
    sget v0, Lcom/transsion/home/R$id;->sub_operation_card_helper:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/transsion/baseui/widget/OperateScrollableHost;

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Lcom/transsion/baseui/widget/OperateScrollableHost;->interceptAllEvent(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    check-cast p1, Ljava/util/Collection;

    .line 101
    .line 102
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-nez p1, :cond_3

    .line 107
    .line 108
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    :cond_3
    new-instance v0, Lcom/transsion/home/adapter/suboperate/provider/d;

    .line 114
    .line 115
    invoke-direct {v0, p0}, Lcom/transsion/home/adapter/suboperate/provider/d;-><init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1, v0}, Lcom/transsion/home/adapter/suboperate/provider/i;->L(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Lcom/transsion/home/bean/BannerBean;->setBanners(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    return-void

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/v;

    .line 139
    .line 140
    if-nez v0, :cond_6

    .line 141
    .line 142
    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/v;

    .line 143
    .line 144
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->e:I

    .line 145
    .line 146
    invoke-direct {v0, p1, v2, p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/v;-><init>(Ljava/util/List;ILcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsion/home/bean/OperateItem;)V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/v;

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_6
    if-eqz v0, :cond_7

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/v;->i(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->q:Lcom/transsion/home/adapter/suboperate/adapter/v;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->o:Lcom/transsion/home/adapter/suboperate/adapter/v;

    .line 160
    .line 161
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 162
    .line 163
    const-string v2, "viewPager2"

    .line 164
    .line 165
    if-nez v0, :cond_8

    .line 166
    .line 167
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    move-object v0, v1

    .line 171
    :cond_8
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->o:Lcom/transsion/home/adapter/suboperate/adapter/v;

    .line 172
    .line 173
    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/i;->S(Ljava/util/List;Lcom/transsion/home/bean/OperateItem;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    .line 180
    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    .line 184
    .line 185
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    .line 187
    .line 188
    :cond_9
    new-instance v0, Landroid/os/Handler;

    .line 189
    .line 190
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    .line 198
    .line 199
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 200
    .line 201
    if-nez v0, :cond_a

    .line 202
    .line 203
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    move-object v0, v1

    .line 207
    :cond_a
    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/i$a;

    .line 208
    .line 209
    invoke-direct {v4, p2, p0}, Lcom/transsion/home/adapter/suboperate/provider/i$a;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/i;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    const/4 v0, 0x0

    .line 220
    if-eqz p2, :cond_b

    .line 221
    .line 222
    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerBean;->getInterval()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    if-eqz p2, :cond_b

    .line 227
    .line 228
    invoke-static {p2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    if-eqz p2, :cond_b

    .line 233
    .line 234
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    goto :goto_1

    .line 239
    :cond_b
    move p2, v0

    .line 240
    :goto_1
    int-to-long v4, p2

    .line 241
    const-wide/16 v6, 0x3e8

    .line 242
    .line 243
    mul-long/2addr v4, v6

    .line 244
    const-wide/16 v6, 0x0

    .line 245
    .line 246
    cmp-long p2, v4, v6

    .line 247
    .line 248
    if-lez p2, :cond_c

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_c
    iget-wide v4, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    .line 252
    .line 253
    :goto_2
    iput-wide v4, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    .line 254
    .line 255
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->l:I

    .line 256
    .line 257
    if-ltz p2, :cond_d

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->R(I)I

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    :goto_3
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 269
    .line 270
    if-nez p1, :cond_e

    .line 271
    .line 272
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    move-object p1, v1

    .line 276
    :cond_e
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->j:Landroidx/viewpager2/widget/ViewPager2;

    .line 280
    .line 281
    if-nez p1, :cond_f

    .line 282
    .line 283
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_f
    move-object v1, p1

    .line 288
    :goto_4
    invoke-virtual {v1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 289
    .line 290
    .line 291
    return-void
.end method

.method public final T(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->g:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    :goto_1
    return p1
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/i;->O(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->BANNER:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_banner:I

    .line 2
    .line 3
    return v0
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause(Landroidx/lifecycle/u;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->n:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 3

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->n:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/i;->X()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 4

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
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->n:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->m:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/transsion/home/adapter/suboperate/provider/i$c;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Lcom/transsion/home/adapter/suboperate/provider/i$c;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

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
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->n:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->h:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i;->r:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
