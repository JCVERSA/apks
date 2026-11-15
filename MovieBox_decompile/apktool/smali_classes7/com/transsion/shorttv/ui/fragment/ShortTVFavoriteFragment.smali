.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;
.super Lcom/transsion/shorttv/base/fragment/BaseListFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/shorttv/base/fragment/BaseListFragment<",
        "Lcom/transsion/shorttv/bean/Subject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 C2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001DB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u001f\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0013J\u001d\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0013J\u000f\u0010$\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0004J\r\u0010%\u001a\u00020\u0011\u00a2\u0006\u0004\u0008%\u0010\u0013J\u000f\u0010&\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0004R\u0018\u0010)\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u001b\u0010/\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u0018\u00101\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010(R$\u00109\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001b\u0010>\u001a\u00020:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010,\u001a\u0004\u0008<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010A\u00a8\u0006E"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;",
        "Lcom/transsion/shorttv/base/fragment/BaseListFragment;",
        "Lcom/transsion/shorttv/bean/Subject;",
        "<init>",
        "()V",
        "",
        "L0",
        "subject",
        "",
        "isDownloadView",
        "X0",
        "(Lcom/transsion/shorttv/bean/Subject;Z)V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "M0",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "U0",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "initViewData",
        "initListener",
        "m0",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "i0",
        "()Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "y0",
        "loadMore",
        "lazyLoadData",
        "getPageStateLayoutTitle",
        "initViewModel",
        "Q0",
        "retryLoadData",
        "n",
        "Ljava/lang/String;",
        "ops",
        "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "o",
        "Lkotlin/Lazy;",
        "S0",
        "()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "mViewModel",
        "p",
        "mPageNum",
        "Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;",
        "q",
        "Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;",
        "R0",
        "()Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;",
        "setListAdapter",
        "(Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;)V",
        "listAdapter",
        "Lwr/a;",
        "r",
        "T0",
        "()Lwr/a;",
        "recReport",
        "Lbr/b;",
        "s",
        "Lbr/b;",
        "exposureHelper",
        "t",
        "a",
        "shortTvLib_release"
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
.field public static final t:Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$a;


# instance fields
.field private n:Ljava/lang/String;

.field private final o:Lkotlin/Lazy;

.field private p:Ljava/lang/String;

.field private q:Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;

.field private final r:Lkotlin/Lazy;

.field private final s:Lbr/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->t:Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->o:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/shorttv/ui/fragment/t;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/transsion/shorttv/ui/fragment/t;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->r:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lbr/b;

    .line 38
    .line 39
    new-instance v3, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$d;

    .line 40
    .line 41
    invoke-direct {v3, p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$d;-><init>(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    const/4 v6, 0x0

    .line 46
    const v2, 0x3f19999a    # 0.6f

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    move-object v1, v0

    .line 51
    invoke-direct/range {v1 .. v6}, Lbr/b;-><init>(FLbr/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->s:Lbr/b;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic D0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->N0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E0()Lwr/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->Y0()Lwr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic F0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Lcom/transsion/shorttv/bean/ShortTVRespData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->W0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Lcom/transsion/shorttv/bean/ShortTVRespData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->O0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->P0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->V0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->M0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)Lwr/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->T0()Lwr/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final L0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqr/p;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lqr/p;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$b;-><init>(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private final M0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->q:Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Z()Landroid/widget/LinearLayout;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_1
    if-ge v1, v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    instance-of v3, v2, Lcom/transsion/shorttv/ui/widget/ShortTVDiscoverHeaderView;

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    check-cast v2, Lcom/transsion/shorttv/ui/widget/ShortTVDiscoverHeaderView;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/transsion/shorttv/ui/widget/ShortTVDiscoverHeaderView;->clearExposureCache()V

    .line 55
    .line 56
    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    return-void
.end method

.method private static final N0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->loadMore()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final O0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    instance-of p2, p1, Lcom/transsion/shorttv/bean/Subject;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->T0()Lwr/a;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->getPageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->Q0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p2, v0, p1, p3, v1}, Lwr/a;->c(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->X0(Lcom/transsion/shorttv/bean/Subject;Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private static final P0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    instance-of p2, p1, Lcom/transsion/shorttv/bean/Subject;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->T0()Lwr/a;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->getPageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->Q0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p2, v0, p1, p3, v1}, Lwr/a;->c(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->X0(Lcom/transsion/shorttv/bean/Subject;Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private final S0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final T0()Lwr/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->r:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lwr/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final U0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqr/p;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lqr/p;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/shorttv/base/widget/NpaLinearLayoutManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Lcom/transsion/shorttv/base/widget/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->q:Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->s:Lbr/b;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->L0()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$e;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$e;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method private static final V0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final W0(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;Lcom/transsion/shorttv/bean/ShortTVRespData;)Lkotlin/Unit;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVRespData;->getItems()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-eqz v3, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->t0()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    iget-object v4, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->p:Ljava/lang/String;

    .line 19
    .line 20
    const-string v5, "1"

    .line 21
    .line 22
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->k0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_4

    .line 34
    .line 35
    check-cast v3, Ljava/util/Collection;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->z0(Z)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-static {p0, v2, v0, v2}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->B0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->k0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    check-cast v3, Ljava/util/Collection;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->C0()V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVRespData;->getPager()Lcom/transsion/shorttv/bean/Pager;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->p:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->u0()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    invoke-static {p0, v1, v0, v2}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->w0(Lcom/transsion/shorttv/base/fragment/BaseListFragment;ZILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p0
.end method

.method private final X0(Lcom/transsion/shorttv/bean/Subject;Z)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lrr/a;->a:Lrr/a;

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->getPageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/16 v10, 0xc0

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    const-string v5, "download_subject"

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    move v6, p2

    .line 28
    move-object v7, p1

    .line 29
    invoke-static/range {v1 .. v11}, Lrr/a;->b(Lrr/a;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static final Y0()Lwr/a;
    .locals 1

    .line 1
    new-instance v0, Lwr/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lwr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final Q0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "favorite"

    .line 2
    .line 3
    return-object v0
.end method

.method public final R0()Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->q:Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "minitv_favorite"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_my_list:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public i0()Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->getPageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v3, Lcom/transsion/shorttv/base/widget/BaseLoadMoreView;

    .line 16
    .line 17
    invoke-direct {v3}, Lcom/transsion/shorttv/base/widget/BaseLoadMoreView;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lt6/f;->C(Ls6/a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v2}, Lt6/f;->z(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, v2}, Lt6/f;->y(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-virtual {v1, v2}, Lt6/f;->E(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/transsion/shorttv/ui/fragment/u;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/transsion/shorttv/ui/fragment/u;-><init>(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lt6/f;->D(Lr6/f;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$c;

    .line 58
    .line 59
    invoke-direct {v1}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$c;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/transsion/shorttv/ui/fragment/v;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/fragment/v;-><init>(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 71
    .line 72
    .line 73
    sget v1, Lcom/transsion/shorttv/R$id;->btn_download:I

    .line 74
    .line 75
    filled-new-array {v1}, [I

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/transsion/shorttv/ui/fragment/w;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/fragment/w;-><init>(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->q:Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;

    .line 91
    .line 92
    return-object v0
.end method

.method public initListener()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->initListener()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lqr/p;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lqr/p;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/transsion/shorttv/ui/fragment/x;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/fragment/x;-><init>(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public initViewData()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->initViewData()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->U0()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->z0(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->S0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsion/shorttv/ui/fragment/s;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/fragment/s;-><init>(Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$f;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public lazyLoadData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->p:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->S0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->p:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v3

    .line 19
    :goto_0
    const/16 v3, 0x8

    .line 20
    .line 21
    iget-object v4, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->n:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p0(Ljava/lang/String;IZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public loadMore()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->lazyLoadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public m0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_my_list:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "ops"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->n:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/shorttv/base/fragment/LazyFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->y0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->lazyLoadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public y0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/base/fragment/BaseListFragment;->z0(Z)V

    .line 3
    .line 4
    .line 5
    const-string v0, "1"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->p:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->lazyLoadData()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
