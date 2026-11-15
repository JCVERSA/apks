.class public Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/widget/RelativeLayout;

.field public B:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public final C:Landroidx/lifecycle/Observer;

.field public l:Landroid/widget/LinearLayout;

.field public m:Lcom/transsion/widgets/CustomTabLayout;

.field public n:Lcom/transsion/widgets/RtlViewPager;

.field public o:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

.field public p:Ljava/util/List;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/ImageView;

.field public t:Lcom/transsion/widgetslib/widget/SearchBar;

.field public u:Landroid/widget/Button;

.field public v:Lcom/transsion/widgets/BadgeView;

.field public w:Ljava/util/ArrayList;

.field public x:Ljava/util/ArrayList;

.field public y:Lcom/transsion/playercommon/widgets/SearchFileView;

.field public z:Lcom/transsion/playercommon/widgets/SearchFileView$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->x:Ljava/util/ArrayList;

    new-instance v0, Lkb9;

    invoke-direct {v0, p0}, Lkb9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->C:Landroidx/lifecycle/Observer;

    return-void
.end method

.method private C0()V
    .locals 4

    new-instance v0, Lnb9;

    invoke-direct {v0, p0}, Lnb9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->p:Ljava/util/List;

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->S1(I)Lcom/transsion/tools/covert/fragments/VideosSelectFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    new-instance v1, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$c;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setMenuShowListener(Lcom/transsion/playercommon/fragments/BaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/tools/covert/fragments/VideoPlayListFolderConvertFragment;

    invoke-direct {v0}, Lcom/transsion/tools/covert/fragments/VideoPlayListFolderConvertFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/tools/covert/fragments/FoldersConvertFragment;

    invoke-direct {v0}, Lcom/transsion/tools/covert/fragments/FoldersConvertFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$array;->video_tab_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->p:Ljava/util/List;

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/playercommon/adapter/RtlPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v1}, Lcom/transsion/playercommon/adapter/RtlPageAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    new-instance v1, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$d;

    invoke-direct {v1, p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$d;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/viewpager/widget/ViewPager;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayout;

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->isFirstLevelTab(Z)V

    return-void
.end method

.method public static synthetic F0(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private synthetic J0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public static synthetic K0()V
    .locals 3

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x450

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic P0(Landroidx/fragment/app/DialogFragment;Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p1

    const-string v0, "select_convert_videos_tag"

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->E(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private S0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private addBottomBarShowStateObserver()V
    .locals 3

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->C:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Landroidx/fragment/app/DialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->N0(Landroidx/fragment/app/DialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0()V
    .locals 0

    invoke-static {}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->K0()V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->M0()V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->H0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic j0(Landroidx/fragment/app/DialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->P0(Landroidx/fragment/app/DialogFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->D0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->E0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->O0(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->J0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->L0(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->G0(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->I0(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->Q0(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;I)V

    return-void
.end method

.method public static synthetic s0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->F0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic t0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Lcom/transsion/widgets/BadgeView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->v:Lcom/transsion/widgets/BadgeView;

    return-object p0
.end method

.method public static bridge synthetic u0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->A:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static bridge synthetic v0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->u:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic w0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->p:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic x0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Lcom/transsion/widgets/RtlViewPager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    return-object p0
.end method

.method public static bridge synthetic y0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->S0(Z)V

    return-void
.end method


# virtual methods
.method public final A0(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->x:Ljava/util/ArrayList;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->g()V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->M(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->a1()V

    return-void
.end method

.method public B0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    return p0
.end method

.method public final synthetic D0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ltpb;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lls1;->a(Ljava/util/List;)V

    return-object p1
.end method

.method public final synthetic E0(Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->A0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final synthetic G0(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->nestedScroll(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V

    return-void
.end method

.method public final synthetic H0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public final synthetic I0(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->V0(Landroid/view/View;)V

    const/4 p0, 0x3

    invoke-static {p0}, Lp06;->J(I)V

    return-void
.end method

.method public final synthetic L0(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->X0(Landroidx/fragment/app/DialogFragment;Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic M0()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y:Lcom/transsion/playercommon/widgets/SearchFileView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->showOrHideKeyboard(Z)V

    return-void
.end method

.method public final synthetic N0(Landroidx/fragment/app/DialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->U0()V

    return-void
.end method

.method public final synthetic O0(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    sget v0, Lcom/transsion/tools/R$id;->iv_bucket_fragment_item_more:I

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p5

    if-ne v0, p5, :cond_0

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p6, p5, :cond_0

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 p5, 0x0

    invoke-virtual {p0, p4, p5}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->convertSelectItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->Y0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;)V

    const-string p0, "moretab_tomp3_addcart_delete"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic Q0(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->Y0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;)V

    return-void
.end method

.method public final R0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Lib9;

    invoke-direct {v0}, Lib9;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final T0()V
    .locals 4

    new-instance v0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v2, "select_convert_videos_tag"

    sget v3, Lcom/transsion/tools/R$layout;->convert_video_dialog_list:I

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->f(I)V

    new-instance v1, Ljb9;

    invoke-direct {v1, p0}, Ljb9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->e(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;)V

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->g()V

    return-void
.end method

.method public final U0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->B(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->t(Ljava/util/List;)V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->g()V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "moretab_tomp3_convert_cl"

    invoke-static {v0, v1}, Lk16;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->R0()V

    return-void
.end method

.method public V0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y:Lcom/transsion/playercommon/widgets/SearchFileView;

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/tools/R$id;->search_video_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/SearchFileView;

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y:Lcom/transsion/playercommon/widgets/SearchFileView;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->multiWindowModeChanged(Z)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y:Lcom/transsion/playercommon/widgets/SearchFileView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->setSearchType(I)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->setIsSelectConvertVideoMode(Z)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->z:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$b;

    invoke-direct {p1, p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$b;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->z:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y:Lcom/transsion/playercommon/widgets/SearchFileView;

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->z:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->setSearchSelectCallBack(Lcom/transsion/playercommon/widgets/SearchFileView$f;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y:Lcom/transsion/playercommon/widgets/SearchFileView;

    new-instance v0, Lob9;

    invoke-direct {v0, p0}, Lob9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final W0()V
    .locals 2

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->u:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->A:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/transsion/widgetslib/view/OSBigButton;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/widgetslib/view/OSBigButton;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinButtonHeightDp(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->u:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;

    invoke-direct {v1, p0, v0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$a;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final X0(Landroidx/fragment/app/DialogFragment;Landroid/view/View;Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/transsion/tools/R$id;->tv_select_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/tools/R$id;->bt_start_converting:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcb9;

    invoke-direct {v2, p0, p1}, Lcb9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Landroidx/fragment/app/DialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/tools/R$id;->rv_select_list:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-direct {v1, p3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->U(Z)V

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->X(I)V

    new-instance v2, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v2, p3}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0, v1, p1, v0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->Y0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;)V

    new-instance p2, Ldb9;

    invoke-direct {p2, p0, v1, p1, v0}, Ldb9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Leb9;

    invoke-direct {p3, p1}, Leb9;-><init>(Landroidx/fragment/app/DialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p2

    new-instance p3, Lfb9;

    invoke-direct {p3, p0, v1, p1, v0}, Lfb9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;)V

    const-string p0, "select_convert_videos_tag"

    invoke-virtual {p2, p0, p3}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->K(Ljava/lang/String;Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;)V

    return-void
.end method

.method public final Y0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/fragment/app/DialogFragment;Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    sget p2, Lcom/transsion/tools/R$string;->select_items:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/transsion/tools/R$string;->select_item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final Z0()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->q:Landroid/widget/TextView;

    sget v2, Lcom/transsion/tools/R$string;->none_select:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    sget v3, Lcom/transsion/tools/R$string;->select_items:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/transsion/tools/R$string;->select_item:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->v:Lcom/transsion/widgets/BadgeView;

    if-lez v0, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->v:Lcom/transsion/widgets/BadgeView;

    new-instance v2, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$3;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a1()V
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->u:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->Z0()V

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Loc2;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/bumptech/glide/load/Transformation;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v4, v5, v0

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$drawable;->ic_wait_convert_list:I

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->s:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/tools/R$drawable;->ic_wait_convert_list:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public convertSelectItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->convertSelectItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->x:Ljava/util/ArrayList;

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->x:Ljava/util/ArrayList;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->M(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->a1()V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x457

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->convertSelectItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    :goto_0
    return-void
.end method

.method public initEvents()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x457

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public loadData(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->z0()V

    return-void
.end method

.method public notifyVideoBarShowStateChange(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoBarShowStateChange :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectVideoMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/high16 p1, 0x42700000    # 60.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyPaddingBottomWithNav(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onClick(Landroid/view/View;)V

    sget v0, Lcom/transsion/tools/R$id;->iv_wait_convert_list:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->T0()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string p1, "moretab_tomp3_addcart_cl"

    invoke-static {p0, p1}, Lk16;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/tools/R$id;->start_converting:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->U0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->W0()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y:Lcom/transsion/playercommon/widgets/SearchFileView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/SearchFileView;->setSearchSelectCallBack(Lcom/transsion/playercommon/widgets/SearchFileView$f;)V

    iput-object v1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->z:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->p:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public onFragmentAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentAnimationEnd(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x45e

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/tools/R$layout;->select_video_main_fragment_tablet:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/tools/R$layout;->select_video_main_fragment:I

    :goto_0
    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->loadData(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->needBg:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/audio/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    :cond_0
    sget p2, Lcom/transsion/tools/R$id;->container_ll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->l:Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initSortView(Landroid/view/View;Z)V

    sget p2, Lcom/transsion/tools/R$id;->tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/CustomTabLayout;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayout;

    sget p2, Lcom/transsion/tools/R$id;->show_select_video_pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/RtlViewPager;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    sget p2, Lcom/transsion/magicvideo/R$id;->app_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    sget p2, Lcom/transsion/tools/R$id;->tv_covert_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->q:Landroid/widget/TextView;

    sget p2, Lcom/transsion/tools/R$id;->ic_covert_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->r:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/tools/R$id;->iv_wait_convert_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->start_converting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->u:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->iv_convert_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->A:Landroid/widget/RelativeLayout;

    sget p2, Lcom/transsion/tools/R$id;->bv_convert_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/BadgeView;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->v:Lcom/transsion/widgets/BadgeView;

    sget p2, Lcom/transsion/tools/R$id;->search_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgetslib/widget/SearchBar;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->t:Lcom/transsion/widgetslib/widget/SearchBar;

    sget v0, Lcom/transsion/tools/R$string;->search_video:I

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(I)V

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->t:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getLinearRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->t:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/InsetDrawable;

    const/16 v0, 0xea

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->t:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->t:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->t:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/view/View;->setTextDirection(I)V

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->t:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    new-instance v1, Llb9;

    invoke-direct {v1, p0, p1}, Llb9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->r:Landroid/widget/ImageView;

    new-instance p2, Lmb9;

    invoke-direct {p2, p0}, Lmb9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->C0()V

    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->addBottomBarShowStateObserver()V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->W0()V

    return-void
.end method

.method public final z0()V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lbb9;

    invoke-direct {v1, p0}, Lbb9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V

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

    new-instance v1, Lgb9;

    invoke-direct {v1, p0}, Lgb9;-><init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V

    new-instance p0, Lhb9;

    invoke-direct {p0}, Lhb9;-><init>()V

    invoke-virtual {v0, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method
