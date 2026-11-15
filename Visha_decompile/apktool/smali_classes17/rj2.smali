.class public interface abstract Lrj2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrj2$a;,
        Lrj2$b;
    }
.end annotation


# static fields
.field public static final B1:Lrj2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lrj2$a;->a:Lrj2$a;

    sput-object v0, Lrj2;->B1:Lrj2$a;

    return-void
.end method

.method public static synthetic a(Lrj2;ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;IILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;->DEFAULT:Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lrj2;->instantScroll(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: instantScroll"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lrj2;Landroid/view/View;)I
    .locals 0

    invoke-interface {p0, p1}, Lrj2;->d(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lrj2;)Z
    .locals 0

    invoke-direct {p0}, Lrj2;->isHorizontal()Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lrj2;Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lrj2;->trackVisibilityAction(Landroid/view/View;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: trackVisibilityAction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic f(Lrj2;Landroid/view/View;IIIIZILjava/lang/Object;)V
    .locals 7

    if-nez p8, :cond_1

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lrj2;->_layoutDecoratedWithMargins(Landroid/view/View;IIIIZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: _layoutDecoratedWithMargins"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isHorizontal()Z
    .locals 0

    invoke-interface {p0}, Lrj2;->getLayoutManagerOrientation()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public _detachView(Landroid/view/View;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lrj2;->trackVisibilityAction(Landroid/view/View;Z)V

    return-void
.end method

.method public _detachViewAt(I)V
    .locals 1

    invoke-interface {p0, p1}, Lrj2;->_getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lrj2;->trackVisibilityAction(Landroid/view/View;Z)V

    return-void
.end method

.method public abstract _getChildAt(I)Landroid/view/View;
.end method

.method public abstract _getPosition(Landroid/view/View;)I
.end method

.method public _layoutDecorated(Landroid/view/View;IIII)V
    .locals 0

    const-string p2, "child"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-static {p0, p1, p4, p2, p3}, Lrj2;->e(Lrj2;Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method public _layoutDecoratedWithMargins(Landroid/view/View;IIIIZ)V
    .locals 12

    move-object v6, p0

    move-object v7, p1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lrj2;->getLayoutManagerOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_1
    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    :goto_0
    sget v2, Lcom/yandex/div/R$id;->div_gallery_item_index:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Lrj2;->getItemDiv(I)Lzl2;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v8

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v8

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lzl2;->d()Loj3;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    invoke-interface {p0}, Lrj2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    :cond_6
    invoke-interface {p0}, Lrj2;->getDiv()Lcom/yandex/div2/DivGallery;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivGallery;->j:Lcom/yandex/div/json/expressions/Expression;

    const/4 v9, 0x0

    if-ne v0, v1, :cond_a

    if-eqz v3, :cond_7

    invoke-interface {v3}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Lcom/yandex/div2/DivAlignmentHorizontal;

    sget-object v5, Lrj2;->B1:Lrj2$a;

    invoke-static {v5, v1}, Lrj2$a;->a(Lrj2$a;Lcom/yandex/div2/DivAlignmentHorizontal;)Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    :cond_9
    sget-object v5, Lrj2;->B1:Lrj2$a;

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int v11, p4, p2

    invoke-static {v5, v10, v11, v1}, Lrj2$a;->c(Lrj2$a;IILcom/yandex/div2/DivGallery$CrossContentAlignment;)I

    move-result v1

    goto :goto_4

    :cond_a
    move v1, v9

    :goto_4
    if-nez v0, :cond_e

    if-eqz v3, :cond_b

    invoke-interface {v3}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    goto :goto_5

    :cond_b
    move-object v0, v8

    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Lcom/yandex/div2/DivAlignmentVertical;

    sget-object v3, Lrj2;->B1:Lrj2$a;

    invoke-static {v3, v0}, Lrj2$a;->b(Lrj2$a;Lcom/yandex/div2/DivAlignmentVertical;)Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivGallery$CrossContentAlignment;

    :cond_d
    sget-object v2, Lrj2;->B1:Lrj2$a;

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p5, p3

    invoke-static {v2, v3, v4, v0}, Lrj2$a;->c(Lrj2$a;IILcom/yandex/div2/DivGallery$CrossContentAlignment;)I

    move-result v0

    goto :goto_6

    :cond_e
    move v0, v9

    :goto_6
    add-int v2, p2, v1

    add-int v3, p3, v0

    add-int v4, p4, v1

    add-int v5, p5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lrj2;->superLayoutDecoratedWithMargins(Landroid/view/View;IIII)V

    const/4 v0, 0x2

    invoke-static {p0, p1, v9, v0, v8}, Lrj2;->e(Lrj2;Landroid/view/View;ZILjava/lang/Object;)V

    if-nez p6, :cond_f

    invoke-interface {p0}, Lrj2;->getChildrenToRelayout()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_f
    return-void

    :cond_10
    :goto_7
    invoke-interface/range {p0 .. p5}, Lrj2;->superLayoutDecoratedWithMargins(Landroid/view/View;IIII)V

    if-nez p6, :cond_11

    invoke-interface {p0}, Lrj2;->getChildrenToRelayout()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public _onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v3, v1, v4, v5}, Lrj2;->e(Lrj2;Landroid/view/View;ZILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public _onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lrj2;->trackVisibilityAction(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public _onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    invoke-interface {p0}, Lrj2;->getChildrenToRelayout()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    const/4 v7, 0x1

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lrj2;->_layoutDecoratedWithMargins(Landroid/view/View;IIIIZ)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lrj2;->getChildrenToRelayout()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public _removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 4

    const-string v0, "recycler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Lrj2;->trackVisibilityAction(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public _removeView(Landroid/view/View;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lrj2;->trackVisibilityAction(Landroid/view/View;Z)V

    return-void
.end method

.method public _removeViewAt(I)V
    .locals 1

    invoke-interface {p0, p1}, Lrj2;->_getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lrj2;->trackVisibilityAction(Landroid/view/View;Z)V

    return-void
.end method

.method public calcScrollOffset(Landroid/view/View;)I
    .locals 1

    const-string v0, "targetView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrj2;->d(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    invoke-direct {p0}, Lrj2;->isHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    sub-int/2addr v0, v1

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    :goto_1
    sub-int/2addr v0, p0

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lpdc;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    :cond_4
    sub-int/2addr v0, v1

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    goto :goto_1

    :goto_3
    return v0
.end method

.method public abstract firstCompletelyVisibleItemPosition()I
.end method

.method public abstract firstVisibleItemPosition()I
.end method

.method public abstract getBindingContext()Lcom/yandex/div/core/view2/a;
.end method

.method public getChildMeasureSpec(IIIIIZ)I
    .locals 0

    sub-int/2addr p1, p3

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lwn8;->d(II)I

    move-result p0

    const p1, 0x7fffffff

    if-ltz p4, :cond_0

    if-gt p4, p1, :cond_0

    invoke-static {p4}, Lodc;->h(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    if-ne p4, p3, :cond_2

    if-eqz p6, :cond_1

    if-nez p2, :cond_1

    invoke-static {}, Lodc;->i()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p3, -0x2

    if-ne p4, p3, :cond_4

    if-ne p5, p1, :cond_3

    invoke-static {}, Lodc;->i()I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-static {p5}, Lodc;->g(I)I

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p3, -0x3

    if-ne p4, p3, :cond_7

    const/high16 p3, -0x80000000

    if-eq p2, p3, :cond_6

    const/high16 p3, 0x40000000    # 2.0f

    if-eq p2, p3, :cond_6

    if-ne p5, p1, :cond_5

    invoke-static {}, Lodc;->i()I

    move-result p0

    goto :goto_0

    :cond_5
    invoke-static {p5}, Lodc;->g(I)I

    move-result p0

    goto :goto_0

    :cond_6
    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Lodc;->g(I)I

    move-result p0

    goto :goto_0

    :cond_7
    invoke-static {}, Lodc;->i()I

    move-result p0

    :goto_0
    return p0
.end method

.method public abstract getChildrenToRelayout()Ljava/util/Set;
.end method

.method public abstract getDiv()Lcom/yandex/div2/DivGallery;
.end method

.method public abstract getItemDiv(I)Lzl2;
.end method

.method public abstract getLayoutManagerOrientation()I
.end method

.method public abstract getView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public instantScroll(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;I)V
    .locals 5

    const-string v0, "scrollPosition"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lpdc;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_a

    if-nez p1, :cond_1

    invoke-static {p0}, Lrj2;->c(Lrj2;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lpdc;->f(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p3, p3

    :goto_0
    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p3, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto/16 :goto_3

    :cond_1
    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const/4 v2, 0x1

    if-nez v0, :cond_6

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_4
    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_6

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_b

    sget-object p1, Lrj2$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, v2, :cond_9

    if-eq p1, p2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p0, v0}, Lrj2;->b(Lrj2;Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, p3

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-static {p2}, Lpdc;->f(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_8

    neg-int p1, p1

    :cond_8
    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object p3

    filled-new-array {p1, p1}, [I

    move-result-object v1

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, p3, p1

    aget p1, v1, p1

    sub-int/2addr v3, p1

    aget p1, p3, v2

    aget p3, v1, v2

    sub-int/2addr p1, p3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p3, v1

    div-int/2addr p3, p2

    add-int/2addr p3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, p2

    add-int/2addr v0, p1

    invoke-interface {p0}, Lrj2;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_3

    :cond_a
    new-instance v1, Lrj2$c;

    invoke-direct {v1, p1, p0, p3, p2}, Lrj2$c;-><init>(ILrj2;ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public abstract instantScrollToPosition(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V
.end method

.method public abstract instantScrollToPositionWithOffset(IILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V
.end method

.method public abstract lastCompletelyVisibleItemPosition()I
.end method

.method public abstract lastVisibleItemPosition()I
.end method

.method public abstract superLayoutDecoratedWithMargins(Landroid/view/View;IIII)V
.end method

.method public abstract toLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end method

.method public trackVisibilityAction(Landroid/view/View;Z)V
    .locals 3

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrj2;->_getPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->J(Lpc9;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p0}, Lrj2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    if-eqz p2, :cond_8

    invoke-virtual {v1, p1}, Lcom/yandex/div/core/view2/Div2View;->takeBindingDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    move-result-object p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    instance-of p2, p1, Lmk2;

    if-eqz p2, :cond_5

    move-object v2, p1

    check-cast v2, Lmk2;

    :cond_5
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lmk2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->H()Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->o(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V

    invoke-virtual {v1, p1}, Lcom/yandex/div/core/view2/Div2View;->unbindViewFromDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-interface {p0, v0}, Lrj2;->getItemDiv(I)Lzl2;

    move-result-object p2

    if-nez p2, :cond_9

    return-void

    :cond_9
    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->H()Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    move-result-object v0

    invoke-interface {p0}, Lrj2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object p0

    invoke-virtual {p2}, Lzl2;->d()Loj3;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/view2/a;->c(Loj3;)Lcom/yandex/div/core/view2/a;

    move-result-object p0

    invoke-virtual {p2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v2}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->s(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V

    invoke-virtual {p2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/yandex/div/core/view2/Div2View;->bindViewToDiv$div_release(Landroid/view/View;Lcom/yandex/div2/Div;)V

    :goto_2
    return-void
.end method

.method public abstract width()I
.end method
