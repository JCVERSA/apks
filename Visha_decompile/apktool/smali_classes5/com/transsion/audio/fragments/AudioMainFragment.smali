.class public Lcom/transsion/audio/fragments/AudioMainFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Z

.field public B:Landroid/widget/ImageView;

.field public C:Landroid/widget/TextView;

.field public D:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public E:Landroid/view/View;

.field public F:Landroid/view/View;

.field public G:Landroid/view/View;

.field public H:Landroid/view/View;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

.field public N:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public O:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public P:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public Q:Landroid/widget/ImageView;

.field public R:I

.field public S:I

.field public T:Z

.field public final U:F

.field public V:Landroid/widget/FrameLayout;

.field public W:Z

.field public X:Lcom/transsion/audio/shortcut/ShortcutObserver;

.field public final Y:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public Z:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

.field public a0:Landroid/animation/ObjectAnimator;

.field public b0:Landroid/animation/Animator;

.field public c0:I

.field public d0:I

.field public e0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public f0:I

.field public g0:Z

.field public l:Z

.field public m:Lcom/transsion/widgets/CustomTabLayoutNew;

.field public n:Landroidx/viewpager2/widget/ViewPager2;

.field public o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

.field public p:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public q:Landroid/view/View;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/ImageView;

.field public t:Landroid/widget/CheckBox;

.field public u:[Ljava/lang/String;

.field public v:Landroid/os/Handler;

.field public w:Landroid/view/View;

.field public x:Landroid/view/View;

.field public y:Ljava/util/List;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->A:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->S:I

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->U:F

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->W:Z

    new-instance v0, Lcom/transsion/audio/fragments/AudioMainFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioMainFragment$a;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Y:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    new-instance v0, Lcom/transsion/audio/fragments/AudioMainFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioMainFragment$b;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Z:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/audio/fragments/AudioMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->I:Z

    return p0
.end method

.method public static bridge synthetic B0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic C0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public static bridge synthetic D0(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->U0()V

    return-void
.end method

.method public static bridge synthetic E0(Lcom/transsion/audio/fragments/AudioMainFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->y1(Z)V

    return-void
.end method

.method public static bridge synthetic F0(Lcom/transsion/audio/fragments/AudioMainFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->B1(Z)V

    return-void
.end method

.method public static synthetic G0(Lcom/transsion/audio/fragments/AudioMainFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic H0(Lcom/transsion/audio/fragments/AudioMainFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    return-object p0
.end method

.method private H1()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    instance-of v1, v0, Lcom/transsion/playercommon/activities/BasePermissionActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/playercommon/activities/BasePermissionActivity;

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->isHaveFilePermission()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lt08;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->Y0()V

    :cond_3
    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->F:Landroid/view/View;

    const/16 v5, 0x8

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v6, v5

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v2

    :goto_4
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->G:Landroid/view/View;

    if-eqz v4, :cond_9

    if-nez v0, :cond_8

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    move v6, v5

    goto :goto_6

    :cond_8
    :goto_5
    move v6, v2

    :goto_6
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->E:Landroid/view/View;

    if-eqz p0, :cond_c

    if-nez v0, :cond_a

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    move v1, v2

    :goto_7
    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    move v2, v5

    :goto_8
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public static synthetic I0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic J0(Lcom/transsion/audio/fragments/AudioMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-object p0
.end method

.method public static synthetic K0(Lcom/transsion/audio/fragments/AudioMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-object p0
.end method

.method public static synthetic L0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic M0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic N0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic O0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic P0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic Q0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private X0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "show_audio_sort_point"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private a1()V
    .locals 4

    new-instance v0, Lis;

    invoke-direct {v0, p0}, Lis;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    new-instance v0, Ljs;

    invoke-direct {v0, p0}, Ljs;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    new-instance v0, Lcom/transsion/audio/fragments/AudioMainFragment$f;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioMainFragment$f;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudiosFragment;->a3(I)Lcom/transsion/audio/fragments/AudiosFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Z:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->N:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;

    invoke-direct {v0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->f2(I)Lcom/transsion/audio/fragments/AudioFoldersFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lpp3;->y:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudiosFragment;->a3(I)Lcom/transsion/audio/fragments/AudiosFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Z:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->f2(I)Lcom/transsion/audio/fragments/AudioFoldersFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/transsion/audio/fragments/ArtistListFragment;->T1(I)Lcom/transsion/audio/fragments/ArtistListFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x35

    invoke-static {v0}, Lcom/transsion/audio/fragments/PlayListFragment;->a4(I)Lcom/transsion/audio/fragments/PlayListFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Z:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/transsion/audio/fragments/PlayListFragment;->a4(I)Lcom/transsion/audio/fragments/PlayListFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Z:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->u:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Y:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    new-instance v3, Lks;

    invoke-direct {v3, p0}, Lks;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-static {v0, v1, v2, v3}, Lrcc;->c(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->S:I

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Lcom/transsion/audio/fragments/AudioMainFragment;->p1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic f1(Landroidx/core/content/pm/ShortcutInfoCompat;)Z
    .locals 1

    const-string v0, "visha_audio_shortcut"

    invoke-virtual {p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->k1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h0(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->t1()V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->l1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j0(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->r1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->e1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->o1()V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->m1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n0(Lcom/transsion/audio/fragments/AudioMainFragment;Lrc7;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->q1(Lrc7;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioMainFragment;->d1(Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->i1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Landroidx/core/content/pm/ShortcutInfoCompat;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->f1(Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r0(Lcom/transsion/audio/fragments/AudioMainFragment;Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/util/Pair;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->g1(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r1(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->s1()V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->j1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->Z0()V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/audio/fragments/AudioMainFragment;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->n1(F)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/util/Pair;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->h1(Landroid/util/Pair;)V

    return-void
.end method

.method public static bridge synthetic x0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->t:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic y0(Lcom/transsion/audio/fragments/AudioMainFragment;)Lcom/transsion/playercommon/adapter/RtlPageAdapter2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    return-object p0
.end method

.method public static bridge synthetic z0(Lcom/transsion/audio/fragments/AudioMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->K:Z

    return p0
.end method


# virtual methods
.method public final A1(Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->O:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    iget p1, p1, Lcom/transsion/data/Repository;->mainTab:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "mmkv_key_show_filter_tip"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->O:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v0, Lns;

    invoke-direct {v0, p0}, Lns;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AudioMainFragment"

    const-string v0, "showFilterUpdateGuide error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final B1(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->W:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->O:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->C1(Z)V

    return-void
.end method

.method public final C1(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->V:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "show_audio_sort_point"

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Q:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-static {}, Lydc;->e()Z

    move-result p1

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final D1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcs;

    invoke-direct {v2, p0}, Lcs;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-static {v1, v0, v2}, Ladc;->s(Landroidx/viewpager2/widget/ViewPager2;ILjava/lang/Runnable;)V

    return-void
.end method

.method public final E1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcs;

    invoke-direct {v1, p0}, Lcs;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-static {v0, v1}, Ladc;->u(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F1(FFZ)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->a0:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->a0:Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->a0:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/transsion/audio/fragments/AudioMainFragment$d;

    invoke-direct {p2, p0, p3}, Lcom/transsion/audio/fragments/AudioMainFragment$d;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->a0:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final G1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->M:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->I:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lqha;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->u1()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->r:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final I1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->s:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->L:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->K:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->J:Z

    if-nez v1, :cond_2

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->I:Z

    if-nez p0, :cond_2

    sget-boolean p0, Lydc;->b:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final J1()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->B:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->z:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->I:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->K:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->J:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    sget-boolean v4, Lpp3;->c:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->C:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->z:Landroid/widget/TextView;

    if-nez v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->I:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/transsion/audio/R$string;->music:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->W0()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v5, v3

    :goto_5
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    invoke-virtual {p0, v2}, Lcom/transsion/audio/fragments/AudioMainFragment;->B1(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->I:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->K:Z

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    const/high16 v2, 0x41c00000    # 24.0f

    goto :goto_8

    :cond_a
    :goto_7
    const/high16 v2, 0x41900000    # 18.0f

    :goto_8
    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->H:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->G1()V

    :cond_b
    :goto_9
    return-void
.end method

.method public final R0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->T0()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->x1()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-lez v0, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/audio/fragments/AudioMainFragment;->F1(FFZ)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_3
    if-gtz v0, :cond_4

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    :cond_4
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v2, 0x0

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    filled-new-array {v2, v0}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Los;

    invoke-direct {v2, p0, p1}, Los;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/transsion/audio/fragments/AudioMainFragment$e;

    invoke-direct {v2, p0, p1, v0}, Lcom/transsion/audio/fragments/AudioMainFragment$e;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->b0:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->U0()V

    :cond_6
    return-void
.end method

.method public final S0()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final T0()V
    .locals 2

    iget v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->d0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->d0:I

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->w1()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->a0:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->a0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->a0:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->b0:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->b0:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->b0:Landroid/animation/Animator;

    :cond_1
    return-void
.end method

.method public final U0()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateAppBarLayoutBehavior(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->f0:I

    iget-boolean v3, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->g0:Z

    invoke-interface {v1, v0, v2, v3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->d(ZIZ)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/fragments/BaseFragment;

    instance-of v2, v1, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const-string v1, "audio"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final V0()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getSelectedTabPosition()I

    move-result v0

    if-ltz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final W0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->J:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->I:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->K:Z

    if-eqz p0, :cond_0

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

.method public Y0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->E:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->x:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/audio/R$id;->audio_main_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->E:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->text_no_audios:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-boolean v2, Lpp3;->t:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lpp3;->c:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/audio/R$string;->permission_all_file_1_pre:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/audio/R$string;->permission_all_file_1:I

    goto :goto_0

    :cond_1
    sget-boolean v2, Lpp3;->c:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/transsion/audio/R$string;->permission_write_extenal_1_pre:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/transsion/audio/R$string;->permission_write_extenal_1:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->E:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->add_play_list_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/audio/R$string;->permission_go:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lps;

    invoke-direct {v1, p0}, Lps;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public final Z0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->x:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->w:Landroid/view/View;

    if-eqz v0, :cond_4

    sget v1, Lcom/transsion/audio/R$id;->audio_fragment_main_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->x:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->top_menu_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->F:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->audio_main_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->G:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->tab_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayoutNew;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioMainFragment;->c1(Landroid/view/View;)V

    sget v1, Lcom/transsion/audio/R$id;->title_bar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->q:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->iv_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->B:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/audio/R$id;->tv_logo_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->q:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/audio/R$id;->title_bar_checkBox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->t:Landroid/widget/CheckBox;

    sget v1, Lcom/transsion/audio/R$id;->iv_ad_tip_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->r:Landroid/widget/ImageView;

    new-instance v2, Lts;

    invoke-direct {v2, p0}, Lts;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lxdc;->d()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->M:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    sget v1, Lcom/transsion/audio/R$id;->iv_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/audio/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->z:Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$id;->iv_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/audio/R$id;->view_padding_start:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->H:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->iv_audio_shortcut:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->s:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/audio/R$id;->iv_play_shuffle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/RoundImageView;

    iput-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIvShufflePlayBtn:Lcom/transsion/widgets/RoundImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/transsion/audio/shortcut/ShortcutObserver;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->s:Landroid/widget/ImageView;

    invoke-direct {v2, v1, v3, v4}, Lcom/transsion/audio/shortcut/ShortcutObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->X:Lcom/transsion/audio/shortcut/ShortcutObserver;

    sget-boolean v1, Lydc;->b:Z

    if-nez v1, :cond_1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v1

    new-instance v2, Lus;

    invoke-direct {v2, p0}, Lus;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    new-instance v2, Lvs;

    invoke-direct {v2, p0}, Lvs;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-virtual {v1, v2}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_1
    sget v1, Lcom/transsion/audio/R$id;->menu_tab_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/audio/R$id;->app_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    sget v1, Lcom/transsion/audio/R$id;->audio_filter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->O:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v1, :cond_2

    new-instance v2, Lha1;

    new-instance v3, Lds;

    invoke-direct {v3, p0}, Lds;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-direct {v2, v3}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v1, Lcom/transsion/audio/R$id;->ll_sort_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->V:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/audio/R$id;->audio_main_sort:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->P:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v1, Lcom/transsion/audio/R$id;->iv_main_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Q:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->P:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_3

    new-instance v1, Lha1;

    new-instance v2, Les;

    invoke-direct {v2, p0}, Les;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-direct {v1, v2}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->J1()V

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->a1()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->b1()V

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->D:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->B:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    sget-boolean v1, Lpp3;->p:Z

    if-eqz v1, :cond_4

    new-instance v1, Lfs;

    invoke-direct {v1, p0}, Lfs;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->B:Landroid/widget/ImageView;

    new-instance v1, Lgs;

    invoke-direct {v1, p0}, Lgs;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->C:Landroid/widget/TextView;

    new-instance v1, Lhs;

    invoke-direct {v1, p0}, Lhs;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    return-void
.end method

.method public final b1()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->u:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/audio/R$drawable;->ic_media_tab_all:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v0, Lcom/transsion/audio/R$drawable;->ic_media_tab_play_list:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v0, Lcom/transsion/audio/R$drawable;->ic_media_tab_folder:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v0, Lcom/transsion/audio/R$drawable;->ic_media_tab_mv:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v0, Lcom/transsion/audio/R$drawable;->ic_media_tab_album:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v0, Lcom/transsion/audio/R$drawable;->ic_media_tab_artist:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v0, Lcom/transsion/audio/R$drawable;->ic_media_tab_often_listen:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v0, Lcom/transsion/audio/R$drawable;->ic_media_tab_history:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->u:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-boolean v2, Lpp3;->y:Z

    if-nez v2, :cond_0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {v2, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setNames(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setIcons(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->isFirstLevelTab(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    new-instance v1, Lms;

    invoke-direct {v1, p0}, Lms;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public c1(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/audio/R$id;->show_audio_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public final synthetic d1(Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x439

    if-eq p1, v0, :cond_7

    const/16 v0, 0x476

    const-string v1, "AudioMainFragment"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x484

    if-eq p1, v0, :cond_4

    const/16 v0, 0x48a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x491

    if-eq p1, v0, :cond_1

    const/16 v0, 0x49c

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    aget-object p1, p2, v3

    if-eqz p1, :cond_8

    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_8

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->W:Z

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->W0()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->B1(Z)V

    goto/16 :goto_0

    :cond_1
    aget-object p1, p2, v3

    if-eqz p1, :cond_2

    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    xor-int/lit8 p1, v3, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->L:Z

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->I1()V

    goto/16 :goto_0

    :cond_3
    :try_start_0
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    iget p2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    if-ne p1, v2, :cond_8

    const-string p1, "audio"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lcom/transsion/playercommon/fragments/BaseFragment;->SCROLL_START:I

    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideShuffleBtn()V

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->I:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->K:Z

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->showShuffleBtn()V

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_AUDIO_MANUAL_SORT ,is Manual Sort :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", from:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/transsion/audio/fragments/AudioMainFragment;->startDragMode(ZIZ)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->H1()V

    :cond_8
    :goto_0
    return-void
.end method

.method public final synthetic e1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lt08;->l(Landroid/app/Activity;)V

    return-void
.end method

.method public final synthetic g1(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/util/Pair;
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lcom/transsion/audio/shortcut/AudioShortCutHelper;->e(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcuts(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lls;

    invoke-direct {v0}, Lls;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getDefaultListFlag()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->V0()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getListFlag()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x15

    return p0
.end method

.method public final synthetic h1(Landroid/util/Pair;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->X:Lcom/transsion/audio/shortcut/ShortcutObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->L:Z

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->I1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportShortCut error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioMainFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public final synthetic i1(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-class v1, Lcom/transsion/audio/activities/AudioFilterMainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const-string p0, "vd_audio_filt_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "mmkv_key_show_filter_tip"

    invoke-virtual {p0, p1}, Lcom/tencent/mmkv/MMKV;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "mmkv_key_listen_music_count"

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x439

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x476

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x484

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x48a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x491

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x49c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic j1(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x400

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->X0()V

    return-void
.end method

.method public final synthetic k1(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoomOnLongClick(Landroid/content/Context;II)Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->B:Landroid/widget/ImageView;

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return v1
.end method

.method public final synthetic l1(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoomOnLongClick(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method public final synthetic m1(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoomOnLongClick(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method public markBottomTabPageShow()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->markBottomTabPageShow()V

    new-instance v0, Lqs;

    invoke-direct {v0, p0}, Lqs;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Lrs;

    invoke-direct {v0}, Lrs;-><init>()V

    invoke-virtual {p0, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez p0, :cond_0

    const-string p0, "vd_audio_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointVisiable(Z)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->u1()V

    :cond_0
    return-void
.end method

.method public final synthetic n1(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->y1(Z)V

    return-void
.end method

.method public notifyMiniBarVisible(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->notifyMiniBarVisible(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->notifyMiniBarVisible(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic o1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->t(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_music_theme_menu:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "com.transsion.tools.activities.SkinsPreviewActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lvha;->f()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v3, "skin_list"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "skin_index"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x7e5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "mmkv_key_show_music_theme_icon"

    invoke-virtual {p0, p1, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_search:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSearchListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;

    if-eqz p0, :cond_6

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;->a(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->title_bar_back:I

    if-ne v0, v1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->K:Z

    const/16 v0, 0x15

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2, v0, v2}, Lcom/transsion/audio/fragments/AudioMainFragment;->startDragMode(ZIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v0, v2}, Lcom/transsion/audio/fragments/AudioMainFragment;->startEditMode(ZIZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_ad_tip_menu:I

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->M:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-static {p1, v2, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpFromAdViewResult(Landroid/content/Context;ZLcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->M:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getJumpLink()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->M:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v0, "vd_ad_icon_cl"

    invoke-static {p1, p0, v0}, La9;->b(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_audio_shortcut:I

    if-ne v0, v1, :cond_5

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1, v2}, Lcom/transsion/audio/shortcut/AudioShortCutHelper;->g(Landroid/app/Activity;Z)Lkotlinx/coroutines/j;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-string p1, "visha_audio_shortcut"

    invoke-static {p0, p1}, Lcom/transsion/audio/shortcut/AudioShortCutHelper;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lsy5;->c(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/audio/R$id;->iv_play_shuffle:I

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    if-le p1, v0, :cond_6

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->startShufflePlay()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->z1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->S0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->D1()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->S:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->T:Z

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$array;->audio_tab_list:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->u:[Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->v:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->registerBottomBarVisibleChanged()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->w:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->Y:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    :cond_1
    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->w:Landroid/view/View;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->v:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    instance-of v3, v2, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {v2, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->X:Lcom/transsion/audio/shortcut/ShortcutObserver;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->X:Lcom/transsion/audio/shortcut/ShortcutObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->X:Lcom/transsion/audio/shortcut/ShortcutObserver;

    :cond_5
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->J1()V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/audio/R$layout;->audio_fragment_main:I

    return p0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->l:Z

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->H1()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "mmkv_key_show_filter_tip"

    invoke-virtual {v1, v2}, Lcom/tencent/mmkv/MMKV;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioMainFragment;->A1(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->z1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->v1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->S0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->realignNestedViewPagersIfNeeded()V

    :cond_1
    return-void
.end method

.method public onSelectInViewPage()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->z1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->T:Z

    :cond_0
    return-void
.end method

.method public onUnSelectInViewPage()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lpp3;->g(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lpp3;->h(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    sget v0, Lcom/transsion/audio/R$id;->cl_drag_animation_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->N:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->Z0()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->v:Landroid/os/Handler;

    new-instance v1, Lss;

    invoke-direct {v1, p0}, Lss;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onVisibleChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onVisibleChanged(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mMenuShowListener:Lcom/transsion/playercommon/fragments/BaseFragment$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment$d;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast v1, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->A1(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final synthetic p1(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getTabAt(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->selectTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    return-void
.end method

.method public final synthetic q1(Lrc7;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "visha_audio_shortcut"

    invoke-static {v0, v1}, Lcom/transsion/audio/shortcut/AudioShortCutHelper;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lvf;->e(Landroid/content/Context;)Z

    move-result v1

    sget-boolean v2, Lcom/transsion/playercommon/core/MainApp;->q:Z

    if-eqz v2, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mFromSource:Ljava/lang/String;

    invoke-static {v2, v3, p0, v0, v1}, Luy5;->g(Ljava/lang/String;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;ZZ)V

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lk93;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lk93;->onComplete()V

    return-void
.end method

.method public realignNestedViewPagersIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->z1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->v1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->S0()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->T:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->T:Z

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->E1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 1

    const-string p0, "AudioMainFragment"

    const-string v0, "refresh"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public releaseWhenDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->releaseWhenDestroyView()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->T0()V

    return-void
.end method

.method public final synthetic s1()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->O:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v1, Lcom/transsion/audio/R$string;->audio_filter_not_need:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x800055

    invoke-static {v0, p0, v1}, Lea7;->p(Landroid/view/View;Ljava/lang/String;I)Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "mmkv_key_show_filter_tip"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public setHiddenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setHiddenChanged(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setUserVisibleHint(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->onVisibleChanged(Z)V

    return-void
.end method

.method public showSelectedTab(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSelectedTab(I)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public startDragMode(ZIZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->K:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDragMode: enter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startDragMode(ZIZ)V

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->K:Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-boolean v3, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->J:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->I1()V

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioMainFragment;->y1(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lcom/transsion/widgets/CustomTabLayoutNew;->setTabChildEnable(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->q:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->J1()V

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {v0, v2, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startDragMode(ZIZ)V

    :cond_4
    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/audio/R$string;->manual_sorting:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    iget p3, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "audio"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public startEditMode(ZIZ)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startEditMode(ZIZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startEditMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    instance-of p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->I:Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/16 v2, 0x8

    if-nez p1, :cond_3

    iget-boolean v3, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->J:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->I1()V

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioMainFragment;->y1(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lcom/transsion/widgets/CustomTabLayoutNew;->setTabChildEnable(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->q:Landroid/view/View;

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->J1()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->t:Landroid/widget/CheckBox;

    if-eqz p1, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->t:Landroid/widget/CheckBox;

    new-instance v2, Lcom/transsion/audio/fragments/AudioMainFragment$c;

    invoke-direct {v2, p0}, Lcom/transsion/audio/fragments/AudioMainFragment$c;-><init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    invoke-interface {p1, v0, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->d(ZIZ)V

    :cond_6
    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateAppBarLayoutBehavior(Z)V

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioMainFragment;->R0(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    iget p2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "audio"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    iput p2, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->f0:I

    iput-boolean p3, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->g0:Z

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/audio/R$string;->music:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/transsion/audio/fragments/AudioMainFragment;->R0(Z)V

    return-void
.end method

.method public final t1()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->t(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->S:I

    :cond_2
    return-void
.end method

.method public final u1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->M:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getJumpLink()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->M:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v1, "vd_ad_icon_show"

    invoke-static {v0, p0, v1}, La9;->b(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final v1()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->T:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->S:I

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_3
    :goto_2
    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->T:Z

    return p0
.end method

.method public final w1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->e0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->e0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->e0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public final x1()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    if-lez v0, :cond_1

    iput v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->c0:I

    :cond_1
    iget p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->c0:I

    return p0
.end method

.method public final y1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->I:Z

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment;->K:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final z1()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p0, v0, :cond_0

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
