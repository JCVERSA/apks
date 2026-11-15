.class public Lcom/transsion/audio/fragments/AudiosFragment;
.super Lcom/transsion/audio/fragments/AudioDragBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A0:I

.field public B0:Landroid/view/View;

.field public C0:Landroid/widget/LinearLayout$LayoutParams;

.field public D0:Landroid/content/BroadcastReceiver;

.field public E0:Landroid/content/IntentFilter;

.field public F0:Landroid/view/View;

.field public G0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public H0:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

.field public I0:Z

.field public J0:Z

.field public K0:Landroid/view/View;

.field public L0:Landroid/widget/ImageView;

.field public M0:Landroid/widget/TextView;

.field public N0:Lgd1;

.field public O0:I

.field public P0:Z

.field public Q0:Lcom/transsion/vishaads/views/AdBannerView;

.field public R0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

.field public w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

.field public x0:Ljava/lang/String;

.field public y0:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->x0:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->y0:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->I0:Z

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->J0:Z

    new-instance v0, Lgd1;

    invoke-direct {v0}, Lgd1;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->N0:Lgd1;

    return-void
.end method

.method public static synthetic A2(Lcom/transsion/audio/fragments/AudiosFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic B2(Lcom/transsion/audio/fragments/AudiosFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method private E2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->setOnSelectListener(Lcom/transsion/audio/adapter/AudioItemAdapter$c;)V

    new-instance v0, Lcom/transsion/audio/fragments/AudiosFragment$c;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/audio/fragments/AudiosFragment$c;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;IZ)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->v:Lif7;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    new-instance v1, Lf20;

    invoke-direct {v1, p0}, Lf20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->O1()V

    return-void
.end method

.method private H2(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initOverScroll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->z0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudiosFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->z0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->O0(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v0, Lc20;

    invoke-direct {v0, p0}, Lc20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnChildScrollUpCallback(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initOverScrollDecor(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method private J2()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private Y2()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->R0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v0, "vd_ad_adbanner_show"

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, La9;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a3(I)Lcom/transsion/audio/fragments/AudiosFragment;
    .locals 3

    new-instance v0, Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-direct {v0}, Lcom/transsion/audio/fragments/AudiosFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "list_flag"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private b3()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudiosFragment;->l3(Z)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "change_minibar_state"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i2(Lcom/transsion/audio/fragments/AudiosFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->P2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j2(Lcom/transsion/audio/fragments/AudiosFragment;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudiosFragment;->N2(Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k2(Lcom/transsion/audio/fragments/AudiosFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->L2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic l2(Lcom/transsion/audio/fragments/AudiosFragment;Lcom/transsion/audio/fragments/AudiosFragment;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->R2(Lcom/transsion/audio/fragments/AudiosFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m2(Lcom/transsion/audio/fragments/AudiosFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->K2()V

    return-void
.end method

.method public static synthetic n2(Lcom/transsion/audio/fragments/AudiosFragment;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudiosFragment;->Q2(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o2(Lcom/transsion/audio/fragments/AudiosFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->S2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic p2(Lcom/transsion/audio/fragments/AudiosFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->T2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic q2(Lcom/transsion/audio/fragments/AudiosFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->V2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic r2(Lcom/transsion/audio/fragments/AudiosFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->O2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s2(Lcom/transsion/audio/fragments/AudiosFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->U2()V

    return-void
.end method

.method public static synthetic t2(Lcom/transsion/audio/fragments/AudiosFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudiosFragment;->M2(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic u2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/vishaads/views/AdBannerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->Q0:Lcom/transsion/vishaads/views/AdBannerView;

    return-object p0
.end method

.method public static bridge synthetic v2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->R0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    return-object p0
.end method

.method public static bridge synthetic w2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    return-object p0
.end method

.method public static bridge synthetic x2(Lcom/transsion/audio/fragments/AudiosFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudiosFragment;->j3(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic y2(Lcom/transsion/audio/fragments/AudiosFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic z2(Lcom/transsion/audio/fragments/AudiosFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mIsDialogShowing:Z

    return p0
.end method


# virtual methods
.method public A1()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->A1()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->B0:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->C0:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/transsion/audio/fragments/AudiosFragment;->A0:I

    :goto_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->B0:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudiosFragment;->C0:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lraa;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 v1, 0x18

    if-ne v0, v1, :cond_7

    const/4 v1, 0x3

    :goto_3
    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->J2()Z

    move-result p0

    const/16 v0, 0x48a

    if-eqz p0, :cond_6

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_4
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->J2()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "audio"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    return-void
.end method

.method public final C2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->L0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "show_audio_sort_point"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final D2()V
    .locals 3

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    const-class v0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->H0:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->H0:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->I0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->H0:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudiosFragment;->d3(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->updateUiForDataChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->J0:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->H0:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    iget-object v0, v0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lg20;

    invoke-direct {v2, p0}, Lg20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public F0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioBaseFragment;->F0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/audio/fragments/AudiosFragment;->x0:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->y0:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method

.method public final F2()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->E0:Landroid/content/IntentFilter;

    const-string v1, "com.transsion.visha.music.firstclick"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audio/fragments/AudiosFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudiosFragment$a;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->D0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->D0:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->E0:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final G2()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->layout_audio_footer_view:I

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$id;->tv_audio_filtered_audios:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->M0:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public final I2(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/audio/R$dimen;->tab_menu_layout_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->A0:I

    sget v0, Lcom/transsion/audio/R$id;->scrollbar_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->B0:Landroid/view/View;

    :cond_0
    sget v0, Lcom/transsion/audio/R$id;->tab_menu_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->F0:Landroid/view/View;

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    if-ne v2, v1, :cond_2

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->F0:Landroid/view/View;

    if-eqz v0, :cond_3

    new-instance v1, Ll20;

    invoke-direct {v1, p0}, Ll20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->F0:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->media_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->w:Landroid/widget/TextView;

    :cond_3
    sget v0, Lcom/transsion/audio/R$id;->audio_sort:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->K0:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->iv_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->L0:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->K0:Landroid/view/View;

    if-eqz p1, :cond_4

    new-instance v0, Lha1;

    new-instance v1, Lb20;

    invoke-direct {v1, p0}, Lb20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-direct {v0, v1}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->i3()V

    return-void
.end method

.method public K0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dragMode enter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AudiosFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->K0(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->F0:Landroid/view/View;

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->F0:Landroid/view/View;

    if-eqz p1, :cond_0

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->o3(Z)V

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "audio"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final synthetic K2()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public final synthetic L2(Ljava/util/List;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->I0:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->d3(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->updateUiForDataChanged()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->J0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic M2(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/transsion/audio/fragments/AudiosFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V1(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/audio/R$id;->iv_item_more:I

    if-ne p1, p2, :cond_3

    const-string p1, "file_operate_menu_tag"

    invoke-virtual {p0, p1, v0, p3}, Lcom/transsion/audio/fragments/AudiosFragment;->h3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;I)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-static {p0}, Lp06;->A(I)Ljava/lang/String;

    move-result-object p0

    const-string p3, "from"

    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TYPE"

    const-string v1, "audio"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p2, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_vmore_show"

    const-wide/16 v0, 0x246c

    invoke-static {p2, p1, p0, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final synthetic N2(Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic O2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->b3()V

    return-void
.end method

.method public final synthetic P2(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x400

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->C2()V

    return-void
.end method

.method public final synthetic Q2(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    invoke-virtual {p3}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v3

    invoke-static {p3, v3}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->top:I

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v4

    invoke-static {p3, v4}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/transsion/audio/fragments/AudiosFragment;->n3(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic R2(Lcom/transsion/audio/fragments/AudiosFragment;)Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->c3()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->y0:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->y0:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudiosFragment;->x0:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/database/AudioAlbum;->id:Ljava/lang/Integer;

    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/dbdata/database/AudioAlbum;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lao;->s0(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->G0(Ljava/util/List;)V

    return-object p1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->y0:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->x0:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->G0(Ljava/util/List;)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->restore(Ljava/util/List;)V

    return-object p1
.end method

.method public final synthetic S2(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->I0:Z

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->d3(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->updateUiForDataChanged()V

    const-string p0, "AudiosFragment"

    const-string v0, "loadData end"

    invoke-static {p0, v0}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "mmkv_key_triggered_show_mv_switch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayListFlag()I

    move-result p0

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    :cond_0
    return-void
.end method

.method public final synthetic T2(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final synthetic U2()V
    .locals 7

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lao;->b0(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v3}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "audio_amount"

    invoke-virtual {v0, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v6, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mv_amount"

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v1, "new_amount"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v1, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_all_audio_show_p"

    const-wide/16 v1, 0x246c

    invoke-static {v3, v0, p0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public final synthetic V2(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public W2(Z)V
    .locals 3

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    new-instance v2, Lj20;

    invoke-direct {v2, p0, v0}, Lj20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_3
    return-void
.end method

.method public X2()V
    .locals 5

    const-string v0, "AudiosFragment"

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v2

    const-string v3, "have_audio"

    invoke-virtual {v2, v3}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "music_playing"

    invoke-virtual {v1, v2}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-class v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v1, v2}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->U(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->U(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    new-instance v2, Lk20;

    invoke-direct {v2, p0, v1}, Lk20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->x1(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDataUpdateView setNewData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setData error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDataUpdateView setData error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->A1()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->Z2()V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->H0()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->p3()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->m3()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x477

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final Z2()V
    .locals 2

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    new-instance v0, Li20;

    invoke-direct {v0, p0}, Li20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c3()Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryAudioData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudiosFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData queryAudioData "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lao;->x(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_0
    const/16 v2, 0x24

    if-ne v0, v2, :cond_2

    sget-boolean v0, Lpp3;->y:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "music_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lao;->Q(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_2
    const/16 v2, 0x18

    if-ne v0, v2, :cond_3

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lao;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_3
    const/16 v2, 0x16

    if-ne v0, v2, :cond_4

    invoke-static {}, Lao;->U()Lao;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v4, v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iget-object v6, v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lao;->K(JLjava/lang/String;Ljava/lang/String;Z)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_4
    const/16 v2, 0x19

    if-ne v0, v2, :cond_5

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lao;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_5
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_6

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lao;->J(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryAudioData unsupported flag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public d3(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0x49c

    invoke-virtual {p1, v0, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x400

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const/16 v0, 0x41f

    if-eq p1, v0, :cond_9

    const/16 v0, 0x42e

    if-eq p1, v0, :cond_8

    const/16 v0, 0x435

    if-eq p1, v0, :cond_5

    const/16 v0, 0x441

    if-eq p1, v0, :cond_4

    const/16 v0, 0x455

    if-eq p1, v0, :cond_3

    const/16 v0, 0x476

    if-eq p1, v0, :cond_1

    const/16 p2, 0x481

    if-eq p1, p2, :cond_0

    const/16 p2, 0x4a3

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    goto/16 :goto_0

    :cond_1
    array-length p1, p2

    if-lez p1, :cond_c

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    :cond_2
    iget-boolean p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    if-eq p2, p1, :cond_c

    iget p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->startDragMode(ZIZ)V

    goto/16 :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->P:Z

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p2, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->w1()V

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Laf9;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_6

    return-void

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Laf9;->f:J

    const-string p1, "audio"

    invoke-static {p1}, Luy5;->l(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lbg5;->g(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lbg5;->d(Landroid/app/Activity;)V

    :cond_7
    aget-object p1, p2, v1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    const-string p2, "file_operate_menu_tag"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->g3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p1, :cond_c

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->w1()V

    goto :goto_0

    :cond_9
    new-instance p1, Le20;

    invoke-direct {p1, p0}, Le20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->x1(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_a
    array-length p1, p2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    aget-object p1, p2, v1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->showSortPopupWindow(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_b
    aget-object p1, p2, v1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showSortPopupWindow(Landroid/view/View;Z)V

    :cond_c
    :goto_0
    return-void
.end method

.method public e3()V
    .locals 5

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lxdc;->a()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->R0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeaderView audioBanner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->R0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudiosFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->R0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderAndEmpty(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->Q0:Lcom/transsion/vishaads/views/AdBannerView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/audio/R$layout;->ad_view_layout:I

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaads/views/AdBannerView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->Q0:Lcom/transsion/vishaads/views/AdBannerView;

    new-instance v2, Lcom/transsion/audio/fragments/AudiosFragment$6;

    invoke-direct {v2, p0}, Lcom/transsion/audio/fragments/AudiosFragment$6;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-virtual {v0, v2}, Lcom/transsion/vishaads/views/AdBannerView;->setAdBannerClick(Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->Q0:Lcom/transsion/vishaads/views/AdBannerView;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudiosFragment;->R0:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaads/views/AdBannerView;->showAd(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->Y2()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeaderView "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudiosFragment;->Q0:Lcom/transsion/vishaads/views/AdBannerView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->Q0:Lcom/transsion/vishaads/views/AdBannerView;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderView(Landroid/view/View;)I

    :cond_2
    return-void
.end method

.method public editMode(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->editMode(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->v:Lif7;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lif7;->setIntervalTime(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lif7;->setIntervalTime(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->v:Lif7;

    invoke-virtual {v0}, Lif7;->resetClickTime()V

    :cond_1
    :goto_0
    const/16 v0, 0x15

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z1()V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->G0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->T1(Landroid/view/View;)V

    :goto_1
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->F0:Landroid/view/View;

    if-eqz v1, :cond_5

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->F0:Landroid/view/View;

    if-eqz p1, :cond_4

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_2

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->o3(Z)V

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-eq v1, v0, :cond_6

    const/16 v0, 0x18

    if-eq v1, v0, :cond_6

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "audio"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final f3(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final g3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/audio/fragments/AudiosFragment;->h3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;I)V

    return-void
.end method

.method public getActivityMenuSwitchFlag()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDefaultListFlag()I
    .locals 0

    const/16 p0, 0x15

    return p0
.end method

.method public final h3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "data"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "list_flag"

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->D:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lvg9;->e(Ljava/util/ArrayList;)V

    const-string v0, "from_list_more_icon"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v2, Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->S:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-direct {p1, v0, p2, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e0(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v0, Lcom/transsion/audio/fragments/AudiosFragment$d;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/audio/fragments/AudiosFragment$d;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;Lcom/transsion/dbdata/beans/media/AudioItem;I)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    return-void
.end method

.method public handleManual(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->handleManual(Z)V

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lp06;->B(ILjava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final i3()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->K0:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x18

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "show_audio_sort_point"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->L0:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->K0:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public inflateOperationBar()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    const-string v1, "AudiosFragment"

    if-nez v0, :cond_1

    const-string p0, "inflateOperationBar mFragmentView == null"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void

    :cond_1
    sget v2, Lcom/transsion/audio/R$id;->bottom_audio_action_bar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_2

    const-string p0, "inflateOperationBar bottom_audio_action_bar stub == null"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    new-instance v2, Lcom/transsion/audio/fragments/AudiosFragment$e;

    invoke-direct {v2, p0, v1}, Lcom/transsion/audio/fragments/AudiosFragment$e;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, p0}, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->setListFlag(I)V

    return-void
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x41e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x41f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x441

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x42e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x435

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x483

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x455

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initTitleBar(Landroid/view/View;)V

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleBarLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x19

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initSortView(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initSortView(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j3(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V
    .locals 7

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    const-string v1, "AudiosFragment"

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    iput v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourceAction:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needForcePlay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mListFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTitle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, v2, v3, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 p2, 0x24

    if-eq p1, p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string p1, "launch_audio_player_activity_from_audio_list"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->D1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    goto :goto_1

    :cond_2
    const-string p0, "startOpenVideo: playAudioData is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final k3(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;ZZ)V
    .locals 6

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    const-string v1, "AudiosFragment"

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    iput v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    iput-boolean p4, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isShuffle:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sourceAction:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needForcePlay:"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p4, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 p2, 0x24

    if-eq p1, p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string p1, "launch_audio_player_activity_from_audio_list"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->D1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    goto :goto_1

    :cond_2
    const-string p0, "startOpenVideo: playAudioData is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public l3(Z)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio_play_repeat_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPlay exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AudiosFragment"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v3, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string p1, "vd_miniplayer_none"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    :cond_1
    if-eqz v3, :cond_2

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    iput p1, v3, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setSource(Lcom/transsion/dbdata/beans/media/PlayAudioData;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v4, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    iput-boolean v2, v3, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    iput-object p1, v3, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-static {}, Lao;->U()Lao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lao;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v2

    invoke-static {p1, v2}, Lp06;->y(IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/audio/player/MusicPlayManager;->C(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setRepeatMode(I)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->u1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/audio/player/MusicPlayManager;->N0(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    :cond_2
    return-void
.end method

.method public loadData(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-static {v0}, Lt55;->u(Ljava/lang/String;)V

    const-string v0, "AudiosFragment loadData "

    const-string v1, "AudiosFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const-string v0, "loadData start"

    invoke-static {v1, v0}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->J0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->J0:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->I0:Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->N0:Lgd1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lgd1;->d()V

    :cond_1
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x320

    :goto_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, La20;

    invoke-direct {p2, p0}, La20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Ld20;

    invoke-direct {p2, p0}, Ld20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->N0:Lgd1;

    invoke-virtual {p0, p1}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public final m3()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->M0:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->M0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->M0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    sget v2, Lcom/transsion/audio/R$string;->visha_look_filter_audio:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/transsion/audio/R$string;->visha_look_filter_audios:I

    :goto_0
    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->M0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "vd_audiolist_filt_show"

    const-string v1, "num"

    invoke-static {v0, v1, p0}, Lp06;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->M0:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointVisiable(Z)V

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->Z2()V

    const-string p1, "vd_all_audio_show"

    const-wide v0, 0xd91af27339L

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->Y2()V

    :cond_1
    return-void
.end method

.method public final n3(II)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->title_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v1, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public final o3(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->K0:Landroid/view/View;

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->K0:Landroid/view/View;

    if-eqz p1, :cond_0

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onClick(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->add_play_list_tv:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    const-string v0, "vd_all_audio_gd_cl"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x423

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->text_filtered_audios:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->tv_audio_filtered_audios:I

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v2, Lcom/transsion/audio/activities/FilterResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0, v1}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const-string v0, "vd_audiolist_filt_cl"

    invoke-static {v0}, Lp06;->j0(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/audio/R$id;->iv_play_shuffle:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->startShufflePlay()V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->J:Z

    const/16 v2, 0x15

    iput v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-eqz p1, :cond_0

    const-string v3, "bucket_fragment_buicket_id"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v3, "bucket_fragment_buicket_path"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    const-string v0, "bucket_fragment_buicket_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudiosFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {v3, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    const-string v0, "list_flag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    :cond_0
    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x24

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$string;->audio_filter_view_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    :cond_1
    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-eq p1, v2, :cond_3

    const/16 v0, 0x16

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->z0:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mListFlag:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudiosFragment"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->F2()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x476

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x481

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x4a3

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->registerBottomBarVisibleChanged()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->D0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x476

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v2, 0x481

    invoke-virtual {v0, p0, v2}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v2, 0x4a3

    invoke-virtual {v0, p0, v2}, Lh27;->f(Lh27$b;I)V

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->L:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->N0:Lgd1;

    invoke-virtual {v0}, Lgd1;->d()V

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudiosFragment;->W2(Z)V

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->z0:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnChildScrollUpCallback(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;)V

    :cond_0
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->a2()V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->z0:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/audio/R$layout;->audios_fragment_pull_damping:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/audio/R$layout;->audios_fragment:I

    :goto_0
    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudiosFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->m:Z

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->c(Lsq3$a;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->E1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->O0:I

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->q(I)V

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->P0:Z

    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->p(Z)V

    :cond_0
    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayItemChanged:  mediaItem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudiosFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudiosFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->R0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->P:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->P:Z

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->b(Lsq3$a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->u1()V

    :goto_0
    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x19

    if-ne v0, v2, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v0, v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "audio_pref_sort_by_album"

    invoke-static {v0, v2, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NUMBER:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-virtual {v2}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result v2

    const-string v3, "audio_pref_sort_name_album"

    invoke-static {v1, v3, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->c()Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result v2

    iput v2, p0, Lcom/transsion/audio/fragments/AudiosFragment;->O0:I

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->m()Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/audio/fragments/AudiosFragment;->P0:Z

    invoke-static {v1}, Lcom/transsion/dbdata/utils/SortUtil;->q(I)V

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->p(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->updateShowUI()V

    :cond_3
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->e1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    return-void
.end method

.method public onSelectInViewPage()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x18

    if-ne p0, v0, :cond_0

    invoke-static {}, Ls06;->d()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudiosFragment"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    return-void
.end method

.method public onUnSelectInViewPage()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->R(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->initTitleBar(Landroid/view/View;)V

    sget v0, Lcom/transsion/audio/R$id;->cl_drag_animation_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment;->G0:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/transsion/audio/R$id;->rv_main_fragment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudiosFragment;->f3(I)V

    :cond_0
    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x18

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v3, Lcom/transsion/audio/fragments/AudiosFragment$b;

    invoke-direct {v3, p0}, Lcom/transsion/audio/fragments/AudiosFragment$b;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    sget v0, Lcom/transsion/audio/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v3, v0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->G2()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, v3}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_3

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setType(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/transsion/preload/OptimizeListAdapter;->h()Ltd8;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget v4, Lcom/transsion/audio/R$layout;->rv_item_search_audio_list_v2:I

    const/4 v5, 0x5

    invoke-virtual {v0, v3, v4, v5}, Ltd8;->e(Landroid/view/ViewGroup;II)V

    sget v0, Lcom/transsion/audio/R$id;->iv_play_shuffle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/RoundImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIvShufflePlayBtn:Lcom/transsion/widgets/RoundImageView;

    if-eqz v0, :cond_4

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIvShufflePlayBtn:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setRecyclerItemAnimator(Z)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->H2(Landroid/view/View;)V

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-eq v0, v1, :cond_5

    if-ne v0, v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvOverScrollDecorListener(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->I2(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->E2()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->e3()V

    invoke-virtual {p0, v3}, Lcom/transsion/audio/fragments/AudiosFragment;->W2(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->D2()V

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->N1()V

    return-void
.end method

.method public onVisibleChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onVisibleChanged(Z)V

    return-void
.end method

.method public final p3()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->w:Landroid/widget/TextView;

    invoke-static {v0}, Lr44;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment;->F0:Landroid/view/View;

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v3, 0x24

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/16 v3, 0x15

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    if-lez v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x401

    invoke-virtual {v1, v2, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->i3()V

    return-void
.end method

.method public refresh()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudiosFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    return-void
.end method

.method public scrollToTop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->scrollToTop()V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public showSortPopupWindow(Landroid/view/View;ZZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showSortPopupWindow(Landroid/view/View;ZZZ)V

    return-void
.end method

.method public startShufflePlay()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->setSelectedPos(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    const-string v0, "audio"

    invoke-static {v0}, Lt06;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/transsion/audio/fragments/AudiosFragment;->k3(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/dbdata/utils/SortUtil;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lh20;

    invoke-direct {v0, p0, p1}, Lh20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->x1(Ljava/lang/Runnable;)V

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lp06;->B(ILjava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public updateShowUI()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->X2()V

    return-void
.end method

.method public updateUiForDataChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->Q0()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    :cond_1
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    return-void
.end method

.method public y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget v0, Lcom/transsion/audio/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/audio/adapter/AudioItemAdapter;->P(Lcom/transsion/dbdata/beans/media/AudioItem;ZI)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->a2()V

    return-void
.end method
