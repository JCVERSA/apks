.class public Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->initBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-static {p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->e(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-static {p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->e(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->getCurrentItem()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;->a(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->start(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->start(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-static {v2}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->d(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-static {v2}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->d(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-static {v1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->d(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    iput-boolean v3, v1, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->h:Z

    invoke-static {v1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->c(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setAutoPlay(Z)Lcom/zhpan/bannerview/BannerViewPager;

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-static {v0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->f(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getBannerBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$a;->d:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-static {p0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->f(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;)Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p0, "vd_ott_banner_show"

    invoke-static {v0, p1, v1, v2, p0}, Lc06;->f(IIJLjava/lang/String;)V

    return-void
.end method
