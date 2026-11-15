.class public final Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;
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

.field private j:I

.field private k:J

.field private l:Landroid/view/View;

.field private m:Z

.field private n:Lkotlinx/coroutines/t1;

.field private o:Lcom/transsion/home/bean/OperateItem;

.field private p:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

.field private final q:Ljava/lang/Runnable;


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
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->e:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->g:Ljava/util/Set;

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->j:I

    .line 22
    .line 23
    const-wide/16 p1, 0x1388

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    .line 26
    .line 27
    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/x;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/suboperate/provider/x;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    .line 33
    .line 34
    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->l:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Lcom/transsion/home/bean/OperateItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->o:Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic F(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;Lcom/transsion/home/bean/OperateItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->L(Lcom/transsion/home/bean/OperateItem;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->j:I

    .line 2
    .line 3
    return-void
.end method

.method private final H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final J(Ljava/lang/String;)Z
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
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->g:Ljava/util/Set;

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

.method private final K()V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->e:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {v4, p0, v0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$registerCourse$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->n:Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    return-void
.end method

.method private final L(Lcom/transsion/home/bean/OperateItem;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

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
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/transsion/home/bean/BannerData;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->J(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "event_type"

    .line 41
    .line 42
    const-string v3, "browse_banner"

    .line 43
    .line 44
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string v2, "sequence"

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->e:I

    .line 57
    .line 58
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string v2, "tabId"

    .line 63
    .line 64
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-static {v0, v1}, Lsk/b;->b(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-static {p1, v1}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 76
    .line 77
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 78
    .line 79
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->e:I

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p1, p2, v1}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private static final M(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

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
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

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
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

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
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

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
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

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
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->H()V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_0
    return-void
.end method

.method private final N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->n:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->n:Lkotlinx/coroutines/t1;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->M(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 10

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
    sget v0, Lcom/transsion/home/R$id;->sub_operation_horizontal_view_pager:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 20
    .line 21
    sget v0, Lcom/transsion/home/R$id;->sub_operation_banner_bg:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->l:Landroid/view/View;

    .line 28
    .line 29
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/high16 v1, 0x42e00000    # 112.0f

    .line 42
    .line 43
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int v6, v0, v1

    .line 48
    .line 49
    int-to-float v0, v6

    .line 50
    const/high16 v1, 0x41100000    # 9.0f

    .line 51
    .line 52
    mul-float/2addr v0, v1

    .line 53
    const/16 v1, 0x10

    .line 54
    .line 55
    int-to-float v1, v1

    .line 56
    div-float/2addr v0, v1

    .line 57
    float-to-int v7, v0

    .line 58
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 59
    .line 60
    const-string v1, "viewPager2"

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move-object v0, v8

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    .line 75
    sget v0, Lcom/transsion/home/R$id;->sub_operation_view_scroll_helper:I

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/transsion/baseui/widget/OperateScrollableHost;

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, v2}, Lcom/transsion/baseui/widget/OperateScrollableHost;->interceptAllEvent(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->h0()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    sget v2, Lcom/transsion/home/R$id;->sub_operation_banner_space:I

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    .line 105
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->l:Landroid/view/View;

    .line 106
    .line 107
    if-nez p1, :cond_1

    .line 108
    .line 109
    const-string p1, "bgColorView"

    .line 110
    .line 111
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object p1, v8

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 120
    .line 121
    if-nez v2, :cond_2

    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move-object v2, v8

    .line 127
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    .line 133
    add-int/2addr v0, v2

    .line 134
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_3

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-nez p1, :cond_4

    .line 147
    .line 148
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    :cond_4
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 154
    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    move-object v0, v8

    .line 161
    :cond_5
    new-instance v2, Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 162
    .line 163
    invoke-direct {v2}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 170
    .line 171
    if-nez v0, :cond_6

    .line 172
    .line 173
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move-object v0, v8

    .line 177
    :cond_6
    const/4 v2, 0x3

    .line 178
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 182
    .line 183
    if-nez v0, :cond_7

    .line 184
    .line 185
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    move-object v0, v8

    .line 189
    :cond_7
    new-instance v9, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    .line 190
    .line 191
    iget v4, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->e:I

    .line 192
    .line 193
    move-object v2, v9

    .line 194
    move-object v3, p1

    .line 195
    move-object v5, p2

    .line 196
    invoke-direct/range {v2 .. v7}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;-><init>(Ljava/util/List;ILcom/transsion/home/bean/OperateItem;II)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v9}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 200
    .line 201
    .line 202
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_8

    .line 207
    .line 208
    return-void

    .line 209
    :cond_8
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    .line 210
    .line 211
    if-eqz v0, :cond_9

    .line 212
    .line 213
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    .line 217
    .line 218
    :cond_9
    new-instance v0, Landroid/os/Handler;

    .line 219
    .line 220
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 225
    .line 226
    .line 227
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    .line 228
    .line 229
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 230
    .line 231
    if-nez v0, :cond_a

    .line 232
    .line 233
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    move-object v0, v8

    .line 237
    :cond_a
    new-instance v2, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;

    .line 238
    .line 239
    invoke-direct {v2, p2, p0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const/4 v2, 0x0

    .line 250
    if-eqz v0, :cond_b

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getInterval()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-eqz v0, :cond_b

    .line 257
    .line 258
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    if-eqz v0, :cond_b

    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    goto :goto_0

    .line 269
    :cond_b
    move v0, v2

    .line 270
    :goto_0
    int-to-long v3, v0

    .line 271
    const-wide/16 v5, 0x3e8

    .line 272
    .line 273
    mul-long/2addr v3, v5

    .line 274
    const-wide/16 v5, 0x0

    .line 275
    .line 276
    cmp-long v0, v3, v5

    .line 277
    .line 278
    if-lez v0, :cond_c

    .line 279
    .line 280
    goto :goto_1

    .line 281
    :cond_c
    iget-wide v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    .line 282
    .line 283
    :goto_1
    iput-wide v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    .line 284
    .line 285
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->j:I

    .line 286
    .line 287
    if-ltz v0, :cond_d

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    const v0, 0x3fffffff    # 1.9999999f

    .line 295
    .line 296
    .line 297
    rem-int p1, v0, p1

    .line 298
    .line 299
    sub-int/2addr v0, p1

    .line 300
    :goto_2
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 301
    .line 302
    if-nez p1, :cond_e

    .line 303
    .line 304
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    move-object p1, v8

    .line 308
    :cond_e
    invoke-virtual {p1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 309
    .line 310
    .line 311
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 312
    .line 313
    if-nez p1, :cond_f

    .line 314
    .line 315
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_f
    move-object v8, p1

    .line 320
    :goto_3
    invoke-virtual {v8}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    const-string v0, "null cannot be cast to non-null type com.transsion.home.adapter.suboperate.adapter.SubHorizontalViewPagerAdapter"

    .line 325
    .line 326
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    .line 330
    .line 331
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->p:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    .line 332
    .line 333
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->o:Lcom/transsion/home/bean/OperateItem;

    .line 334
    .line 335
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->HORIZONTAL_BANNER:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->item_sub_operation_horizontal_banner:I

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
    iget-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->m:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

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
    iget-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->m:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    :cond_0
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
    .locals 3

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
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->m:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->k:J

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->K()V

    .line 24
    .line 25
    .line 26
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
    iput-boolean p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->m:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->h:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->q:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->N()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
