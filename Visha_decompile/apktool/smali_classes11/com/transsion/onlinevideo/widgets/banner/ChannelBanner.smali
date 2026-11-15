.class public Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;
    }
.end annotation


# instance fields
.field public b:Lcom/zhpan/bannerview/BannerViewPager;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/content/Context;

.field public e:Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;

.field public f:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

.field public g:Landroid/widget/ImageView;

.field public h:Z

.field public i:Z

.field public j:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;

.field public k:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->i:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->h(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->g(Landroid/view/View;I)V

    return-void
.end method

.method public static bannerClick(Landroid/content/Context;Lcom/transsion/dbdata/beans/appconfig/BannerBean;ILcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 9

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getType()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    const-string p1, "VIP"

    const-string p2, "vd_ott_vip_banner_cl"

    const/4 p3, 0x1

    invoke-static {p0, p3, p1, p2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->I0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    const-string v1, "vd_ott_banner_cl"

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setFrom_card(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setType(I)V

    :cond_1
    invoke-static {p2, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_id()J

    move-result-wide v0

    long-to-int p2, v0

    :goto_0
    move-object v6, p0

    move v7, p2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTopicId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getBannerId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    const-string v4, "banner"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ld06;->h(JJLjava/lang/String;I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getBannerId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getSort()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v8, "vd_ott_banner_cl"

    invoke-static/range {v0 .. v8}, Lc06;->g(IIJJLjava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/transsion/playercommon/router/RouterUtils;->routeDefaultTarget(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->c:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->k:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->f:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    return-object p0
.end method


# virtual methods
.method public final synthetic g(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->j:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;

    invoke-interface {p1, p0, p2}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;->b(Lcom/transsion/dbdata/beans/appconfig/BannerBean;I)V

    :cond_0
    return-void
.end method

.method public getCurrentItem()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 5

    const-string v0, "BannerView"

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    const-string v3, "getCurrentView"

    if-nez v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    :goto_0
    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public final synthetic h(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->i:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->i:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->i:Z

    invoke-virtual {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    return-void
.end method

.method public initBanner()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    new-instance v1, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;-><init>(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)V

    invoke-virtual {v0, v1}, Lcom/zhpan/bannerview/BannerViewPager;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/zhpan/bannerview/BannerViewPager;

    return-void
.end method

.method public initDots(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/appconfig/BannerBean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/transsion/onlinevideo/R$drawable;->banner_dot_image:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/onlinevideo/R$dimen;->download_guide_page_dot_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/onlinevideo/R$dimen;->download_guide_page_dot_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_1
    iget-object v4, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->d:Landroid/content/Context;

    sget v0, Lcom/transsion/onlinevideo/R$layout;->channel_banner:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$id;->banner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhpan/bannerview/BannerViewPager;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    sget v0, Lcom/transsion/onlinevideo/R$id;->banner_dots:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->c:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->live_mute:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->g:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->initBanner()V

    return-void
.end method

.method public isMute()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->i:Z

    return p0
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->onDestroy()V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    return-void
.end method

.method public setData(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->f:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->e:Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->e:Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setAdapter(Lcom/zhpan/bannerview/BaseBannerAdapter;)Lcom/zhpan/bannerview/BannerViewPager;

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    new-instance v1, Lss0;

    invoke-direct {v1, p0}, Lss0;-><init>(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)V

    invoke-virtual {v0, v1}, Lcom/zhpan/bannerview/BannerViewPager;->setOnPageClickListener(Lcom/zhpan/bannerview/BannerViewPager$b;)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getBannerBeanList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhpan/bannerview/BannerViewPager;->create(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getBannerBeanList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhpan/bannerview/BannerViewPager;->refreshData(Ljava/util/List;)V

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getBannerBeanList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->initDots(Ljava/util/List;)V

    return-void
.end method

.method public setListener(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->j:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;

    return-void
.end method

.method public setListener2(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->k:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->i:Z

    return-void
.end method

.method public showMuteButton(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->showMuteButton(ZZ)V

    return-void
.end method

.method public showMuteButton(ZZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->g:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->i:Z

    invoke-virtual {p2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->g:Landroid/widget/ImageView;

    new-instance p2, Lrs0;

    invoke-direct {p2, p0}, Lrs0;-><init>(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public start(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {p0, v1}, Lcom/zhpan/bannerview/BannerViewPager;->setAutoPlay(Z)Lcom/zhpan/bannerview/BannerViewPager;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setAutoPlay(Z)Lcom/zhpan/bannerview/BannerViewPager;

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {p1}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->f:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getBannerBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/appconfig/BannerBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getBannerId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getSort()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->f:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p0, "vd_ott_banner_show"

    invoke-static {v0, p1, v1, v2, p0}, Lc06;->f(IIJLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {p1, v1}, Lcom/zhpan/bannerview/BannerViewPager;->setAutoPlay(Z)Lcom/zhpan/bannerview/BannerViewPager;

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->b:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    :goto_0
    return-void
.end method
