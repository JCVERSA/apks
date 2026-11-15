.class public final Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001c\u001a\u00020\u0002*\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u001bR\u0018\u0010\u001d\u001a\u00020\u0002*\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u001bR\u0018\u0010\u001f\u001a\u00020\u0002*\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001b\u00a8\u0006 "
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "",
        "parentSize",
        "Lsn2;",
        "paddings",
        "Lcom/yandex/div2/DivPager$ItemAlignment;",
        "alignment",
        "<init>",
        "(ILsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V",
        "Landroid/graphics/Rect;",
        "outRect",
        "Landroid/view/View;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "Lzfb;",
        "getItemOffsets",
        "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "b",
        "I",
        "c",
        "Lsn2;",
        "d",
        "Lcom/yandex/div2/DivPager$ItemAlignment;",
        "(Landroid/view/View;)I",
        "horizontalOffset",
        "topOffset",
        "a",
        "bottomOffset",
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
.field public final b:I

.field public final c:Lsn2;

.field public final d:Lcom/yandex/div2/DivPager$ItemAlignment;


# direct methods
.method public constructor <init>(ILsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V
    .locals 1

    const-string v0, "paddings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->b:I

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->d:Lcom/yandex/div2/DivPager$ItemAlignment;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->d:Lcom/yandex/div2/DivPager$ItemAlignment;

    sget-object v1, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {p0}, Lsn2;->f()F

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->b:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {p0}, Lsn2;->i()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float p0, v0, p0

    :goto_0
    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    return p0
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->d:Lcom/yandex/div2/DivPager$ItemAlignment;

    sget-object v1, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->b:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {p0}, Lsn2;->f()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    sub-float/2addr v0, p0

    goto :goto_1

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float v0, p0, p1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->b:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {p0}, Lsn2;->i()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Ls86;->c(F)I

    move-result p0

    return p0
.end method

.method public final c(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->d:Lcom/yandex/div2/DivPager$ItemAlignment;

    sget-object v1, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->b:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {p0}, Lsn2;->f()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float v0, p0, p1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {p0}, Lsn2;->i()F

    move-result v0

    :goto_0
    invoke-static {v0}, Ls86;->c(F)I

    move-result p0

    return p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    const-string v0, "outRect"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {v0}, Lsn2;->g()F

    move-result v1

    invoke-virtual {v0}, Lsn2;->h()F

    move-result v0

    add-float/2addr v1, v0

    invoke-static {v1}, Ls86;->c(F)I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {v0}, Lsn2;->j()F

    move-result v1

    invoke-virtual {v0}, Lsn2;->e()F

    move-result v0

    add-float/2addr v1, v0

    invoke-static {v1}, Ls86;->c(F)I

    move-result v0

    sub-int/2addr p3, v0

    invoke-static {p4}, Lodc;->h(I)I

    move-result p4

    invoke-static {p3}, Lodc;->h(I)I

    move-result p3

    invoke-virtual {p2, p4, p3}, Landroid/view/View;->measure(II)V

    instance-of p3, p2, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/yandex/div/core/widget/DivViewWrapper;->getChild()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_5

    :cond_1
    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {p3}, Lsn2;->b()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->b(Landroid/view/View;)I

    move-result p3

    :goto_1
    iget-object p4, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {p4}, Lsn2;->d()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c(Landroid/view/View;)I

    move-result p4

    :goto_2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {v0}, Lsn2;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->b(Landroid/view/View;)I

    move-result v0

    :goto_3
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->c:Lsn2;

    invoke-virtual {v1}, Lsn2;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_4

    :cond_5
    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;->a(Landroid/view/View;)I

    move-result p0

    :goto_4
    invoke-virtual {p1, p3, p4, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_6
    :goto_5
    return-void
.end method
