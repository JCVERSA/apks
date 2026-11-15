.class public final Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u000c\u001a\u00020\u0002*\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "com/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1",
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
        "a",
        "(I)I",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic d:Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;->d:Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;->d:Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->access$getDivPager$p(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    :cond_1
    if-nez v0, :cond_2

    return p1

    :cond_2
    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->getRealPosition(I)I

    move-result p1

    add-int/2addr p1, p0

    rem-int/2addr p1, p0

    return p1
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    iget-object p3, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;->d:Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;

    invoke-static {p3}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->access$getStripDrawer$p(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;->d:Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_0

    :goto_0
    move p2, v1

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;->a(I)I

    move-result p0

    invoke-virtual {p3, p0, p2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->n(IF)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;->d:Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->access$getStripDrawer$p(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;->d:Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;->a(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->o(I)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
