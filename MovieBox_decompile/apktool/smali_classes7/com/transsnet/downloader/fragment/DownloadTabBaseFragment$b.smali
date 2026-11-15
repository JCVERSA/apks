.class public final Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->s0(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->r0()Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->r0()Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->r0()Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->y0(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->t0(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->l0()Lcom/transsnet/downloader/widget/FileManagerTabTitleView;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;->setDotVisibility(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
