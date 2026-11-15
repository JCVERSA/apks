.class public Lcom/transsion/playercommon/stack/StackItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public b:Ljava/util/List;


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p0, p0, Lcom/transsion/playercommon/stack/StackLayoutManager;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    invoke-static {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 5

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p5, 0x1

    if-ne p6, p5, :cond_3

    invoke-virtual {p0, p2, p3}, Lcom/transsion/playercommon/stack/StackItemTouchHelperCallback;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result p0

    div-float/2addr p4, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p3, p4, p0

    if-lez p3, :cond_0

    move p4, p0

    goto :goto_0

    :cond_0
    const/high16 p3, -0x40800000    # -1.0f

    cmpg-float p6, p4, p3

    if-gez p6, :cond_1

    move p4, p3

    :cond_1
    :goto_0
    const/high16 p3, 0x41700000    # 15.0f

    mul-float/2addr p3, p4

    invoke-virtual {p1, p3}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p6, 0x3

    const/high16 p7, 0x41c00000    # 24.0f

    const/4 v0, 0x0

    if-le p3, p6, :cond_2

    move p6, p5

    :goto_1
    add-int/lit8 v1, p3, -0x1

    if-ge p6, v1, :cond_3

    sub-int v1, p3, p6

    sub-int/2addr v1, p5

    invoke-virtual {p2, p6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    int-to-float v1, v1

    mul-float v3, v1, v0

    sub-float v3, p0, v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, p7

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_2
    const/4 p6, 0x0

    :goto_2
    add-int/lit8 v1, p3, -0x1

    if-ge p6, v1, :cond_3

    sub-int v1, p3, p6

    sub-int/2addr v1, p5

    invoke-virtual {p2, p6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    int-to-float v1, v1

    mul-float v3, v1, v0

    sub-float v3, p0, v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, p7

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/playercommon/stack/StackItemTouchHelperCallback;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/playercommon/stack/StackItemTouchHelperCallback;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/playercommon/stack/StackItemTouchHelperCallback;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    return-void
.end method

.method public setOnSlidedListener(Lkf7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf7;",
            ")V"
        }
    .end annotation

    return-void
.end method
