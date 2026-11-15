.class public abstract Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/items/DivViewWithItemsKt$a;
    }
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div/core/view2/items/Direction;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->i(Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div/core/view2/items/Direction;)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->j(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public static final synthetic c(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->l(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public static final synthetic d(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->m(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public static final synthetic e(Landroidx/recyclerview/widget/RecyclerView;ILcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->n(Landroidx/recyclerview/widget/RecyclerView;ILcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;Z)V

    return-void
.end method

.method public static final synthetic f(Landroidx/recyclerview/widget/RecyclerView;Landroid/util/DisplayMetrics;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->o(Landroidx/recyclerview/widget/RecyclerView;Landroid/util/DisplayMetrics;Z)V

    return-void
.end method

.method public static final g(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 3

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->k(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public static final h(Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div/core/view2/items/Direction;)I
    .locals 2

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->k(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-object v1, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->g(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final i(Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div/core/view2/items/Direction;)I
    .locals 3

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->h(Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div/core/view2/items/Direction;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->k(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->p(Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/yandex/div/core/view2/items/Direction;)I

    move-result v2

    :cond_2
    move p0, v2

    :goto_1
    return p0
.end method

.method public static final j(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final k(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final l(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->k(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    :goto_2
    return p0
.end method

.method public static final m(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 2

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->k(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    :goto_1
    add-int/2addr v0, p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    goto :goto_1

    :goto_3
    return v0
.end method

.method public static final n(Landroidx/recyclerview/widget/RecyclerView;ILcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;Z)V
    .locals 2

    sget-object v0, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->t0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p1

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->k(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-eqz p4, :cond_4

    new-instance p3, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt$scrollTo$scroll$1;

    invoke-direct {p3, p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt$scrollTo$scroll$1;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance p3, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt$scrollTo$scroll$2;

    invoke-direct {p3, p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt$scrollTo$scroll$2;-><init>(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p2, p0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public static final o(Landroidx/recyclerview/widget/RecyclerView;Landroid/util/DisplayMetrics;Z)V
    .locals 2

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->m(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->PX:Lcom/yandex/div2/DivSizeUnit;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->n(Landroidx/recyclerview/widget/RecyclerView;ILcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;Z)V

    return-void
.end method

.method public static final p(Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/yandex/div/core/view2/items/Direction;)I
    .locals 1

    sget-object v0, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    :goto_0
    return p0
.end method
