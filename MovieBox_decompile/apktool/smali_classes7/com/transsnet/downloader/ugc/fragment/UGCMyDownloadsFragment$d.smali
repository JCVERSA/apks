.class public final Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$d;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbx/r0;

.field final synthetic b:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;


# direct methods
.method constructor <init>(Lbx/r0;Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$d;->a:Lbx/r0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$d;->b:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$d;->a:Lbx/r0;

    .line 5
    .line 6
    iget-object v0, v0, Lbx/r0;->b:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$d;->a:Lbx/r0;

    .line 5
    .line 6
    iget-object v0, v0, Lbx/r0;->b:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$d;->a:Lbx/r0;

    .line 5
    .line 6
    iget-object v0, v0, Lbx/r0;->b:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$d;->b:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->e0(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;I)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$d;->b:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->c0(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "onPageSelected: "

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v5, 0x4

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
