.class public Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcu4;


# instance fields
.field public A:I

.field public B:I

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/CheckBox;

.field public E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

.field public F:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public final G:Landroidx/lifecycle/Observer;

.field public l:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

.field public m:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

.field public n:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

.field public o:Lcom/transsion/utils/CustomGridLayoutManager;

.field public p:Z

.field public q:Ljava/util/ArrayList;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/view/ViewGroup;

.field public v:Lcom/transsion/playercommon/widgets/NotificationView;

.field public w:Lcom/transsion/widgetslib/dialog/d;

.field public x:Z

.field public y:Z

.field public z:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->q:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->F:Lcom/transsion/playercommon/videomodel/MainViewModel;

    new-instance v0, Ls8b;

    invoke-direct {v0, p0}, Ls8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->G:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)Ljava/lang/Long;
    .locals 2

    sget-object p0, Lyx2;->f:Ljava/io/File;

    invoke-static {p0}, Lb23;->l(Ljava/io/File;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic G0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static synthetic K0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private addBottomBarShowStateObserver()V
    .locals 3

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->F:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->G:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->F:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->I0()V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->G0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->C0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->A0(Z)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->H0(Z)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->D0(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->J0(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->B0(Z)V

    return-void
.end method

.method public static synthetic o0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->K0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->F0(Landroid/view/View;)V

    return-void
.end method

.method private v0()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/sniffer_load/R$string;->visha_uploading_status:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget v0, Lcom/transsion/sniffer_load/R$string;->downloading_status:I

    goto :goto_0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final synthetic A0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->s0()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic B0(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->inflateOperationBar()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    new-instance v3, Lw8b;

    invoke-direct {v3, p0, p1}, Lw8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->a(Z)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/16 v2, 0x3eb

    invoke-virtual {v0, p1, v2, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->enterEditMode(ZIZ)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->m:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_6

    sget p1, Lcom/transsion/sniffer_load/R$id;->transfer_bottom_bar:I

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->z0()Z

    move-result p1

    if-nez p1, :cond_7

    sget p1, Lcom/transsion/sniffer_load/R$id;->tv_size_info:I

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto :goto_2

    :cond_7
    sget p1, Lcom/transsion/sniffer_load/R$id;->transfer_bottom_bar:I

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    :goto_2
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->m:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->F:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public final synthetic D0(Ljava/lang/Long;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ls44;->b(Landroid/content/Context;J)Landroid/text/SpannableString;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final synthetic E0(Landroid/view/View;)V
    .locals 0

    const-string p1, "dl_manager_downloading_nf_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->r(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic F0(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->editMode(Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic H0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic I0()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->n:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->m()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->n:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->j()V

    :goto_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "downloading_delete"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic J0(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->M0(Ljava/util/List;Z)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->editMode(Z)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->a(Z)V

    :cond_0
    new-instance p1, Ln8b;

    invoke-direct {p1, p0}, Ln8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)V

    invoke-static {p1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public L0(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    sget p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-static {p0}, Lpz6;->c(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    move p0, v2

    goto :goto_0

    :cond_3
    if-ne p1, p0, :cond_4

    move p0, v0

    goto :goto_0

    :cond_4
    const/4 p0, 0x4

    if-ne p1, p0, :cond_2

    :goto_0
    return p0
.end method

.method public final M0(Ljava/util/List;Z)V
    .locals 3

    const-string p0, "visha_cloud_TransmittingBaseFragment"

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_2

    :try_start_0
    instance-of v1, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-eqz v1, :cond_2

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v1

    check-cast v0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-virtual {v1, v0}, Lri4;->m(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    if-nez p2, :cond_1

    instance-of v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v1

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {v1, v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->F(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    const-string p1, "No tasks to remove"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public N0(I)V
    .locals 3

    iput p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->A:I

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->none_select:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    sget v2, Lcom/transsion/playercommon/R$string;->items:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/playercommon/R$string;->item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->s0()V

    return-void
.end method

.method public O0(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/transsion/sniffer_load/R$string;->visha_cancel_upload_tasks_confirm:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/sniffer_load/R$string;->visha_cancel_download_tasks_confirm:I

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/transsion/sniffer_load/R$string;->visha_cancel_upload_task_confirm:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/transsion/sniffer_load/R$string;->visha_cancel_download_task_confirm:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->ok:I

    new-instance v2, Lu8b;

    invoke-direct {v2, p0, p1}, Lu8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/sniffer_load/R$string;->cancel:I

    new-instance v1, Lv8b;

    invoke-direct {v1}, Lv8b;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->w:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public P0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t0(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->y0()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->w:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->w:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->A:I

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->N0(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->editMode(Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->a(Z)V

    :cond_4
    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->N0(I)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public editMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->D:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateBackIcon(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    sget v1, Lcom/transsion/sniffer_load/R$string;->none_select:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lq8b;

    invoke-direct {v1, p0, p1}, Lq8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public inflateOperationBar()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/sniffer_load/R$id;->transfer_bottom_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->initMenu(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment$c;

    const-string v2, "visha_cloud_TransmittingBaseFragment"

    invoke-direct {v1, p0, v2}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment$c;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->C:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->D:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    new-instance v0, Lr8b;

    invoke-direct {v0, p0}, Lr8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointVisiable(Z)V

    return-void
.end method

.method public notifyVideoBarShowStateChange(Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoBarShowStateChange :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_cloud_TransmittingBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v1, :cond_0

    const/16 v1, 0x55

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    iget-object v7, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->z0()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->m:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v1, :cond_3

    const/16 v1, 0x3c

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->m:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->m:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->m:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    iget-object v7, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iget-boolean v7, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    new-instance v1, Lt8b;

    invoke-direct {v1, p0, p1}, Lt8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "support_theme_background"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->x:Z

    const-string v0, "transmit_upload_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    :cond_0
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->n:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->o()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment$a;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->s:Landroid/view/View;

    return-object p1
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->transfer_fragment_trasmitting_layout:I

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->q:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->w0(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStart()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->n:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->j()V

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->y0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->initTitleBar(Landroid/view/View;)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->rv_main_fragment:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->l:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget p2, Lcom/transsion/magicvideo/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->m:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_size_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$attr;->OsBgPrimary:I

    invoke-virtual {v2, v3, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v3}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    sget p2, Lcom/transsion/sniffer_load/R$id;->notify_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/widgets/NotificationView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->v:Lcom/transsion/playercommon/widgets/NotificationView;

    new-instance p2, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, p0, v2, v0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment$b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->o:Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->initView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->l:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->o:Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->l:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const-string p2, "download"

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->l:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-static {p1, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->x0()V

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->u0()V

    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->addBottomBarShowStateObserver()V

    return-void
.end method

.method public final q0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEmptyPaddingBottomInMulti:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEmptyPaddingBottom:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public r0(I)V
    .locals 0

    return-void
.end method

.method public s0()V
    .locals 0

    return-void
.end method

.method public t0(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public u0()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lm8b;

    invoke-direct {v1}, Lm8b;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lo8b;

    invoke-direct {v1, p0}, Lo8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public w0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->r:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->s:Landroid/view/View;

    if-eqz v0, :cond_2

    :try_start_0
    sget v1, Lcom/transsion/sniffer_load/R$id;->main_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->r:Landroid/view/View;

    sget v1, Lcom/transsion/sniffer_load/R$id;->ll_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->u:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/sniffer_load/R$string;->file_empty:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->r:Landroid/view/View;

    sget v2, Lcom/transsion/sniffer_load/R$id;->text_no_videos:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->r:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$id;->lottie_no_videos_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/transsion/common/R$drawable;->ic_video_empty_illustration:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget v3, Lcom/transsion/common/R$drawable;->ic_file_empty_illustration:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    if-eqz v2, :cond_1

    sget v1, Lcom/transsion/sniffer_load/R$string;->visha_no_video_uploaded:I

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateEmptyView exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_cloud_TransmittingBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->q0()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->r:Landroid/view/View;

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz p1, :cond_5

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "dl_manager_godl_show"

    const-string v0, "value"

    invoke-static {p1, v0, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public x0()V
    .locals 0

    return-void
.end method

.method public y0()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->v:Lcom/transsion/playercommon/widgets/NotificationView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->p(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->q:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->v:Lcom/transsion/playercommon/widgets/NotificationView;

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :cond_3
    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->v:Lcom/transsion/playercommon/widgets/NotificationView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dl_manager_downloading_nf_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->v:Lcom/transsion/playercommon/widgets/NotificationView;

    new-instance v1, Lp8b;

    invoke-direct {v1, p0}, Lp8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public z0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->p:Z

    return p0
.end method
