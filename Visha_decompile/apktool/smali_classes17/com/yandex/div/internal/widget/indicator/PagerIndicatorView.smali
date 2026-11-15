.class public Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0013\u0010\u001c\u001a\u00020\u000c*\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010!R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lsz4;",
        "style",
        "Lzfb;",
        "setStyle",
        "(Lsz4;)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;",
        "newDivPager",
        "attachPager",
        "(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V",
        "Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;",
        "c",
        "(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)V",
        "b",
        "Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;",
        "stripDrawer",
        "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;",
        "divPager",
        "d",
        "Lsz4;",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "e",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageChangeListener",
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
.field public b:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

.field public c:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

.field public d:Lsz4;

.field public final e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;

    invoke-direct {p1, p0}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView$onPageChangeListener$1;-><init>(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->b(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)V

    return-void
.end method

.method public static final synthetic access$getDivPager$p(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->c:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    return-object p0
.end method

.method public static final synthetic access$getStripDrawer$p(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->b:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    return-object p0
.end method

.method public static final b(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->b:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->c(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final attachPager(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V
    .locals 2

    const-string v0, "newDivPager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->c:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->removeChangePageCallbackForIndicators(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->e:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addChangePageCallbackForIndicators(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->c:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->c:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->b:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->c(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)V

    :cond_2
    new-instance v0, Lyv7;

    invoke-direct {v0, p0}, Lyv7;-><init>(Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;)V

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setPagerOnItemsCountChange$div_release(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attached pager adapter is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->c:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->p(I)V

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->B()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->o(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->b:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->m(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->d:Lsz4;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c;->d()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b;->a()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_2

    move p2, v1

    goto :goto_1

    :cond_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->d:Lsz4;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c;->d()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->d:Lsz4;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lsz4;->d()Lcom/yandex/div/internal/widget/indicator/a;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    instance-of v5, v1, Lcom/yandex/div/internal/widget/indicator/a$a;

    if-eqz v5, :cond_6

    check-cast v1, Lcom/yandex/div/internal/widget/indicator/a$a;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/a$a;->a()F

    move-result v1

    iget-object v5, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->c:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    int-to-float v5, v5

    mul-float/2addr v1, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    goto :goto_5

    :cond_6
    instance-of v5, v1, Lcom/yandex/div/internal/widget/indicator/a$b;

    if-eqz v5, :cond_7

    move v1, p1

    goto :goto_5

    :cond_7
    if-nez v1, :cond_b

    float-to-int v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    goto :goto_4

    :goto_5
    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_9

    move p1, v1

    goto :goto_6

    :cond_8
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_9
    :goto_6
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->b:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->k(II)V

    :cond_a
    return-void

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final setStyle(Lsz4;)V
    .locals 3

    const-string v0, "style"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->d:Lsz4;

    new-instance v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {p1}, Len9;->a(Lsz4;)Ldn9;

    move-result-object v1

    invoke-static {p1}, Lqz4;->a(Lsz4;)Lpz4;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;-><init>(Lsz4;Ldn9;Lpz4;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->k(II)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->c(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->b:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
