.class public Lcom/transsion/onlinevideo/home/OnlineHomeFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lh27$b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/onlinevideo/onlinehomefragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "visha_onlineHomeFragment"

.field public static bTopBarChanged:Z = false


# instance fields
.field animatorSet:Landroid/animation/AnimatorSet;

.field private controller:Landroidx/core/view/WindowInsetsControllerCompat;

.field private mAdapter:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

.field private mChannelSize:I

.field private mCollect:Landroid/widget/ImageView;

.field private mColorRes:I

.field private mController:Lcom/app/hubert/guide/core/Controller;

.field private mForceUpdateBarShow:Ljava/lang/Boolean;

.field private mFragmentView:Landroid/view/View;

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHistory:Landroid/widget/ImageView;

.field private mIsH5Visible:Z

.field private mIsInitFragmentAndChannelNull:Z

.field private mIsLibraryVisible:Z

.field private mIsTiktokVisible:Z

.field private mLoginUserDefaultImage:Landroid/widget/ImageView;

.field private mLoginUserImage:Landroid/widget/ImageView;

.field private mNotLoginUserLogo:Landroid/widget/ImageView;

.field private mOttChannelsConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field mPromotionModel:Lcom/transsion/onlinevideo/promotion/PromotionModel;

.field private mScrolling:Z

.field private mSearch:Landroid/widget/ImageView;

.field private mSearchRedSpot:Landroid/view/View;

.field private mSilentAuthRunnable:Ljava/lang/Runnable;

.field private mSilentAuthScheduled:Z

.field private mTabContainer:Landroid/view/View;

.field private mTabLayout:Lcom/transsion/widgets/CustomTabLayout;

.field private final mTopBarCallback:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

.field private mTopBarContainer:Landroid/view/View;

.field private mTopBarLayout:Landroid/view/View;

.field private mTopBarShow:Z

.field private mUserContent:Landroid/view/View;

.field private mUserInfo:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

.field private mVishaLogo:Landroid/widget/ImageView;

.field private mVpChannels:Lcom/transsion/widgets/RtlViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarShow:Z

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mForceUpdateBarShow:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsInitFragmentAndChannelNull:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsTiktokVisible:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsLibraryVisible:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsH5Visible:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthScheduled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mOttChannelsConfig:Ljava/util/List;

    new-instance v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$a;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarCallback:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    return-void
.end method

.method public static synthetic P(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$initTitle$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Q(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$onPageRealShowDelayThreeSecond$4()V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$showGuide$10(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic S(Lcom/app/hubert/guide/core/Controller;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$showGuide$5(Lcom/app/hubert/guide/core/Controller;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$onPageRealShowDelayOneSecond$3()V

    return-void
.end method

.method public static synthetic U(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$showGuide$9(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$showGuide$7(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic W(Lcom/app/hubert/guide/core/Controller;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$showGuide$8(Lcom/app/hubert/guide/core/Controller;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$applyTopBarStatusBarInset$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$showGuide$6(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$onViewCreated$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->lambda$updateIfOSLogin$11()V

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private applyTopBarStatusBarInset(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->n(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->setTopBarTopPadding(Landroid/view/View;I)V

    new-instance v0, Ljg7;

    invoke-direct {v0, p0}, Ljg7;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic b0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mCollect:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic c0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mColorRes:I

    return p0
.end method

.method private changeNavStatusBarColor(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->changeNavStatusBarColor(ZZ)V

    return-void
.end method

.method private changeNavStatusBarColor(ZZ)V
    .locals 2

    if-nez p2, :cond_0

    .line 2
    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mCurrentTabIsSelected:Z

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 v0, 0x20

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->controller:Landroidx/core/view/WindowInsetsControllerCompat;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v1, p2, v0}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->controller:Landroidx/core/view/WindowInsetsControllerCompat;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->controller:Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 9
    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->controller:Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 10
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "changeNavStatusBarColor: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_onlineHomeFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private configPlayer()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;->mid:Ljava/lang/String;

    sget-object v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;->ch_token:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerManager;->initMgtvPlayerCoreSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mForceUpdateBarShow:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic e0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mHistory:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic f0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mPosition:I

    return p0
.end method

.method public static bridge synthetic g0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mScrolling:Z

    return p0
.end method

.method public static bridge synthetic h0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSearch:Landroid/widget/ImageView;

    return-object p0
.end method

.method private handleChannelPageSelected(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    if-ltz p1, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getTopicLayout()I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getSort()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "vd_ott_channel_cl"

    invoke-static {v1, v2, v3, v0, v4}, Lc06;->h(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsLibraryVisible:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/transsion/onlinevideo/topic/AllTagFragment;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/onlinevideo/topic/AllTagFragment;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->E0()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsTiktokVisible:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->w1()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsH5Visible:Z

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/transsion/onlinevideo/h5/H5WebFragment;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/transsion/onlinevideo/h5/H5WebFragment;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->g0()V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r1()V

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static bridge synthetic i0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTabContainer:Landroid/view/View;

    return-object p0
.end method

.method private isShowTopAll()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mOttChannelsConfig:Ljava/util/List;

    invoke-static {v0}, Lu71;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getOttChannelsBean()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mOttChannelsConfig:Ljava/util/List;

    :goto_0
    invoke-static {v0}, Lu71;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v1}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {p0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getShowTopFunction()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getShowTopFunction()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method private isVkVideo()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mOttChannelsConfig:Ljava/util/List;

    invoke-static {v0}, Lu71;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getOttChannelsBean()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mOttChannelsConfig:Ljava/util/List;

    :goto_0
    invoke-static {v0}, Lu71;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v1}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {p0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isVkChannel()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static bridge synthetic j0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Lcom/transsion/widgets/CustomTabLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTabLayout:Lcom/transsion/widgets/CustomTabLayout;

    return-object p0
.end method

.method public static bridge synthetic k0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarContainer:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic l0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarShow:Z

    return p0
.end method

.method private synthetic lambda$applyTopBarStatusBarInset$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->setTopBarTopPadding(Landroid/view/View;I)V

    return-object p2
.end method

.method private static synthetic lambda$initTitle$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onPageRealShowDelayOneSecond$3()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-object v0, v0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p0

    invoke-static {p0}, Lc06;->p(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPageRealShowDelayThreeSecond$4()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-object v0, v0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p0

    invoke-static {p0}, Lc06;->e(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Ljava/lang/Integer;)V
    .locals 3

    invoke-static {}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->c()Lcom/transsion/onlinevideo/promotion/PromotionManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->f(Landroid/content/Context;IILli9;)V

    return-void
.end method

.method private synthetic lambda$showGuide$10(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$color;->color_guide_circle:I

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/onlinevideo/R$dimen;->guide_stroke_circle_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    invoke-virtual {p1, p0, v1, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static synthetic lambda$showGuide$5(Lcom/app/hubert/guide/core/Controller;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/app/hubert/guide/core/Controller;->q(I)V

    return-void
.end method

.method private static synthetic lambda$showGuide$6(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$id;->ok:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcg7;

    invoke-direct {v0, p1}, Lcg7;-><init>(Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$showGuide$7(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 7

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$color;->white:I

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$dimen;->guide_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/onlinevideo/R$dimen;->guide_padding_horizontal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v5, v4

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/transsion/onlinevideo/R$dimen;->guide_stroke_radius:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v1, p2, p0, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static synthetic lambda$showGuide$8(Lcom/app/hubert/guide/core/Controller;Landroid/view/View;)V
    .locals 0

    const-string p1, "vd_ott_history_leading_got_show"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/Controller;->l()V

    return-void
.end method

.method private static synthetic lambda$showGuide$9(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V
    .locals 1

    const-string v0, "vd_ott_history_leading_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->ok:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lig7;

    invoke-direct {v0, p1}, Lig7;-><init>(Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$updateIfOSLogin$11()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/transsion/palmsdk/b;->t()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthScheduled:Z

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "vd_ott_pf_cl"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/transsion/palmsdk/b;->i(Landroid/app/Activity;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthScheduled:Z

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthScheduled:Z

    return-void

    :goto_2
    :try_start_2
    const-string v2, "visha_onlineHomeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Palm authorize error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_3
    return-void

    :goto_4
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthScheduled:Z

    throw v1
.end method

.method public static bridge synthetic m0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVishaLogo:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic n0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Lcom/transsion/widgets/RtlViewPager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    return-object p0
.end method

.method public static bridge synthetic o0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mForceUpdateBarShow:Ljava/lang/Boolean;

    return-void
.end method

.method private onBannerReady()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->A:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->L0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarShow:Z

    iget-object p0, v0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->A:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;->a(Z)V

    :cond_0
    return-void
.end method

.method private onPageRealShowDelayOneSecond()V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbg7;

    invoke-direct {v1, p0}, Lbg7;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onPageRealShowDelayThreeSecond()V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldg7;

    invoke-direct {v1, p0}, Ldg7;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static bridge synthetic p0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mPosition:I

    return-void
.end method

.method public static bridge synthetic q0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mScrolling:Z

    return-void
.end method

.method public static bridge synthetic r0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarShow:Z

    return-void
.end method

.method private restoreHostStatusBarAppearance()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->changeNavStatusBarColor(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreHostStatusBarAppearance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "visha_onlineHomeFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static bridge synthetic s0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->changeNavStatusBarColor(Z)V

    return-void
.end method

.method private setTopBarShow(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSearch:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSearchRedSpot:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-static {}, Lydc;->e()Z

    move-result p1

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mHistory:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mCollect:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mUserContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setTopBarTopPadding(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    if-ne p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static bridge synthetic t0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->handleChannelPageSelected(ILjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic u0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->isShowTopAll()Z

    move-result p0

    return p0
.end method

.method private updateIfOSLogin()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIfOSLogin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_onlineHomeFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthScheduled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthScheduled:Z

    new-instance v0, Llg7;

    invoke-direct {v0, p0}, Llg7;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static bridge synthetic v0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->setTopBarShow(Z)V

    return-void
.end method

.method private vipLogoAnimate()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mNotLoginUserLogo:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mNotLoginUserLogo:Landroid/widget/ImageView;

    const-string v4, "scaleY"

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public changeUserImage(ZLcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->isVkVideo()Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->isShowTopAll()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p2, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mUserInfo:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragmentView:Landroid/view/View;

    sget v3, Lcom/transsion/onlinevideo/R$id;->ll_login:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lkfc;->h()Z

    move-result v1

    invoke-static {}, Lkfc;->l()Z

    move-result v3

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    const-string p1, "user login,update user info"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[VishaUserDebug]"

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v4, v5}, Loc2;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/bumptech/glide/load/Transformation;

    aput-object v1, v4, v0

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-virtual {p2, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mLoginUserImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mLoginUserImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mUserContent:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mLoginUserDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mNotLoginUserLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mLoginUserDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mLoginUserImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mNotLoginUserLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mUserContent:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->vipLogoAnimate()V

    :cond_5
    const-string p0, "vd_ott_vip_btn_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mUserContent:Landroid/view/View;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3

    const/16 v0, 0x413

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x433

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x45a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x466

    if-eq p1, v0, :cond_1

    const/16 v0, 0x47f

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    aget-object p1, p2, v2

    check-cast p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->changeUserImage(ZLcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->changeUserImage(ZLcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    invoke-static {}, Lcom/transsion/onlinevideo/history/HistoryManager;->g()V

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->e(Z)V

    goto :goto_0

    :pswitch_2
    aget-object p1, p2, v2

    check-cast p1, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->changeUserImage(ZLcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    invoke-static {}, Lcom/transsion/onlinevideo/history/HistoryManager;->m()V

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->h()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsInitFragmentAndChannelNull:Z

    if-eqz p1, :cond_5

    :try_start_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getOttChannelsBean()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->initFragments(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TAG"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->onBannerReady()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->privacyPermissionCheck()V

    goto :goto_0

    :cond_3
    sget-object p0, Ld06;->a:Ljava/lang/String;

    aget-object p1, p2, v2

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsModel;->markAlgorithmRecommend(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mUserInfo:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->changeUserImage(ZLcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x407
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initFragments(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "visha_onlineHomeFragment"

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iput-object v1, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mOttChannelsConfig:Ljava/util/List;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mChannelSize:I

    iget-object v4, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v4, :cond_1

    sget v5, Lcom/transsion/onlinevideo/R$layout;->channel_fragment:I

    invoke-virtual {v0, v4, v5}, Lcom/transsion/playercommon/fragments/BaseFragment;->preloadLayout(Landroid/view/ViewGroup;I)V

    iget-object v4, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    sget v5, Lcom/transsion/onlinevideo/R$layout;->fragment_all:I

    invoke-virtual {v0, v4, v5}, Lcom/transsion/playercommon/fragments/BaseFragment;->preloadLayout(Landroid/view/ViewGroup;I)V

    :cond_1
    iget v4, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mChannelSize:I

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/onlinevideo/R$dimen;->online_video_tab_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v6, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/transsion/utils/a;->n(Landroid/content/Context;)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v9, v6

    move v8, v7

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_a

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isLibraryChannel()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget v10, Lcom/transsion/onlinevideo/R$string;->ott_media_libary:I

    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_2
    aput-object v11, v4, v8

    iput-boolean v3, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsLibraryVisible:Z

    new-instance v10, Lcom/transsion/onlinevideo/topic/AllTagFragment;

    invoke-direct {v10}, Lcom/transsion/onlinevideo/topic/AllTagFragment;-><init>()V

    iget-object v11, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarCallback:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    invoke-virtual {v10, v11}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->D0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;)V

    iget-object v11, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3
    if-ne v9, v6, :cond_4

    move v9, v8

    :cond_4
    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isTiktokChannel()Z

    move-result v12

    const-string v13, "channelname"

    const-string v14, "channelid"

    const-string v15, "web_url"

    const-string v6, "header_margin"

    if-eqz v12, :cond_7

    iput-boolean v3, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsTiktokVisible:Z

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    sget v11, Lcom/transsion/onlinevideo/R$string;->visha_tiktok:I

    invoke-virtual {v0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_5
    aput-object v11, v4, v8

    new-instance v11, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    invoke-direct {v11}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;-><init>()V

    iget-object v12, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v11, v12}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v12, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getTtPage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcja;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getTtPage()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v12, v15, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v12, v14, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v13, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v6, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarCallback:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    invoke-virtual {v11, v6}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->r1(Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;)V

    iget-boolean v6, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    invoke-virtual {v11, v6}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->setParentVisible(Z)V

    iget-object v6, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isH5Channel()Z

    move-result v12

    if-eqz v12, :cond_8

    iput-boolean v3, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsH5Visible:Z

    aput-object v11, v4, v8

    new-instance v11, Lcom/transsion/onlinevideo/h5/H5WebFragment;

    invoke-direct {v11}, Lcom/transsion/onlinevideo/h5/H5WebFragment;-><init>()V

    iget-object v12, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v11, v12}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v12, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getH5Page()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v15, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v12, v14, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v13, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v6, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarCallback:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    invoke-virtual {v11, v6}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->f0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;)V

    iget-object v6, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    aput-object v11, v4, v8

    if-nez v8, :cond_9

    move v6, v3

    goto :goto_2

    :cond_9
    move v6, v7

    :goto_2
    invoke-static {v10, v6, v5}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m1(Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;ZI)Lcom/transsion/onlinevideo/channel/ChannelFragment;

    move-result-object v6

    iget-object v10, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v6, v10}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v6

    check-cast v6, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-object v10, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarCallback:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    invoke-virtual {v6, v10}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q1(Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;)V

    iget-boolean v10, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    invoke-virtual {v6, v10}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->setParentVisible(Z)V

    iget-object v10, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_a
    new-instance v5, Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    iget-object v8, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-direct {v5, v6, v8, v4}, Lcom/transsion/playercommon/adapter/RtlPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/String;)V

    iput-object v5, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mAdapter:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    iget-object v4, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    iget-object v5, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v4, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v4, v3}, Lcom/transsion/widgets/RtlViewPager;->setCanScroll(Z)V

    iget-object v3, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    iget-object v4, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mAdapter:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual {v3, v4}, Lcom/transsion/widgets/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFragments defaultPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v9, :cond_b

    iget-object v3, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v9, v3, :cond_c

    :cond_b
    move v9, v7

    :cond_c
    iget-object v3, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    new-instance v4, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;

    invoke-direct {v4, v0, v1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$b;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/transsion/widgets/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v3, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v3, v9, v7}, Lcom/transsion/widgets/RtlViewPager;->setCurrentItem(IZ)V

    if-nez v9, :cond_d

    invoke-direct {v0, v9, v1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->handleChannelPageSelected(ILjava/util/List;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OTT]initFragments channels.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v4}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mCurrentTabIsSelected:Z

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->onSelectInViewPage()V

    :cond_e
    return-void

    :cond_f
    :goto_4
    iput-boolean v3, v0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mIsInitFragmentAndChannelNull:Z

    const-string v0, "initFragments failed, channels is null or size == 0"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public initTitle()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarLayout:Landroid/view/View;

    new-instance v1, Lkg7;

    invoke-direct {v1}, Lkg7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTabLayout:Lcom/transsion/widgets/CustomTabLayout;

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTabLayout:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$dimen;->online_video_selected_tab_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->setTabTextSize(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTabLayout:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$dimen;->online_video_unselected_tab_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->setUnselectedTabTextSize(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTabLayout:Lcom/transsion/widgets/CustomTabLayout;

    new-instance v1, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$c;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public markBottomTabPageShow()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->markBottomTabPageShow()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    invoke-static {v0}, Lc06;->d(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->onPageRealShowDelayOneSecond()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->onPageRealShowDelayThreeSecond()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v1}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v1}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->onBackPressed()Z

    move-result p0

    return p0

    :cond_0
    instance-of v1, v0, Lcom/transsion/onlinevideo/h5/H5WebFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/onlinevideo/h5/H5WebFragment;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->onBackPressed()Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/onlinevideo/R$id;->user_content:I

    if-ne p1, v0, :cond_4

    const-string p1, "vd_ott_pf_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    sget-boolean v0, Lpp3;->L:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lkfc;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1, p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->S0(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lkfc;->i()Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;

    move-result-object p1

    const-string v0, "page"

    const-string v1, "status_0"

    const-string v2, "VIP"

    const-string v3, "vd_ott_vip_btn_cl"

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5, v2, v3}, Lcom/transsion/onlinevideo/web/VipWebActivity;->I0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v2, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean$VipInfoVosBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p0, v0, p1}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v4, 0x1

    invoke-static {p1, v4, v2, v3}, Lcom/transsion/onlinevideo/web/VipWebActivity;->I0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Mango VIP"

    invoke-static {v3, v1, p0, v0, p1}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->C(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0, p1}, Lcom/transsion/palmsdk/b;->h(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_history:I

    const-string v1, "vd_ott_history_cl"

    if-ne p1, v0, :cond_5

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    invoke-static {v1}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_collect:I

    const/16 v2, 0x8

    if-ne p1, v0, :cond_6

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {p1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    invoke-static {v1}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_search:I

    if-ne p1, v0, :cond_7

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.transsion.onlinevideo.search.OnlineVideoSearchActivity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1, v0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const-string p1, "vd_ott_search_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "online_search_red_spot"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSearchRedSpot:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object p1

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->e(Z)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->g()V

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$attr;->OsBgPrimary:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mColorRes:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget p3, Lcom/transsion/onlinevideo/R$layout;->online_home_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->restoreHostStatusBarAppearance()V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->updateIfOSLogin()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    sget-object v1, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->changeUserImage(ZLcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    :cond_0
    invoke-static {}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->c()Lcom/transsion/onlinevideo/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->f(Landroid/content/Context;IILli9;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mForceUpdateBarShow:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mCurrentTabIsSelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarShow:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->changeNavStatusBarColor(ZZ)V

    :cond_1
    return-void
.end method

.method public onSelectInViewPage()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mCurrentTabIsSelected:Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    instance-of v3, v2, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v2, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarShow:Z

    invoke-direct {p0, v1, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->changeNavStatusBarColor(ZZ)V

    :cond_2
    return-void
.end method

.method public onUnSelectInViewPage()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mCurrentTabIsSelected:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->restoreHostStatusBarAppearance()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lpp3;->g(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lpp3;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_visha_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVishaLogo:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tab_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTabLayout:Lcom/transsion/widgets/CustomTabLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->vp_channels:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/RtlViewPager;

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_user_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mLoginUserImage:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_user_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mNotLoginUserLogo:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mHistory:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_collect:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mCollect:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSearch:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_top_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarLayout:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->top_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTopBarContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->applyTopBarStatusBarInset(Landroid/view/View;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_tab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTabContainer:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_user_image_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mLoginUserDefaultImage:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->user_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mUserContent:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->v_red_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSearchRedSpot:Landroid/view/View;

    invoke-static {}, Lydc;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "online_search_red_spot"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mUserContent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mHistory:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->initTitle()V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getOttChannelsBean()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->initFragments(Ljava/util/List;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/transsion/onlinevideo/web/OrderManager;->b(Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->configPlayer()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->vipLogoAnimate()V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    new-instance p2, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, p0, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p2, Lcom/transsion/onlinevideo/promotion/PromotionModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/onlinevideo/promotion/PromotionModel;

    iput-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mPromotionModel:Lcom/transsion/onlinevideo/promotion/PromotionModel;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/promotion/PromotionModel;->getLoadStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lmg7;

    invoke-direct {v0, p0}, Lmg7;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mPromotionModel:Lcom/transsion/onlinevideo/promotion/PromotionModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/promotion/PromotionModel;->a()V

    sput-boolean v1, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->bTopBarChanged:Z

    return-void
.end method

.method public peekConsumeBack()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v1}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {p0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    instance-of v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->peekConsumeBack()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public privacyPermissionCheck()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

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

    instance-of v1, v0, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->privacyPermissionCheck()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->refresh()V

    :cond_0
    return-void
.end method

.method public registerPalmIdListeners()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->registerPalmIdListeners()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x433

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x459

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x45a

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x466

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x47f

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->G()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->H()V

    return-void
.end method

.method public releaseWhenDestroyView()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->releaseWhenDestroyView()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    instance-of v3, v2, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTabLayout:Lcom/transsion/widgets/CustomTabLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_4
    iput-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mAdapter:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mSilentAuthScheduled:Z

    :cond_5
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->scrollToTop()V

    :cond_0
    return-void
.end method

.method public setHiddenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setHiddenChanged(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

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

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setUserVisibleHint(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mFragments:Ljava/util/List;

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

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public showGuide()V
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgets/RelativeGuide;

    sget v1, Lcom/transsion/onlinevideo/R$layout;->guide_for_online_tab:I

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/RelativeGuide;-><init>(II)V

    new-instance v1, Leg7;

    invoke-direct {v1}, Leg7;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RelativeGuide;->setOnLayoutInflatedListener(Ldf7;)V

    new-instance v1, Lcom/app/hubert/guide/model/b$a;

    invoke-direct {v1}, Lcom/app/hubert/guide/model/b$a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/app/hubert/guide/model/b$a;->c(Lsr8;)Lcom/app/hubert/guide/model/b$a;

    move-result-object v0

    new-instance v1, Lfg7;

    invoke-direct {v1, p0}, Lfg7;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/model/b$a;->b(Lte7;)Lcom/app/hubert/guide/model/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/hubert/guide/model/b$a;->a()Lcom/app/hubert/guide/model/b;

    move-result-object v0

    invoke-static {}, Lcom/app/hubert/guide/model/a;->l()Lcom/app/hubert/guide/model/a;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mTabContainer:Landroid/view/View;

    sget-object v3, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    invoke-virtual {v1, v2, v3, v0}, Lcom/app/hubert/guide/model/a;->b(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/b;)Lcom/app/hubert/guide/model/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$color;->color_guide_bg:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/model/a;->m(I)Lcom/app/hubert/guide/model/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/model/a;->n(Z)Lcom/app/hubert/guide/model/a;

    move-result-object v0

    new-instance v4, Lcom/transsion/widgets/RelativeGuide;

    sget v5, Lcom/transsion/onlinevideo/R$layout;->guide_for_online_history:I

    const v6, 0x800003

    invoke-direct {v4, v5, v6}, Lcom/transsion/widgets/RelativeGuide;-><init>(II)V

    new-instance v5, Lgg7;

    invoke-direct {v5}, Lgg7;-><init>()V

    invoke-virtual {v4, v5}, Lcom/transsion/widgets/RelativeGuide;->setOnLayoutInflatedListener(Ldf7;)V

    new-instance v5, Lcom/app/hubert/guide/model/b$a;

    invoke-direct {v5}, Lcom/app/hubert/guide/model/b$a;-><init>()V

    invoke-virtual {v5, v4}, Lcom/app/hubert/guide/model/b$a;->c(Lsr8;)Lcom/app/hubert/guide/model/b$a;

    move-result-object v4

    new-instance v5, Lhg7;

    invoke-direct {v5, p0}, Lhg7;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V

    invoke-virtual {v4, v5}, Lcom/app/hubert/guide/model/b$a;->b(Lte7;)Lcom/app/hubert/guide/model/b$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/app/hubert/guide/model/b$a;->a()Lcom/app/hubert/guide/model/b;

    move-result-object v4

    invoke-static {}, Lcom/app/hubert/guide/model/a;->l()Lcom/app/hubert/guide/model/a;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mHistory:Landroid/widget/ImageView;

    sget-object v7, Lcom/app/hubert/guide/model/HighLight$Shape;->CIRCLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    invoke-virtual {v5, v6, v7, v4}, Lcom/app/hubert/guide/model/a;->b(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/b;)Lcom/app/hubert/guide/model/a;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/app/hubert/guide/model/a;->m(I)Lcom/app/hubert/guide/model/a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/app/hubert/guide/model/a;->n(Z)Lcom/app/hubert/guide/model/a;

    move-result-object v5

    invoke-static {}, Lcom/app/hubert/guide/model/a;->l()Lcom/app/hubert/guide/model/a;

    move-result-object v6

    iget-object v8, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mCollect:Landroid/widget/ImageView;

    invoke-virtual {v6, v8, v7, v4}, Lcom/app/hubert/guide/model/a;->b(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/b;)Lcom/app/hubert/guide/model/a;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/app/hubert/guide/model/a;->m(I)Lcom/app/hubert/guide/model/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/app/hubert/guide/model/a;->n(Z)Lcom/app/hubert/guide/model/a;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mController:Lcom/app/hubert/guide/core/Controller;

    if-nez v3, :cond_1

    invoke-static {p0}, Lv07;->a(Landroidx/fragment/app/Fragment;)Lbl0;

    move-result-object v3

    const-string v4, "guide_online_tab"

    invoke-virtual {v3, v4}, Lbl0;->e(Ljava/lang/String;)Lbl0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lbl0;->b(Z)Lbl0;

    move-result-object v1

    new-instance v3, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$d;

    invoke-direct {v3, p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$d;-><init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V

    invoke-virtual {v1, v3}, Lbl0;->f(Lse7;)Lbl0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbl0;->a(Lcom/app/hubert/guide/model/a;)Lbl0;

    move-result-object v0

    invoke-virtual {v0, v5}, Lbl0;->a(Lcom/app/hubert/guide/model/a;)Lbl0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbl0;->a(Lcom/app/hubert/guide/model/a;)Lbl0;

    move-result-object v0

    invoke-virtual {v0}, Lbl0;->c()Lcom/app/hubert/guide/core/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mController:Lcom/app/hubert/guide/core/Controller;

    invoke-virtual {v0}, Lcom/app/hubert/guide/core/Controller;->n()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mController:Lcom/app/hubert/guide/core/Controller;

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/Controller;->k()Z

    move-result p0

    sput-boolean p0, Lcom/transsion/playercommon/core/MainApp;->n:Z

    return-void
.end method

.method public showSelectedTab(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSelectedTab(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->mVpChannels:Lcom/transsion/widgets/RtlViewPager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/RtlViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public unRegisterPalmIdListeners()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->unRegisterPalmIdListeners()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x433

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x459

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x45a

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x466

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x47f

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->L()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->M()V

    return-void
.end method
