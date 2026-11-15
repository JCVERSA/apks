.class public Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"


# instance fields
.field public A:Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

.field public B:Licc;

.field public C:Z

.field public D:Ljava/util/List;

.field public E:Z

.field public F:Z

.field public G:Ljava/util/List;

.field public H:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field public I:Landroid/view/View;

.field public final J:Landroidx/lifecycle/Observer;

.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;

.field public o:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

.field public p:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

.field public q:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public r:Z

.field public s:Z

.field public t:Lcom/transsion/WindowInfoViewModel;

.field public u:Landroid/view/View;

.field public v:Z

.field public w:Ljava/util/ArrayList;

.field public final x:Landroidx/lifecycle/Observer;

.field public y:Lcom/transsion/widgetslib/widget/SearchBar;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->r:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->w:Ljava/util/ArrayList;

    new-instance v0, Lf13;

    invoke-direct {v0, p0}, Lf13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->x:Landroidx/lifecycle/Observer;

    new-instance v0, Licc;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Licc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->B:Licc;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->D:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->G:Ljava/util/List;

    new-instance v0, Lg13;

    invoke-direct {v0, p0}, Lg13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->H:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v0, Lh13;

    invoke-direct {v0, p0}, Lh13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->J:Landroidx/lifecycle/Observer;

    return-void
.end method

.method private C0()V
    .locals 3

    const-class v0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByFragment(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->p:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->p:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->j()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v2, Ll13;

    invoke-direct {v2, p0}, Ll13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_search_keys"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/transsion/dbdata/beans/sniff/SearchKey;

    invoke-static {v0, v2}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SearchKey;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->E0(Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->p:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->i()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lm13;

    invoke-direct {v2, p0}, Lm13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->B0()V

    return-void
.end method

.method private D0()V
    .locals 2

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "web_activity_back"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$c;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "media_library_data_flag"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lk13;

    invoke-direct {v1, p0}, Lk13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private addBottomBarShowStateObserver()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->q:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->x:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->q:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->T0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->P0(Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->M0(Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->R0()V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->lambda$onViewCreated$0()V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->Q0()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->F0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->S0()V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->addBottomBarShowStateObserver()V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->U0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->K0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->N0(Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->J0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->O0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Lwoc;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->W0(Lwoc;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->V0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->L0(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic w0(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->z0(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    return-void
.end method

.method private y0()I
    .locals 1

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x7

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method


# virtual methods
.method public A0(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "DownloadRecommendFragment"

    const-string p1, "inflateWebPopupView null bookmark"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->web_pop_up_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Li13;

    invoke-direct {v1, p0}, Li13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    new-instance v2, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$a;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$a;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance v0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$b;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    move-object v3, v0

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$b;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;ZJLcom/transsion/dbdata/beans/sniff/Bookmark;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$id;->rl_pop_click:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$id;->bookmark_cover_item:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$id;->iv_web_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    sget v4, Lcom/transsion/sniffer_load/R$id;->tv_url:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    sget v5, Lcom/transsion/sniffer_load/R$id;->custom_bookmark_cover:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "dl_brower_rpfloating_show"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getImageResId()I

    move-result v0

    const/16 v3, 0x8

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getImageResId()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getImageUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getImageUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;->bitmap:[B

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;->bitmap:[B

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, ""

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lb23;->o(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget p0, Lcom/transsion/sniffer_load/R$drawable;->ic_default_web_icon:I

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final B0()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCloudDiskData mIsShowCloudDisk\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lzz0;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSupportMIMediaLibrary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->isSupportMIMediaLibrary()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadRecommendFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lzz0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->isSupportMIMediaLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->v:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->o:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->o:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

    new-instance v1, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$d;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment$d;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;->i(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->p:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->g(Landroid/content/Context;)V

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->isSupportMIMediaLibrary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->p:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->p()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->p:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lb13;

    invoke-direct {v2, p0}, Lb13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method

.method public final E0(Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lx03;

    invoke-direct {v0, p0, p1, p2}, Lx03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final F0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$dimen;->online_custom_refresh_view_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setProgressViewEndTarget(ZI)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v1, Ly03;

    invoke-direct {v1, p0}, Ly03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public G0(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$id;->search_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/SearchBar;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->y:Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz p1, :cond_0

    new-instance v0, Lj13;

    invoke-direct {v0, p0}, Lj13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public H0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DownLoadMainFragmentNew_ismPopUpWebShow"

    iget-boolean v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->s:Z

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->s:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_web"

    invoke-static {v0, v1}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->b1(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->s:Z

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->c1(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic I0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->B:Licc;

    iget-object p1, p1, Licc;->c:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->B:Licc;

    iget-object p2, p2, Licc;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    invoke-virtual {p0, p2}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->Z0(Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getSort()Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "queue"

    invoke-interface {p0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "content"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "index"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dl_brower_cycle_cl"

    invoke-static {p1, p0}, Lp06;->b0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final synthetic J0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->Z0(Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;)V

    return-void
.end method

.method public final synthetic K0(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->s:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DownLoadMainFragmentNew_ismPopUpWebShow"

    iget-boolean v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->s:Z

    invoke-static {v0, v1, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_web"

    invoke-static {v0, v1}, Lw6c;->z(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "DownloadRecommendFragment"

    const-string v1, "click close WebPopupView"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const-string v0, "dl_brower_rpfloating_close_cl"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->notifyMiniBarVisible(Z)V

    return-void
.end method

.method public final synthetic L0(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->u:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->o:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->X0(Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->u:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic M0(Lcom/transsion/dbdata/beans/sniff/SearchKey;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->E0(Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    return-void
.end method

.method public final synthetic N0(Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->n:Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->getWebsite_category_list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->d(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->n:Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final synthetic O0(Ljava/lang/Boolean;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->v:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->B0()V

    :cond_0
    return-void
.end method

.method public final synthetic P0(Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->x0(Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    return-void
.end method

.method public final synthetic Q0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->r:Z

    return-void
.end method

.method public final synthetic R0()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public final synthetic S0()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->p:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->o(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->v:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->isSupportMIMediaLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->p:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->p()V

    :cond_0
    const-string v0, "dl_show_refresh"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->r:Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v1, Lz03;

    invoke-direct {v1, p0}, Lz03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v1, La13;

    invoke-direct {v1, p0}, La13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic T0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->Z0(Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;)V

    return-void
.end method

.method public final synthetic U0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public final synthetic V0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string p1, "last_web"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->b1(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    goto :goto_0

    :cond_0
    const-string p1, "search_url_history"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->G:Ljava/util/List;

    const-string p2, "DownLoadMainFragmentNew_ismPopUpWebShow"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->c1(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->c1(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic W0(Lwoc;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "windowOptions  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lwoc;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadRecommendFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object p1

    const-string v0, "last_web"

    invoke-static {p1, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->notifyMiniBarVisible(Z)V

    return-void
.end method

.method public final X0(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->w:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->w:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonPhoto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Laz5;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Y0(Z)V
    .locals 0

    return-void
.end method

.method public final Z0(Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->z:Landroid/view/View;

    sget v0, Lcom/transsion/sniffer_load/R$id;->top_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->setActionPolicy(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->y:Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->y:Lcom/transsion/widgetslib/widget/SearchBar;

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->z:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->z(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/ViewGroup;[Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->stopEdit()V

    const-string p1, "dl_brower_cl"

    const-wide/16 v0, 0x246c

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->a1()V

    return-void
.end method

.method public final a1()V
    .locals 3

    invoke-static {}, Lzz0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->isSupportMIMediaLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/cloud/searchcloudactivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "download page"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/transsion/sniffer_load/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    const-string v2, "dl_brower_cl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "page_tag"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public b1(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->A0(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    return-void
.end method

.method public c1(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DownLoadMainFragmentNew_ismPopUpWebShow"

    iget-boolean v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->s:Z

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->s:Z

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->I:Landroid/view/View;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public notifyVideoBarShowStateChange(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoBarShowStateChange :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadRecommendFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->y0()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->n:Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->s:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;->s:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->H:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {p1, p0}, Lw6c;->y(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->p:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->j()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->t:Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string v0, "media_library_data_flag"

    invoke-virtual {p0, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->fragment_download_recommend:I

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSaveInstanceState  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->s:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadRecommendFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->z:Landroid/view/View;

    sget p2, Lcom/transsion/sniffer_load/R$id;->pull_refresh_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    sget p2, Lcom/transsion/sniffer_load/R$id;->rv_recommend:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->diver_mediaLibrary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->u:Landroid/view/View;

    sget p2, Lcom/transsion/sniffer_load/R$id;->rv_mediaLibrary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->n:Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->n:Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->G0(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->H0()V

    new-instance p2, Lw03;

    invoke-direct {p2, p0}, Lw03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->D0()V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->C0()V

    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-direct {p2, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/transsion/WindowInfoViewModel;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->t:Lcom/transsion/WindowInfoViewModel;

    iget-object p2, p2, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->J:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    const-string v0, "mmkv_search_keys"

    invoke-virtual {p2, v0}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/transsion/dbdata/beans/sniff/SearchKey;

    invoke-static {p2, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/SearchKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->E0(Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->E0(Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V

    :goto_0
    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    new-instance p2, Le13;

    invoke-direct {p2, p0}, Le13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onViewStateRestored  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->s:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadRecommendFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public stopEdit()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->Y0(Z)V

    :cond_0
    return-void
.end method

.method public final x0(Landroid/view/View;Lcom/transsion/dbdata/beans/sniff/SearchKey;)V
    .locals 3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget v0, Lcom/transsion/sniffer_load/R$id;->avf_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    iput-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->A:Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    if-nez v1, :cond_2

    sget v1, Lcom/transsion/sniffer_load/R$id;->avf_view_stub:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    iput-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->A:Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->A:Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->A:Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Licc;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Licc;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->B:Licc;

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->A:Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SearchKey;->getBannerKeys()Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SearchKey;->getBannerKeys()Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;->getDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SearchKey;->getBannerKeys()Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;->getDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->D:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->D:Ljava/util/List;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SearchKey;->getBannerKeys()Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;->getDataList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->C:Z

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->E:Z

    if-eqz p1, :cond_5

    const-string p1, "dl_brower_cycle_show"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->B:Licc;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->D:Ljava/util/List;

    invoke-virtual {p1, p2}, Licc;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->A:Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    new-instance p2, Ld13;

    invoke-direct {p2, p0}, Ld13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    :cond_6
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->B:Licc;

    invoke-virtual {p2, p1}, Licc;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->A:Lcom/transsion/sniffer_load/widgets/ClickAdapterViewFlipper;

    new-instance p2, Lc13;

    invoke-direct {p2, p0}, Lc13;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;->C:Z

    :cond_7
    :goto_2
    return-void
.end method

.method public final z0(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/transsion/sniffer_load/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "web_url"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "web_url_from"

    const-string v1, "dl_brower_rpfloating_reopen_cl"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x4da

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0, p1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    invoke-static {v1}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method
