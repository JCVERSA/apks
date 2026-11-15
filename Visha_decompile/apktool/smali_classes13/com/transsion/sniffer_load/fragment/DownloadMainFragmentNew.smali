.class public Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/lang/Runnable;

.field public D:Landroid/widget/PopupWindow;

.field public l:Lcom/transsion/widgets/CustomTabLayout;

.field public m:Lcom/transsion/widgets/RtlViewPager;

.field public n:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

.field public o:Ljava/util/List;

.field public p:[Ljava/lang/String;

.field public q:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

.field public r:Lcom/transsion/playercommon/widgets/NotificationView;

.field public s:Landroid/widget/TextView;

.field public t:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

.field public v:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

.field public w:Z

.field public x:Lcom/transsion/widgets/BadgeView;

.field public y:Z

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->z:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->A:Z

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->B:Z

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic B0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic C0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic D0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private G0()V
    .locals 3

    const-class v0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByFragment(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->q:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->f(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->q:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->g(Landroid/content/Context;)V

    :cond_0
    const-class v0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByFragment(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->v:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->i()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Li03;

    invoke-direct {v2, p0}, Li03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private H0()V
    .locals 2

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "skip_download_guide"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lzz2;

    invoke-direct {v1, p0}, Lzz2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "show_full_screen_guide"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$c;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$c;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private I0(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_download_guide:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_cloud_guide:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v1, Lwz2;

    invoke-direct {v1, p0}, Lwz2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_download_manager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v0, Lxz2;

    invoke-direct {v0, p0}, Lxz2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v0, Lyz2;

    invoke-direct {v0, p0}, Lyz2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic O0(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->A:Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->stopEdit()V

    const/4 v0, 0x0

    const-string v1, "dl_download_cl"

    invoke-static {v1, v0, v0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->j0(Ljava/lang/String;IZZ)Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-static {p0, p1, p1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    const-string p0, "dl_brower_rp_vlist_check_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result p0

    const-string p1, "\u4e0b\u8f7d\u9996\u9875"

    invoke-static {p0, p1}, Ls16;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    const-wide/16 v2, 0x246c

    invoke-static {p0, v1, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic Q0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->s0()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->E0(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->E0(Z)V

    :goto_0
    return-void
.end method

.method private synthetic S0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->G0()V

    return-void
.end method

.method private Y0(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lc03;

    invoke-direct {v1, p0, p1}, Lc03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->T0(I)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->M0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->R0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->W0(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->N0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->X0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->S0()V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->L0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->U0(I)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->V0()V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->K0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->P0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->O0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->Q0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic t0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic u0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->v:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    return-object p0
.end method

.method public static bridge synthetic v0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->B:Z

    return p0
.end method

.method public static bridge synthetic w0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)Lcom/transsion/playercommon/widgets/NotificationView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->r:Lcom/transsion/playercommon/widgets/NotificationView;

    return-object p0
.end method

.method public static bridge synthetic x0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->B:Z

    return-void
.end method

.method public static bridge synthetic y0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->E0()V

    return-void
.end method

.method public static bridge synthetic z0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->Z0(Z)V

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->C:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->D:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->D:Landroid/widget/PopupWindow;

    goto :goto_2

    :goto_1
    iput-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->D:Landroid/widget/PopupWindow;

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public F0(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$id;->notify_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/NotificationView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->r:Lcom/transsion/playercommon/widgets/NotificationView;

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "vd_dl_net_show"

    invoke-static {v0, p1}, Ldz5;->b(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->r:Lcom/transsion/playercommon/widgets/NotificationView;

    new-instance v0, Lh03;

    invoke-direct {v0, p0}, Lh03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;

    invoke-direct {p1, p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$3;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    const-string p0, "visha_DownloadMainFragmentNew"

    invoke-static {p0, p1}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    return-void
.end method

.method public J0()Z
    .locals 0

    sget-boolean p0, Lpp3;->w:Z

    if-nez p0, :cond_0

    invoke-static {}, Lzz0;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic K0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const/4 p0, 0x0

    const-string p1, "vd_dl_net_set_cl"

    invoke-static {p0, p1}, Ldz5;->b(ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic L0(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->m:Lcom/transsion/widgets/RtlViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->Z0(Z)V

    return-void
.end method

.method public final synthetic M0(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-direct {p1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    const-string p0, "guide_dl_popup_check_cl"

    const-wide/16 v0, 0x246c

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final synthetic N0(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->A:Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->E0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->stopEdit()V

    new-instance v0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {p0, p1, p1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    const-string p0, "dl_guide_cl"

    const-wide/16 v0, 0x246c

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final synthetic P0(Landroid/view/View;)V
    .locals 2

    const-string p1, "refreshCloudDataWithDelay"

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lkt1;->c(Ljava/lang/String;J)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/clouddrive/cloudfragment"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    const/4 p0, 0x1

    invoke-static {p1, p0, p0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    invoke-static {}, Laz5;->b()V

    :cond_1
    return-void
.end method

.method public final synthetic R0(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->l:Lcom/transsion/widgets/CustomTabLayout;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->m:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {p0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgets/CustomTabLayout;->getTabAt(I)Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgets/CustomTabLayout;->selectTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    return-void
.end method

.method public final synthetic T0(I)V
    .locals 0

    sput p1, Lcom/transsion/playercommon/core/MainApp;->x:I

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->Y0(I)V

    return-void
.end method

.method public final synthetic U0(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->x:Lcom/transsion/widgets/BadgeView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->x:Lcom/transsion/widgets/BadgeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->x:Lcom/transsion/widgets/BadgeView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final synthetic V0()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->B:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->A:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$string;->visha_upload_video_to_cloud:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    neg-int v2, v2

    const v3, 0x800055

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lea7;->q(Landroid/view/View;Ljava/lang/String;III)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->D:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "mmkv_key_show_cloud_tip"

    invoke-virtual {p0, v0, v4}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method public final synthetic W0(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 p2, 0x4

    const/4 v0, 0x1

    invoke-static {p0, v0, p2}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoomOnLongClick(Landroid/content/Context;II)Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return v0
.end method

.method public final synthetic X0(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoomOnLongClick(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method public final Z0(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->s:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->E0(Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->s:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a1()V
    .locals 3

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->B:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_key_show_cloud_tip"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->E0()V

    new-instance v0, Lvz2;

    invoke-direct {v0, p0}, Lvz2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->C:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Laz5;->d()V

    :cond_2
    return-void
.end method

.method public b1(Z)V
    .locals 0

    return-void
.end method

.method public final c1(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_logo:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$id;->tv_logo_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$id;->title_bar_back:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-boolean v3, Lpp3;->c:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    iget-object v6, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v7, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v6, v7, :cond_2

    if-nez v3, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    const/16 v7, 0x8

    if-eqz v0, :cond_7

    if-eqz p1, :cond_5

    :cond_4
    move v3, v5

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    :goto_3
    move v3, v7

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_4

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    :cond_8
    move p1, v7

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_8

    move p1, v5

    :goto_5
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v2, :cond_c

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    move v5, v7

    :goto_6
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    if-eqz v1, :cond_d

    sget-boolean p1, Lpp3;->p:Z

    if-eqz p1, :cond_d

    new-instance p1, La03;

    invoke-direct {p1, p0, v1}, La03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;Landroid/view/View;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_d
    if-eqz v2, :cond_e

    sget-boolean p1, Lpp3;->p:Z

    if-eqz p1, :cond_e

    new-instance p1, Lb03;

    invoke-direct {p1, p0}, Lb03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_e
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x45c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->Y0(I)V

    :cond_0
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "visha_DownloadMainFragmentNew"

    const-string v0, "markDownloadMainPageShow"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Le16;->f()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->a1()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "support_theme_background"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->w:Z

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x45c

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroy()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x45c

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->E0()V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    const-string v1, "visha_DownloadMainFragmentNew"

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->i(Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v2, 0x424

    invoke-virtual {v0, p0, v2}, Lh27;->f(Lh27$b;I)V

    invoke-static {v1}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->c1(Landroid/view/View;)V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->fragment_download_main_new:I

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->c1(Landroid/view/View;)V

    return-void
.end method

.method public onSelectInViewPage()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->E0(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUnSelectInViewPage()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-boolean v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lpp3;->x(Landroid/content/Context;)Z

    move-result p2

    const-string v0, "visha_DownloadMainFragmentNew"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lpp3;->g(Landroid/content/Context;)I

    move-result p2

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lpp3;->h(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewCreated mWaterFallLeftEdgeSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mWaterFallRightEdgeSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsSupportThemeBg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->w:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    sget p2, Lcom/transsion/sniffer_load/R$id;->tab_download_main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/CustomTabLayout;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->l:Lcom/transsion/widgets/CustomTabLayout;

    sget p2, Lcom/transsion/sniffer_load/R$id;->viewpager_download_main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/RtlViewPager;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->m:Lcom/transsion/widgets/RtlViewPager;

    sget p2, Lcom/transsion/sniffer_load/R$id;->iv_bookmark_edit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->s:Landroid/widget/TextView;

    new-instance v1, Ld03;

    invoke-direct {v1, p0}, Ld03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->l:Lcom/transsion/widgets/CustomTabLayout;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->m:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {p2, v1}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->l:Lcom/transsion/widgets/CustomTabLayout;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/transsion/widgets/CustomTabLayout;->isFirstLevelTab(Z)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->l:Lcom/transsion/widgets/CustomTabLayout;

    new-instance v1, Le03;

    invoke-direct {v1, p0}, Le03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->m:Lcom/transsion/widgets/RtlViewPager;

    sget v1, Lcom/transsion/sniffer_load/R$layout;->fragment_download_recommend:I

    invoke-virtual {p0, p2, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->preloadLayout(Landroid/view/ViewGroup;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->o:Ljava/util/List;

    new-instance v1, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;

    invoke-direct {v1}, Lcom/transsion/sniffer_load/fragment/DownloadRecommendFragment;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    invoke-direct {p2}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;-><init>()V

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    new-instance v1, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$a;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$a;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {p2, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/sniffer_load/R$array;->download_main_tabs:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->p:[Ljava/lang/String;

    new-instance p2, Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->o:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->p:[Ljava/lang/String;

    invoke-direct {p2, v1, v2, v3}, Lcom/transsion/playercommon/adapter/RtlPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->n:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->m:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v1, p2}, Lcom/transsion/widgets/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->m:Lcom/transsion/widgets/RtlViewPager;

    new-instance v1, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$b;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew$b;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {p2, v1}, Lcom/transsion/widgets/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->I0(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->F0(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->c1(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->H0()V

    new-instance p2, Lf03;

    invoke-direct {p2, p0}, Lf03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget p2, Lcom/transsion/sniffer_load/R$id;->bv_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/BadgeView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->x:Lcom/transsion/widgets/BadgeView;

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    new-instance p2, Lg03;

    invoke-direct {p2, p0}, Lg03;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;)V

    invoke-virtual {p1, v0, p2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->v(Ljava/lang/String;Lmf7;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x424

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->h()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->Y0(I)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->s0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->u:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->E0(Z)V

    :cond_0
    return-void
.end method

.method public showSelectedTab(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSelectedTab(I)V

    if-nez p1, :cond_0

    const-string p0, "dl_download_cl"

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1, v0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->j0(Ljava/lang/String;IZZ)Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    move-result-object p0

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    :cond_0
    return-void
.end method

.method public stopEdit()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->b1(Z)V

    :cond_0
    return-void
.end method
