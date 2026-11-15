.class public Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public final synthetic c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->b:F

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->h(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    iget-object v1, v0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    :cond_1
    float-to-double p2, p2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double p2, p2, v0

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-lez p2, :cond_2

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, v0, p3, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1, p3, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-static {v1}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-static {v1}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v1, v2}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->h(Landroid/view/View;)V

    :cond_0
    iget v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->b:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iput v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->b:F

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    iget-object v1, v1, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;->c:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-static {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->a(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->g(I)V

    :cond_2
    return-void
.end method
