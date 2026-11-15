.class public final Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

.field public final b:I

.field public final c:F

.field public final d:Lex3;

.field public final e:Lsn2;

.field public final f:Z

.field public final g:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;IFLex3;Lsn2;ZLcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageSizeProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paddings"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    iput p2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->b:I

    iput p3, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->c:F

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->d:Lex3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->e:Lsn2;

    iput-boolean p6, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->f:Z

    iput-object p7, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->g:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->c()V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;)Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->g:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;)Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->d:Lex3;

    invoke-interface {v0}, Lex3;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget v1, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->d:Lex3;

    invoke-interface {v2}, Lex3;->a()F

    move-result v2

    iget v3, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->c:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v2}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    :cond_1
    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->d:Lex3;

    invoke-interface {v2}, Lex3;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    int-to-float p0, v3

    sub-float/2addr v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p0, v1

    float-to-int p0, p0

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->d:Lex3;

    invoke-interface {v1}, Lex3;->b()F

    move-result v1

    iget v2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->c:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->f:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->e:Lsn2;

    invoke-virtual {v2}, Lsn2;->i()F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->e:Lsn2;

    invoke-virtual {v2}, Lsn2;->f()F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_5

    :cond_4
    new-instance v1, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$setOffScreenPages$1;

    invoke-direct {v1, p0}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$setOffScreenPages$1;-><init>(Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;->a:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    new-instance v0, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$1;

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController$setOffScreenPages$1;-><init>(Le74;)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setChangePageCallbackForOffScreenPages$div_release(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;)V

    return-void

    :cond_5
    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method
