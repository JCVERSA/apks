.class public final Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$mOnPageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "com/transsion/playercommon/widgets/banner/BannerViewPagerSelf$mOnPageChangeCallback$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "Lzfb;",
        "onPageScrolled",
        "(IFI)V",
        "onPageSelected",
        "(I)V",
        "state",
        "onPageScrollStateChanged",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$mOnPageChangeCallback$1;->d:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$mOnPageChangeCallback$1;->d:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->access$pageScrollStateChanged(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$mOnPageChangeCallback$1;->d:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->access$pageScrolled(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$mOnPageChangeCallback$1;->d:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->access$pageSelected(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;I)V

    return-void
.end method
