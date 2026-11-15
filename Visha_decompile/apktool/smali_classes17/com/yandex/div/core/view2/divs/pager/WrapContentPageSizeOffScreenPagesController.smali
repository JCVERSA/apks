.class public final Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

.field public final b:F

.field public final c:Lun2;

.field public final d:Lsn2;

.field public final e:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;FLun2;Lsn2;Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageSizeProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paddings"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    iput p2, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->b:F

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->c:Lun2;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->d:Lsn2;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->e:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    const/4 p2, 0x1

    iput p2, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->f:I

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->b()I

    move-result p2

    iput p2, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->f:I

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->d(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    new-instance p2, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController$1;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController$1;-><init>(Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;)V

    invoke-virtual {p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setChangePageCallbackForOffScreenPages$div_release(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->e()V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 8

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->c:Lun2;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getCurrentItem$div_release()I

    move-result v1

    invoke-virtual {v0, v1}, Lun2;->g(I)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getCurrentItem$div_release()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-lez v6, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->c(I)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v0, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->d:Lsn2;

    invoke-virtual {v6}, Lsn2;->i()F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    if-nez v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->c(I)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    sub-float/2addr v0, v6

    :cond_2
    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->c:Lun2;

    iget-object v7, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v7}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getCurrentItem$div_release()I

    move-result v7

    invoke-virtual {v6, v7}, Lun2;->f(I)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->d:Lsn2;

    invoke-virtual {v7}, Lsn2;->i()F

    move-result v7

    cmpl-float v7, v0, v7

    if-lez v7, :cond_3

    add-float/2addr v6, v0

    :cond_3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getCurrentItem$div_release()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    cmpl-float v7, v6, v5

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->e:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {v7}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v1

    if-ge v0, v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->c(I)Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->d:Lsn2;

    invoke-virtual {v7}, Lsn2;->f()F

    move-result v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->e:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {v7}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v1

    if-ne v0, v7, :cond_6

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->c(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    sub-float/2addr v6, v0

    :cond_6
    :goto_4
    cmpl-float v0, v6, v5

    if-lez v0, :cond_7

    if-ltz v2, :cond_7

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->c(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v6, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_7
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v1}, Lwn8;->d(II)I

    move-result p0

    return p0

    :cond_8
    invoke-static {v4, v1}, Lwn8;->d(II)I

    move-result p0

    return p0

    :cond_9
    return v1
.end method

.method public final c(I)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->c:Lun2;

    invoke-virtual {v0, p1}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->b:F

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->f:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->f:I

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->b()I

    move-result v0

    iget v1, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->f:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->f:I

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;->d(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    return-void
.end method
