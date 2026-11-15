.class public Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 c2\u00020\u00012\u00020\u0002:\u0001dB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u0015\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J+\u0010!\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u000f2\u0012\u0010 \u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001f0\u001e\"\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0019\u0010%\u001a\u00020\u00052\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010)\u001a\u00020\u0007\u00a2\u0006\u0004\u0008)\u0010(J\u001f\u0010-\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008/\u0010\u0004R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R*\u0010E\u001a\u0016\u0012\u0004\u0012\u00020A\u0018\u00010@j\n\u0012\u0004\u0012\u00020A\u0018\u0001`B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR$\u0010W\u001a\u0012\u0012\u0004\u0012\u00020*0@j\u0008\u0012\u0004\u0012\u00020*`B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010DR$\u0010X\u001a\u0012\u0012\u0004\u0012\u00020\u000f0@j\u0008\u0012\u0004\u0012\u00020\u000f`B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010DR\u0018\u0010\\\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0016\u0010\r\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u001a\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\u00070_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010a\u00a8\u0006e"
    }
    d2 = {
        "Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;",
        "Lcom/transsion/playercommon/fragments/PlayBaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "Lzfb;",
        "addBottomBarShowStateObserver",
        "",
        "show",
        "notifyVideoBarShowStateChange",
        "(Z)V",
        "r0",
        "k0",
        "mIsHistory",
        "p0",
        "",
        "onLayoutId",
        "()I",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "onResume",
        "initEvents",
        "eventId",
        "",
        "",
        "args",
        "didReceivedNotification",
        "(I[Ljava/lang/Object;)V",
        "Landroid/view/animation/Animation;",
        "animator",
        "onFragmentAnimationEnd",
        "(Landroid/view/animation/Animation;)V",
        "onBackPressed",
        "()Z",
        "j0",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "mediaItem",
        "add",
        "o0",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V",
        "q0",
        "Landroid/widget/LinearLayout;",
        "l",
        "Landroid/widget/LinearLayout;",
        "mContainer",
        "Lcom/transsion/widgets/CustomTabLayout;",
        "m",
        "Lcom/transsion/widgets/CustomTabLayout;",
        "mOsTabLayout",
        "Lcom/transsion/widgets/RtlViewPager;",
        "n",
        "Lcom/transsion/widgets/RtlViewPager;",
        "mViewPager",
        "Lcom/transsion/playercommon/adapter/RtlPageAdapter;",
        "o",
        "Lcom/transsion/playercommon/adapter/RtlPageAdapter;",
        "mVideosPageAdapter",
        "Ljava/util/ArrayList;",
        "Landroidx/fragment/app/Fragment;",
        "Lkotlin/collections/ArrayList;",
        "p",
        "Ljava/util/ArrayList;",
        "mFragments",
        "Landroid/widget/ImageView;",
        "q",
        "Landroid/widget/ImageView;",
        "mCloseIv",
        "Landroid/widget/FrameLayout;",
        "r",
        "Landroid/widget/FrameLayout;",
        "mLlSort",
        "Landroid/widget/TextView;",
        "s",
        "Landroid/widget/TextView;",
        "mTvSelectCount",
        "Landroid/widget/Button;",
        "t",
        "Landroid/widget/Button;",
        "mStartSendBt",
        "u",
        "mSelectMediaItems",
        "mSelectMediaItemIds",
        "Lcom/transsion/playercommon/videomodel/MainViewModel;",
        "w",
        "Lcom/transsion/playercommon/videomodel/MainViewModel;",
        "mMainViewModel",
        "x",
        "Z",
        "Landroidx/lifecycle/Observer;",
        "y",
        "Landroidx/lifecycle/Observer;",
        "mBottomBarShowStateObserver",
        "z",
        "a",
        "tools_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final z:Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$a;


# instance fields
.field public l:Landroid/widget/LinearLayout;

.field public m:Lcom/transsion/widgets/CustomTabLayout;

.field public n:Lcom/transsion/widgets/RtlViewPager;

.field public o:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

.field public p:Ljava/util/ArrayList;

.field public q:Landroid/widget/ImageView;

.field public r:Landroid/widget/FrameLayout;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/Button;

.field public final u:Ljava/util/ArrayList;

.field public final v:Ljava/util/ArrayList;

.field public w:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public x:Z

.field public final y:Landroidx/lifecycle/Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->z:Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->v:Ljava/util/ArrayList;

    new-instance v0, Los3;

    invoke-direct {v0, p0}, Los3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->y:Landroidx/lifecycle/Observer;

    return-void
.end method

.method private final addBottomBarShowStateObserver()V
    .locals 3

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->w:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->y:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->w:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->n0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->l0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->m0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;Z)V

    return-void
.end method

.method public static final synthetic i0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;)Lcom/transsion/widgets/CustomTabLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->m:Lcom/transsion/widgets/CustomTabLayout;

    return-object p0
.end method

.method private final k0()V
    .locals 5

    new-instance v0, Lqs3;

    invoke-direct {v0, p0}, Lqs3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->p:Ljava/util/ArrayList;

    sget-object v0, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->e0:Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment$a;

    iget-boolean v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->x:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x63

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment$a;->a(I)Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->Y:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$a;

    iget-boolean v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->x:Z

    if-ne v1, v2, :cond_2

    const/16 v1, 0x62

    goto :goto_1

    :cond_2
    const/16 v1, 0x15

    :goto_1
    invoke-virtual {v0, v1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$a;->a(I)Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$array;->file_trans_tab_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringArray(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->p:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, v0}, Lcom/transsion/playercommon/adapter/RtlPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_4

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/playercommon/adapter/RtlPageAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$initFragment$2;

    invoke-direct {v1}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$initFragment$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/viewpager/widget/ViewPager;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->m:Lcom/transsion/widgets/CustomTabLayout;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_7
    iget-object p0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->m:Lcom/transsion/widgets/CustomTabLayout;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v2}, Lcom/transsion/widgets/CustomTabLayout;->isFirstLevelTab(Z)V

    :cond_8
    return-void
.end method

.method public static final l0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->nestedScroll(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V

    return-void
.end method

.method public static final m0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static final n0(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->x:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "select_file"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->c(Lcom/transsion/dbdata/markpoint/a$a;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private final notifyVideoBarShowStateChange(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoBarShowStateChange :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyPaddingBottomWithNav(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private final r0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->t:Landroid/widget/Button;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->u:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    sget v1, Lcom/transsion/tools/R$string;->items:I

    iget-object v2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/tools/R$string;->item:I

    iget-object v2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x494

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    const-string v0, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->o0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    :cond_0
    return-void
.end method

.method public initEvents()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x494

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    return p0
.end method

.method public final o0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TEST] sendSelectItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->v:Ljava/util/ArrayList;

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->v:Ljava/util/ArrayList;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->r0()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->x:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "select_file"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/transsion/dbdata/markpoint/a$a;->c(Lcom/transsion/dbdata/markpoint/a$a;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onClick(Landroid/view/View;)V

    sget v0, Lcom/transsion/tools/R$id;->start_send:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->q0()V

    goto :goto_2

    :cond_0
    sget v0, Lcom/transsion/tools/R$id;->ll_sort_layout:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgets/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    instance-of p1, p1, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->r:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showSortPopupWindow(Landroid/view/View;ZZ)V

    :cond_3
    :goto_2
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

    sget p0, Lcom/transsion/tools/R$layout;->file_trans_select_main_fragment:I

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

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

    iput-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->l:Landroid/widget/LinearLayout;

    sget p2, Lcom/transsion/tools/R$id;->tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/CustomTabLayout;

    iput-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->m:Lcom/transsion/widgets/CustomTabLayout;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment$b;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;)V

    invoke-virtual {p2, v0}, Lcom/transsion/widgets/CustomTabLayout;->addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;)V

    :cond_1
    sget p2, Lcom/transsion/tools/R$id;->show_select_video_pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/RtlViewPager;

    iput-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    sget p2, Lcom/transsion/tools/R$id;->app_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    sget p2, Lcom/transsion/tools/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->x:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget v0, Lcom/transsion/tools/R$string;->visha_file_trans_receive_history:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget v0, Lcom/transsion/tools/R$string;->visha_select_files_to_send:I

    goto :goto_0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/transsion/tools/R$id;->ic_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->q:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkdc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setRotationY(F)V

    :cond_4
    sget p2, Lcom/transsion/tools/R$id;->tv_select_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->s:Landroid/widget/TextView;

    sget p2, Lcom/transsion/tools/R$id;->start_send:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->t:Landroid/widget/Button;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    sget p2, Lcom/transsion/tools/R$id;->ll_sort_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->r:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->r:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    iget-boolean v3, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->x:Z

    if-eq v3, v1, :cond_7

    move v3, v0

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->q:Landroid/widget/ImageView;

    if-eqz p2, :cond_9

    new-instance v3, Lps3;

    invoke-direct {v3, p0}, Lps3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->q:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    sget p2, Lcom/transsion/tools/R$id;->bottom_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-boolean p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->x:Z

    if-ne p2, v1, :cond_b

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->k0()V

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->addBottomBarShowStateObserver()V

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->r0()V

    iget-boolean p0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->x:Z

    if-eq p0, v1, :cond_c

    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/a$a;->i()V

    :cond_c
    return-void
.end method

.method public final p0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->x:Z

    return-void
.end method

.method public final q0()V
    .locals 3

    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    iget-object v1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/markpoint/a$a;->h(I)V

    sget-object v0, Lmu3;->a:Lmu3;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p0}, Lmu3;->k(Landroid/content/Context;ZLjava/util/List;)V

    return-void
.end method
