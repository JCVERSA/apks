.class public Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$b;,
        Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;

.field public final c:[F

.field public d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:Ljava/util/List;

.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Z

.field public final n:Ljava/lang/Runnable;

.field public o:Landroid/view/VelocityTracker;

.field public p:Landroid/graphics/Rect;

.field public q:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field public r:Landroid/view/View;

.field public s:I

.field public t:Landroid/graphics/Rect;

.field public u:J


# virtual methods
.method public final addChildDrawingOrderCallback()V
    .locals 0

    return-void
.end method

.method public endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;

    iget-object v2, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->f:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v2, p1, :cond_1

    iget-boolean p1, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->j:Z

    or-int/2addr p1, p2

    iput-boolean p1, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->j:Z

    iget-boolean p1, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->k:Z

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->c()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->k:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final getSelectedDxDy([F)V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->j:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->g:F

    iget v2, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->e:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    :goto_0
    iget v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->j:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->h:F

    iget-boolean v2, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->m:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->f:F

    add-float/2addr v0, v2

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    aput v0, p1, v1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    aput p0, p1, v1

    :goto_1
    return-void
.end method

.method public hasRunningRecoverAnim()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;

    iget-boolean v3, v3, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->k:Z

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->i:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v2, v1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->b:Ljava/util/List;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    return-void

    :cond_2
    throw v2
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->s:I

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->c:[F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->getSelectedDxDy([F)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->c:[F

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 p1, 0x1

    aget p0, p0, p1

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->c:[F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->getSelectedDxDy([F)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->c:[F

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 p1, 0x1

    aget p0, p0, p1

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->o:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->o:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->r:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->q:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    :cond_0
    return-void
.end method

.method public scrollIfNecessary()Z
    .locals 11

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput-wide v1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->u:J

    return v3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v6, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->t:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->t:Landroid/graphics/Rect;

    :cond_1
    iget-object v6, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->t:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->g:F

    iget v8, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->e:F

    add-float/2addr v6, v8

    float-to-int v6, v6

    iget-object v8, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->t:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v8, v6, v8

    iget-object v9, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->e:F

    cmpg-float v10, v9, v7

    if-gez v10, :cond_2

    if-gez v8, :cond_2

    goto :goto_0

    :cond_2
    cmpl-float v8, v9, v7

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->t:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v8, v6, v8

    if-lez v8, :cond_3

    goto :goto_0

    :cond_3
    move v8, v3

    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->h:F

    iget v9, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->f:F

    add-float/2addr v0, v9

    float-to-int v0, v0

    iget-object v9, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->t:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v9

    iget-object v9, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v0, v9

    iget v9, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->f:F

    cmpg-float v10, v9, v7

    if-gez v10, :cond_4

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v0, v9, v7

    if-gtz v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    throw v6

    :cond_6
    :goto_1
    move v0, v3

    :goto_2
    if-nez v8, :cond_b

    if-nez v0, :cond_a

    if-nez v8, :cond_8

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iput-wide v1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->u:J

    return v3

    :cond_8
    :goto_3
    iget-wide v7, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->u:J

    cmp-long v0, v7, v1

    if-nez v0, :cond_9

    iput-wide v4, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->u:J

    :cond_9
    throw v6

    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    throw v6

    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    throw v6
.end method

.method public select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    iget-object v3, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, v3, :cond_0

    iget v3, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->i:I

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->u:J

    iget v4, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->i:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iput v2, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->i:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v2, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->r:Landroid/view/View;

    invoke-virtual {p0}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->addChildDrawingOrderCallback()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must pass a ViewHolder when dragging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v11, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    const/4 v12, 0x0

    if-eqz v11, :cond_9

    iget-object v0, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    if-ne v4, v5, :cond_3

    move v10, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v11}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->swipeIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    move v10, v0

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->releaseVelocityTracker()V

    const/16 v0, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eq v10, v3, :cond_5

    if-eq v10, v5, :cond_5

    if-eq v10, v6, :cond_4

    if-eq v10, v0, :cond_4

    const/16 v8, 0x10

    if-eq v10, v8, :cond_4

    const/16 v8, 0x20

    if-eq v10, v8, :cond_4

    move v8, v7

    goto :goto_2

    :cond_4
    iget v8, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->e:F

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    iget-object v9, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    move v14, v8

    move v8, v7

    move v7, v14

    goto :goto_2

    :cond_5
    iget v8, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->f:F

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    iget-object v9, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    :goto_2
    if-eq v4, v5, :cond_7

    if-lez v10, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    goto :goto_3

    :cond_7
    move v5, v0

    :goto_3
    iget-object v0, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->c:[F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->getSelectedDxDy([F)V

    iget-object v0, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->c:[F

    aget v6, v0, v2

    aget v9, v0, v3

    new-instance v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$a;

    iget-object v2, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v13

    move-object v1, p0

    move-object v2, v11

    move v3, v5

    move v5, v6

    move v6, v9

    move-object v9, v13

    invoke-direct/range {v0 .. v11}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$a;-><init>(Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFLandroidx/recyclerview/widget/RecyclerView$LayoutManager;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    throw v12

    :cond_8
    iget-object v0, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    throw v12

    :cond_9
    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v4, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move v3, v2

    :goto_4
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_b
    iget-object v0, v1, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    throw v12

    :cond_c
    throw v12
.end method

.method public final swipeIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->i:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
