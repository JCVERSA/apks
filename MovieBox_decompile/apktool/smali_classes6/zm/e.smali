.class public final Lzm/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzm/e$a;,
        Lzm/e$b;
    }
.end annotation


# static fields
.field public static final q:Lzm/e$a;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/transsion/moviedetailapi/bean/Subject;

.field private final c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field private final d:Landroidx/viewpager2/widget/ViewPager2;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Z

.field private final h:Lkotlin/jvm/functions/Function1;

.field private i:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

.field private j:Lzm/e$b;

.field private k:Landroidx/viewpager2/adapter/FragmentStateAdapter;

.field private l:I

.field private m:J

.field private n:Z

.field private final o:Lkotlin/Lazy;

.field private final p:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzm/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lzm/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lzm/e;->q:Lzm/e$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/moviedetailapi/bean/Subject;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 3
    iput-object p2, p0, Lzm/e;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 4
    iput-object p3, p0, Lzm/e;->c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 5
    iput-object p4, p0, Lzm/e;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    iput-object p5, p0, Lzm/e;->e:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lzm/e;->f:Z

    .line 8
    iput-boolean p7, p0, Lzm/e;->g:Z

    .line 9
    iput-object p8, p0, Lzm/e;->h:Lkotlin/jvm/functions/Function1;

    .line 10
    new-instance p1, Lzm/a;

    invoke-direct {p1, p0}, Lzm/a;-><init>(Lzm/e;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lzm/e;->o:Lkotlin/Lazy;

    .line 11
    new-instance p1, Lzm/b;

    invoke-direct {p1, p0}, Lzm/b;-><init>(Lzm/e;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lzm/e;->p:Lkotlin/Lazy;

    .line 12
    invoke-direct {p0}, Lzm/e;->r()V

    .line 13
    invoke-direct {p0}, Lzm/e;->u()V

    .line 14
    invoke-direct {p0}, Lzm/e;->t()V

    .line 15
    invoke-direct {p0}, Lzm/e;->s()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/moviedetailapi/bean/Subject;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v9, v2

    goto :goto_0

    :cond_0
    move/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move/from16 v10, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 16
    invoke-direct/range {v3 .. v11}, Lzm/e;-><init>(Landroidx/fragment/app/Fragment;Lcom/transsion/moviedetailapi/bean/Subject;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic a(Lzm/e;Lcom/transsion/moviedetailapi/bean/SubjectPostCount;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lzm/e;->w(Lzm/e;Lcom/transsion/moviedetailapi/bean/SubjectPostCount;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lzm/e;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lzm/e;->z(Lzm/e;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lzm/e;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lzm/e;->v(Lzm/e;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lzm/e;)Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lzm/e;->y(Lzm/e;)Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lzm/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/e;->c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lzm/e;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/e;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lzm/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/e;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lzm/e;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/e;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lzm/e;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lzm/e;->q()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lzm/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/e;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Lzm/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/e;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic l(Lzm/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/e;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic m(Lzm/e;I)V
    .locals 0

    .line 1
    iput p1, p0, Lzm/e;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic n(Lzm/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzm/e;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method private final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzm/e;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lzm/e$c;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lzm/e$c;-><init>(Lzm/e;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lzm/e;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v1, p0, Lzm/e;->l:I

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private final p()Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lzm/e;->o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final q()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lzm/e;->p:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private final r()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "key_subj_comment_dot"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lzm/e;->n:Z

    .line 15
    .line 16
    return-void
.end method

.method private final s()V
    .locals 8

    .line 1
    new-instance v0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 2
    .line 3
    iget-object v1, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->setFollowTouch(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lzm/e$b;

    .line 17
    .line 18
    iget-object v4, p0, Lzm/e;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    .line 20
    invoke-direct {p0}, Lzm/e;->q()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-boolean v6, p0, Lzm/e;->f:Z

    .line 25
    .line 26
    iget-boolean v7, p0, Lzm/e;->g:Z

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    move-object v3, p0

    .line 30
    invoke-direct/range {v2 .. v7}, Lzm/e$b;-><init>(Lzm/e;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;ZZ)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lzm/e;->j:Lzm/e$b;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->setAdapter(Lqj/a;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lzm/e;->i:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 39
    .line 40
    iget-object v1, p0, Lzm/e;->c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lvy/a;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private final t()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lwv/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lwv/a;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    new-instance v2, Lzm/e$d;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0, v1}, Lzm/e$d;-><init>(Lzm/e;Lwv/a;Landroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lzm/e;->k:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 23
    .line 24
    iget-object v0, p0, Lzm/e;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-direct {p0}, Lzm/e;->o()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final u()V
    .locals 7

    .line 1
    iget-object v1, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    new-instance v6, Lzm/c;

    .line 4
    .line 5
    invoke-direct {v6, p0}, Lzm/c;-><init>(Lzm/e;)V

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
    const-class v2, Lcom/transsnet/flow/event/sync/event/PublishEvent;

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
    invoke-direct {p0}, Lzm/e;->p()Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->g()Landroidx/lifecycle/b0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 52
    .line 53
    new-instance v2, Lzm/d;

    .line 54
    .line 55
    invoke-direct {v2, p0}, Lzm/d;-><init>(Lzm/e;)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Lzm/e$e;

    .line 59
    .line 60
    invoke-direct {v3, v2}, Lzm/e$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lzm/e;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 67
    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    invoke-direct {p0}, Lzm/e;->p()Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->f(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void
.end method

.method private static final v(Lzm/e;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lzm/e;->m:J

    .line 7
    .line 8
    const-wide/16 v2, 0x1

    .line 9
    .line 10
    add-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Lzm/e;->m:J

    .line 12
    .line 13
    const-wide/16 v2, 0x63

    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    const-string p1, "99+"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-direct {p0}, Lzm/e;->q()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "("

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ")"

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p0, p0, Lzm/e;->i:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    if-eqz p0, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->getPagerTitleView(I)Lxy/d;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move-object p0, v0

    .line 92
    :goto_2
    instance-of v1, p0, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    move-object v0, p0

    .line 97
    check-cast v0, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    .line 98
    .line 99
    :cond_3
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setTitle(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p0
.end method

.method private static final w(Lzm/e;Lcom/transsion/moviedetailapi/bean/SubjectPostCount;)Lkotlin/Unit;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/SubjectPostCount;->getCount()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz v1, :cond_d

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_1
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/SubjectPostCount;->getCount()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move-object v1, v0

    .line 28
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, ""

    .line 36
    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    iput-wide v3, p0, Lzm/e;->m:J

    .line 44
    .line 45
    const-wide/16 v5, 0x63

    .line 46
    .line 47
    cmp-long v1, v3, v5

    .line 48
    .line 49
    if-lez v1, :cond_3

    .line 50
    .line 51
    const-string v1, "99+"

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    cmp-long v1, v3, v5

    .line 57
    .line 58
    if-gtz v1, :cond_4

    .line 59
    .line 60
    move-object v1, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_2
    if-nez v1, :cond_6

    .line 67
    .line 68
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/SubjectPostCount;->getCount()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_6
    invoke-direct {p0}, Lzm/e;->q()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_7

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "("

    .line 96
    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ")"

    .line 104
    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_8
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-boolean v1, p0, Lzm/e;->f:Z

    .line 128
    .line 129
    if-eqz v1, :cond_9

    .line 130
    .line 131
    iget-boolean v1, p0, Lzm/e;->g:Z

    .line 132
    .line 133
    if-nez v1, :cond_c

    .line 134
    .line 135
    :cond_9
    iget-object p0, p0, Lzm/e;->i:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 136
    .line 137
    if-eqz p0, :cond_a

    .line 138
    .line 139
    invoke-virtual {p0, v3}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->getPagerTitleView(I)Lxy/d;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    goto :goto_4

    .line 144
    :cond_a
    move-object p0, v0

    .line 145
    :goto_4
    instance-of v1, p0, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    .line 146
    .line 147
    if-eqz v1, :cond_b

    .line 148
    .line 149
    move-object v0, p0

    .line 150
    check-cast v0, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    .line 151
    .line 152
    :cond_b
    if-eqz v0, :cond_c

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setTitle(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_d
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 161
    .line 162
    return-object p0
.end method

.method private static final y(Lzm/e;)Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    iget-object p0, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 6
    .line 7
    .line 8
    const-class p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final z(Lzm/e;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/transsion/baseui/R$string;->for_you:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget v1, Lcom/transsion/baseui/R$string;->name_comments:I

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    filled-new-array {v0, p0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method


# virtual methods
.method public final x(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    const v1, 0x1636f

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x1f4

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object v0, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p0, Lzm/e;->a:Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->y0()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "getFragments(...)"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast v0, Ljava/lang/Iterable;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 72
    .line 73
    instance-of v2, v1, Lwv/b;

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    check-cast v1, Lwv/b;

    .line 78
    .line 79
    invoke-interface {v1, p1}, Lwv/b;->onScreenChange(Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    :goto_1
    return-void
.end method
