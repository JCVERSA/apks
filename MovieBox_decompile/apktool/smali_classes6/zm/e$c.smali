.class public final Lzm/e$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm/e;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzm/e;


# direct methods
.method constructor <init>(Lzm/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm/e$c;->a:Lzm/e;

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
    iget-object v0, p0, Lzm/e$c;->a:Lzm/e;

    .line 5
    .line 6
    invoke-static {v0}, Lzm/e;->e(Lzm/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    .line 13
    .line 14
    .line 15
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
    iget-object v0, p0, Lzm/e$c;->a:Lzm/e;

    .line 5
    .line 6
    invoke-static {v0}, Lzm/e;->e(Lzm/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

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
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lzm/e$c;->a:Lzm/e;

    .line 5
    .line 6
    invoke-static {v0}, Lzm/e;->f(Lzm/e;)Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lzm/e$c;->a:Lzm/e;

    .line 20
    .line 21
    invoke-static {v0}, Lzm/e;->e(Lzm/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lzm/e$c;->a:Lzm/e;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lzm/e;->m(Lzm/e;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
