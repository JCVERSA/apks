.class public Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"


# instance fields
.field public A0:Ljava/lang/Runnable;

.field public final B0:Lvz6;

.field public final N:I

.field public final O:J

.field public P:I

.field public Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

.field public R:Landroidx/viewpager2/widget/ViewPager2;

.field public S:Landroid/widget/TextView;

.field public T:Lcom/transsion/widgetslib/view/OSLoadingView;

.field public U:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

.field public V:Z

.field public W:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

.field public X:Lcom/transsion/utils/NetworkObserver;

.field public Y:I

.field public Z:Z

.field public a0:Landroid/view/View;

.field public b0:Lo18;

.field public c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

.field public d0:Ljava/util/Set;

.field public e0:Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

.field public f0:J

.field public g0:J

.field public h0:Ljava/lang/String;

.field public i0:I

.field public j0:I

.field public k0:Z

.field public l0:Ljava/lang/String;

.field public m0:J

.field public n0:I

.field public o0:Ljava/lang/String;

.field public p0:I

.field public q0:J

.field public r0:Ljava/lang/String;

.field public s0:Ljava/lang/String;

.field public t0:I

.field public u0:Ljava/lang/String;

.field public v0:Z

.field public w0:I

.field public x0:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field public y0:J

.field public z0:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->N:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->O:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->P:I

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->V:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Z:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->d0:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->k0:Z

    iput v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->t0:I

    new-instance v0, Lbh9;

    invoke-direct {v0, p0}, Lbh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->A0:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->B0:Lvz6;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->f0:J

    return-wide v0
.end method

.method public static bridge synthetic B0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a1()V

    return-void
.end method

.method private G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->f1(Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;)V

    return-void
.end method

.method public static synthetic T0(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    move-object p1, p2

    :cond_0
    if-eqz p1, :cond_4

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setupFocusHealthGuard: fix detached focus view="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", parent="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShortPlayerDetailActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_4
    :goto_0
    return-void
.end method

.method private initData()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->W:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->W:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ljh9;

    invoke-direct {v1, p0}, Ljh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->W:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->b()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->W:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->b()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lkh9;

    invoke-direct {v1, p0}, Lkh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->exitOthersPip()V

    sget v0, Lcom/transsion/onlinevideo/R$id;->layout_error_refrash:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a0:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$string;->net_media_play_network_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a0:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->refrash:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$string;->refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a0:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->remind:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->loading:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->T:Lcom/transsion/widgetslib/view/OSLoadingView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->episode_more:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->U:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    new-instance v1, Leh9;

    invoke-direct {v1, p0}, Leh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->setOnViewHiddenListener(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->U:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    new-instance v1, Lfh9;

    invoke-direct {v1, p0}, Lfh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->setOnEpisodeClickListener(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$d;)V

    new-instance v0, Lo18;

    invoke-direct {v0}, Lo18;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->b0:Lo18;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_duration_tip:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->S:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->viewPager:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "ShortPlayerDetailActivity"

    const-string v2, "initView: ViewPager initialized"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->V:Z

    invoke-direct {v0, p0, v1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Z)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    new-instance v1, Lgh9;

    invoke-direct {v1, p0}, Lgh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->setOnBoundaryReachedListener(Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$a;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    new-instance v1, Lhh9;

    invoke-direct {v1}, Lhh9;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->setOnFragmentUpdateListener(Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->B()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$b;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/viewpager2/widget/ViewPager2;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->markDurationPause()V

    :cond_0
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->M0(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->P0(I)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;Ljava/util/List;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->O0(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->S0(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->N0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;IZ)V

    return-void
.end method

.method public static synthetic w0(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->T0(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R0(JLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic y0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    return-object p0
.end method

.method public static bridge synthetic z0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a0:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public D0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->X0()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->setBottomGradientBgVisibility(Z)V

    :cond_0
    return-void
.end method

.method public E0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->U:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public H0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->W:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->e(Ljava/lang/String;)V

    return-void
.end method

.method public I0()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->A()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->x()I

    move-result p0

    if-ge p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public J0()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->x()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public K0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->S:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->w0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->w0:I

    :cond_0
    return-void
.end method

.method public L0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Z:Z

    return p0
.end method

.method public final synthetic M0(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V
    .locals 4

    const-string v0, "ShortPlayerDetailActivity"

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEST] Player:get video info end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->V:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->U:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->setVideoDetail(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    new-instance v3, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-direct {v3}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;-><init>()V

    invoke-virtual {v3, v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->setVideoSerial(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->setVideoInfo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->G(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->fromTranVideoDetail(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->u(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const-string p0, "get video info failed videoid"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, ""

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const-wide/32 v0, 0x895443

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x40a

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final synthetic N0(Ljava/util/List;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player:get video sketch end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortPlayerDetailActivity"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Player:get video sketch end: empty"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TEST] Player:get video sketch end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->H0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final synthetic O0(Ljava/util/List;I)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEpisodeClick: position="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSerialId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    invoke-virtual {v1, p2}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z(I)Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoSerial()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortPlayerDetailActivity"

    filled-new-array {v1, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public final synthetic P0(I)V
    .locals 3

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->V:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->W:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->f0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->P:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->P:I

    const/4 p0, 0x5

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->c(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public final synthetic R0(JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 9

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const-string p0, "onObservePlayDetailRequest success"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    invoke-static {p0}, Lzg9;->q(Landroid/app/Activity;)V

    invoke-static {p1, p2}, Lzg9;->i(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lzg9;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p4

    if-eqz p4, :cond_2

    iget-wide v0, p4, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    :goto_0
    move-wide v2, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "network"

    invoke-static {p0, p3}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0x895442

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    move-wide v4, p1

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lwz5;->M(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lwz5;->A()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-wide/32 v0, 0x895444

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    move-wide v4, p1

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lwz5;->M(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final synthetic S0(Landroid/os/PersistableBundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "router_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public U0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->v0:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->V:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public V0(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->W:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->W:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lch9;

    invoke-direct {v1, p0, p1, p2, p3}, Lch9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;JLjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public W0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->U:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->notifyAdapter()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->U:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v2, Lcom/transsion/onlinevideo/R$id;->episode_more:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v2, -0x1

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->setBottomGradientBgVisibility(Z)V

    :cond_0
    return-void
.end method

.method public X0(Lo18$b;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->b0:Lo18;

    invoke-virtual {v0, p0, p1}, Lo18;->o(Landroid/app/Activity;Lo18$b;)V

    return-void
.end method

.method public final Y0(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final Z0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ldh9;

    invoke-direct {v1, v0}, Ldh9;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->x0:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->x0:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public final a1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a0:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->T:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a0:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b1(J)V
    .locals 3

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->w0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ShortPlayerDetailActivity"

    const-string v2, "showTip: "

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->w0:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->S:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->w0:I

    add-int/lit8 v1, v1, 0x1

    const-string v2, "ott_short_duration_tip_show"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->S:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$string;->visha_would_play_next_after_seconds:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c1()V
    .locals 25

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v7

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object/from16 v22, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-wide v5, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-wide v7, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayDuration:J

    sget-wide v9, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->d0:J

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v1

    iget-wide v1, v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v1

    iget-wide v12, v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    iget-wide v14, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->q0:J

    iget-wide v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->m0:J

    move-wide/from16 v16, v1

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->w:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->s0:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->r0:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->u0:Ljava/lang/String;

    move-object/from16 v21, v1

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->E:Ljava/lang/String;

    move-object/from16 v23, v1

    const/16 v24, 0x0

    invoke-static/range {v5 .. v24}, Lwz5;->S(JJJLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "vd_ott_video_duration"

    invoke-static {v2, v1}, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsModel;->markAlgorithmRecommend(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iput-wide v3, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iput-wide v3, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iput-wide v3, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iput-wide v3, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    iget-object v0, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->d0:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public d1(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->U0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->v0:Z

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->e0:Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->C(J)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z(I)Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useHistoryPlay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "ShortPlayerDetailActivity"

    filled-new-array {v6, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-wide v2, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->setPlayPosition(I)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->W0(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPauseTime:J

    goto/16 :goto_1

    :sswitch_1
    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->f0:J

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p2

    iget-wide v4, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPauseTime:J

    sub-long v4, p0, v4

    invoke-static/range {v0 .. v5}, Lwz5;->D(JJJ)V

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->showTextToast(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_3

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->flushPip(Z)V

    goto/16 :goto_1

    :sswitch_5
    const-string p0, "vd_ott_buffering_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_6
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p1

    iget-wide p1, p1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->f0:J

    invoke-static {v0, p1, p2, v1, v2}, Lwz5;->y(Ljava/lang/String;JJ)V

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    goto :goto_1

    :sswitch_8
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->markDuration()V

    goto :goto_1

    :sswitch_9
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p2

    iget-wide v0, p2, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->f0:J

    invoke-static {p1, v0, v1, v2, v3}, Lwz5;->e0(Ljava/lang/String;JJ)V

    goto :goto_1

    :sswitch_a
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p1

    iget-wide p1, p1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->f0:J

    const-string p0, "pip"

    invoke-static {p0, p1, p2, v0, v1}, Lwz5;->y(Ljava/lang/String;JJ)V

    goto :goto_1

    :sswitch_b
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p2

    iget-wide v0, p2, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->f0:J

    invoke-static {p1, v0, v1, v2, v3}, Lwz5;->i(Ljava/lang/String;JJ)V

    goto :goto_1

    :sswitch_c
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->T:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    array-length p1, p2

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a0:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a1()V

    :cond_3
    :goto_1
    return-void

    :sswitch_d
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->timeCount()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "ott_play_fullscreen_guide"

    invoke-virtual {p0, p1, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_d
        0x3ea -> :sswitch_c
        0x3f0 -> :sswitch_b
        0x3f2 -> :sswitch_a
        0x3f4 -> :sswitch_9
        0x3f7 -> :sswitch_8
        0x3f8 -> :sswitch_d
        0x402 -> :sswitch_7
        0x405 -> :sswitch_6
        0x432 -> :sswitch_5
        0x434 -> :sswitch_4
        0x43a -> :sswitch_3
        0x442 -> :sswitch_2
        0x451 -> :sswitch_1
        0x452 -> :sswitch_0
    .end sparse-switch
.end method

.method public enterPip()V
    .locals 11

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->b0:Lo18;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_floating_pause:I

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_floating_play:I

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->J0()Z

    move-result v9

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->I0()Z

    move-result v10

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v10}, Lo18;->w(Landroid/app/Activity;ILjava/lang/String;IIIIZZ)V

    const/4 v0, 0x0

    invoke-static {v0}, Lh06;->d(Z)V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lo18;->q(Landroid/app/Activity;I)V

    return-void
.end method

.method public final exitOthersPip()V
    .locals 2

    sget-object v0, Lo18;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/services/VideosService;->n()V

    :cond_0
    sget-object v0, Lo18;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitOthersPip error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShortPlayerDetailActivity"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public flushPip(Z)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->b0:Lo18;

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_floating_pause:I

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_floating_play:I

    goto :goto_0

    :goto_1
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-eqz p1, :cond_2

    move v5, v3

    goto :goto_3

    :cond_2
    move v5, v1

    :goto_3
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->J0()Z

    move-result v8

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->I0()Z

    move-result v9

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lo18;->r(Landroid/app/Activity;ILjava/lang/String;IIIIZZ)V

    return-void
.end method

.method public getSerialStr()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->d0:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public initNotify()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->initNotify()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x405

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x40a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x402

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x40d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x432

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const v1, 0x900002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x434

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x41b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x43a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x442

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x452

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x451

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x44b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v0, 0x3ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final initThumb()V
    .locals 3

    invoke-static {p0}, Lvha;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-static {p0}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/onlinevideo/R$dimen;->seekbar_custom_thumb_offset:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setCustomThumb(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method public markDuration()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->S:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->timeCount()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final markDurationPause()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->S:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2bc

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    iget-wide v2, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-wide v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-wide v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemTime:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-wide v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayTime:J

    sub-long/2addr v0, v3

    iput-wide v0, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayDuration:J

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget p2, Lo18;->d:I

    if-ne p1, p2, :cond_0

    invoke-static {p0}, Lo18;->d(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->enterPip()V

    goto :goto_0

    :cond_0
    sget p2, Lo18;->c:I

    if-ne p1, p2, :cond_1

    invoke-static {p0}, Lo18;->c(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->enterPip()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->L0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->markDuration()V

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->parseIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->stop()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->setWindowFullScreen(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Y0(F)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Ljv3;->a(Landroid/view/Window;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    iput-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLogin:Z

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_short_player_detail:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "ott_short_duration_tip_show"

    invoke-virtual {p1, v0, v2}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->w0:I

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->initView()V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    new-instance v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->W:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    new-instance p1, Lcom/transsion/utils/NetworkObserver;

    invoke-direct {p1, p0}, Lcom/transsion/utils/NetworkObserver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->X:Lcom/transsion/utils/NetworkObserver;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->X:Lcom/transsion/utils/NetworkObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->X:Lcom/transsion/utils/NetworkObserver;

    const-string v0, "ottplayer"

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->B0:Lvz6;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/utils/NetworkObserver;->b(Ljava/lang/String;Lvz6;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iput v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Y:I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->a1()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->initThumb()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->initData()V

    invoke-static {}, Lwz5;->w()V

    invoke-static {}, Lwz5;->x()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x403

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Loa1;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Z0()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->x0:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->x0:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->x0:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->b0:Lo18;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p0}, Lo18;->v(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterController error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShortPlayerDetailActivity"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->w()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->setOnBoundaryReachedListener(Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$a;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Q:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->setOnFragmentUpdateListener(Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;)V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->z0:J

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->q0:J

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->m0:J

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->getSerialStr()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    iget-wide v8, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    invoke-static/range {v1 .. v9}, Lwz5;->C(JJJLjava/lang/String;J)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->K0()V

    :cond_4
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->release()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->clear()V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->V:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    const v1, 0x3d75c28f    # 0.06f

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setSubtitleSizeRatio(F)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setSubtitleBottomRatio(F)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->markDuration()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->A0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lo18;->h(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    invoke-static {}, Lwz5;->c()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->addVolume()V

    return v1

    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->F0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cutVolume()V

    return v1

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 6

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->z0:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->y0:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->z0:J

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->M0()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->A0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->D0()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->S0(Z)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Z:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->N0()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->y0:J

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Z:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->gotoBackground()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onActivityStop()V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onUserLeaveHint()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->G0()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->T0()V

    :cond_0
    return-void
.end method

.method public final parseIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const-string v2, "router_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v2, p1, Landroid/os/PersistableBundle;

    const-string v3, "ShortPlayerDetailActivity"

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->V:Z

    check-cast p1, Landroid/os/PersistableBundle;

    const-string v2, "vid"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->f0:J

    const-string v2, "serid"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->g0:J

    const-string v2, "sid"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->h0:Ljava/lang/String;

    const-string v2, "rel"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->i0:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseIntent: mVideoId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->f0:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mSerialId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->g0:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mSourceId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->h0:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mIsRelated = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->i0:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->j0:I

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->k0:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lih9;

    invoke-direct {v1, p0, p1}, Lih9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;Landroid/os/PersistableBundle;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseIntent: intentData = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_id()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->f0:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->h0:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->o0:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceType()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->p0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getFrom_card()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->l0:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_id()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->m0:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_sort()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->n0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getIs_related()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->i0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->q0:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getChannel_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->r0:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->s0:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getData_type()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->j0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_force_play()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->t0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isNotPlayFromHistory()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->k0:Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getIsPreview()I

    move-result p1

    sget-object v2, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->PREVIEW:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayType;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->V:Z

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->V:Z

    :goto_1
    iget p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->t0:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_serial_id()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->g0:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSerialId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->g0:J

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSerialId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->g0:J

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->c0:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->u0:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string p1, "parseIntent null"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_3
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsYoutube:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsVk:Z

    :cond_7
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    const-string v2, "allow_mobile_data_play"

    invoke-static {p0, v2, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v2, "moble_remind"

    invoke-virtual {p0, v2, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iput-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    return-void
.end method

.method public playNext()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public playPre()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->R:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public shouldApplyLegacySystemBarPadding()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final timeCount()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iget-wide v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    iget-wide v2, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    iget-wide v2, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    iget-wide v2, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayDuration:J

    return-void
.end method
