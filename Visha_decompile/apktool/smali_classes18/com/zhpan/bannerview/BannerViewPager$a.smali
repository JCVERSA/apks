.class public Lcom/zhpan/bannerview/BannerViewPager$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhpan/bannerview/BannerViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/zhpan/bannerview/BannerViewPager;


# direct methods
.method public constructor <init>(Lcom/zhpan/bannerview/BannerViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager$a;->d:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager$a;->d:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-static {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->f(Lcom/zhpan/bannerview/BannerViewPager;I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager$a;->d:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-static {p0, p1, p2, p3}, Lcom/zhpan/bannerview/BannerViewPager;->d(Lcom/zhpan/bannerview/BannerViewPager;IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager$a;->d:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-static {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->e(Lcom/zhpan/bannerview/BannerViewPager;I)V

    return-void
.end method
