.class public Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public final synthetic c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->b:F

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {v0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->b(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    iget-object v1, v0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    :cond_1
    float-to-double p2, p2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double p2, p2, v0

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-lez p2, :cond_2

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, v0, p3, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1, p3, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a(I)I

    move-result p1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {v0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->b(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->b:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->b:F

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method
