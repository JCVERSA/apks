.class public Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$f;,
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;,
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$e;,
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$d;,
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$c;
    }
.end annotation


# static fields
.field public static final LEFT_DIRECTION:I = 0x1

.field public static final RIGHT_DIRECTION:I = -0x1


# instance fields
.field public A:Z

.field public B:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;

.field public e:I

.field public f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

.field public l:Lr7a;

.field public m:Lye7;

.field public n:Lwe7;

.field public o:Lxe7;

.field public p:Ld8;

.field public q:Z

.field public r:Ljava/util/List;

.field public s:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public t:Ljava/util/List;

.field public u:Ljava/util/List;

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->g:I

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->q:Z

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->r:Ljava/util/List;

    .line 7
    new-instance p3, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;

    invoke-direct {p3, p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;-><init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->s:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->t:Ljava/util/List;

    .line 9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->u:Ljava/util/List;

    .line 10
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->v:I

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->w:Z

    .line 12
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->x:Z

    .line 13
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->y:Z

    .line 14
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->z:Z

    .line 15
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->A:Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Ld8;
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    return-object p0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ld8;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ld8;->i(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->x:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->B:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;->onWaitToLoadMore(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$f;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->w:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->z:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->A:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->w:Z

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->B:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;->onLoading()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final d(Landroid/view/View;)Landroid/view/View;
    .locals 4

    instance-of p0, p1, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public final e(IIZ)Z
    .locals 3

    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->h:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->i:I

    sub-int/2addr p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->e:I

    const/4 v2, 0x0

    if-le p2, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p2, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->e:I

    if-ge p1, p2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->e:I

    if-ge p1, p0, :cond_1

    return v2

    :cond_1
    return p3
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-direct {v0}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public getFooterCount()I
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ld8;->k()I

    move-result p0

    return p0
.end method

.method public getHeaderCount()I
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Ld8;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getOriginAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ld8;->l()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f()V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->a()Z

    move-result p0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f()V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->b()Z

    move-result p0

    return p0
.end method

.method public isSwipeItemMenuEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->q:Z

    return p0
.end method

.method public isSwipeItemMenuEnabled(I)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public loadMoreError(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->w:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->y:Z

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->B:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;->onLoadError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final loadMoreFinish(ZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->w:Z

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->y:Z

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->z:Z

    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->A:Z

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->B:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;->onLoadFinish(ZZ)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->j:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->l:Lr7a;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v4, v3

    int-to-float v5, p1

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->d(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    instance-of v7, v5, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v7, :cond_2

    check-cast v5, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    goto :goto_0

    :cond_2
    move-object v5, v6

    :goto_0
    iget-boolean v7, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->q:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->r:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v8

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5, v7}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->setSwipeEnable(Z)V

    :cond_4
    if-nez v7, :cond_5

    return v0

    :cond_5
    if-eqz v1, :cond_10

    if-eq v1, v2, :cond_f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    goto/16 :goto_6

    :cond_6
    invoke-virtual {p0, v3, p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->e(IIZ)Z

    move-result v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-nez v1, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_8

    goto/16 :goto_6

    :cond_8
    iget v4, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->h:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_a

    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v5}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->hasRightMenu()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v5}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isLeftCompleteOpen()Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v5, v2

    goto :goto_2

    :cond_a
    move v5, v8

    :goto_2
    if-gez v4, :cond_c

    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v4}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->hasLeftMenu()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v4}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isRightCompleteOpen()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move v4, v2

    goto :goto_3

    :cond_c
    move v4, v8

    :goto_3
    if-nez v5, :cond_e

    if-eqz v4, :cond_d

    goto :goto_4

    :cond_d
    move v2, v8

    :cond_e
    :goto_4
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_f
    invoke-virtual {p0, v3, p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->e(IIZ)Z

    move-result v0

    goto :goto_6

    :cond_10
    iput v3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->h:I

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->i:I

    iget p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->g:I

    if-eq v4, p1, :cond_11

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    move v0, v2

    goto :goto_5

    :cond_11
    move v0, v8

    :goto_5
    if-eqz v0, :cond_12

    iput-object v6, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    const/4 p1, -0x1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->g:I

    goto :goto_6

    :cond_12
    if-eqz v5, :cond_13

    iput-object v5, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    iput v4, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->g:I

    :cond_13
    :goto_6
    return v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->v:I

    return-void
.end method

.method public onScrolled(II)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    add-int/2addr p2, v1

    if-ne p1, p2, :cond_5

    iget p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->v:I

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->c()V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object p2

    array-length v2, p2

    sub-int/2addr v2, v1

    aget p2, p2, v2

    add-int/2addr p2, v1

    if-ne p1, p2, :cond_5

    iget p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->v:I

    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->c()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ld8;->w(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ld8;->x(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld8;->l()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->s:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->s:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    new-instance v0, Ld8;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ld8;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->n:Lwe7;

    invoke-virtual {v0, p1}, Ld8;->setOnItemClickListener(Lwe7;)V

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->o:Lxe7;

    invoke-virtual {p1, v0}, Ld8;->setOnItemLongClickListener(Lxe7;)V

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->l:Lr7a;

    invoke-virtual {p1, v0}, Ld8;->y(Lr7a;)V

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->m:Lye7;

    invoke-virtual {p1, v0}, Ld8;->setOnItemMenuClickListener(Lye7;)V

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    invoke-virtual {v1, v0}, Ld8;->h(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->u:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->u:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    invoke-virtual {v1, v0}, Ld8;->d(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->p:Ld8;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setAutoLoadMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->x:Z

    return-void
.end method

.method public setItemViewSwipeEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f()V

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->j:Z

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->c(Z)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 3

    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    new-instance v2, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$a;-><init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setLoadMoreListener(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$f;)V
    .locals 0

    return-void
.end method

.method public setLoadMoreView(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->B:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;

    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f()V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->d(Z)V

    return-void
.end method

.method public setOnItemClickListener(Lwe7;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Cannot set item click listener, setAdapter has already been called."

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$c;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$c;-><init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Lwe7;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->n:Lwe7;

    return-void
.end method

.method public setOnItemLongClickListener(Lxe7;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Cannot set item long click listener, setAdapter has already been called."

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$d;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$d;-><init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Lxe7;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->o:Lxe7;

    return-void
.end method

.method public setOnItemMenuClickListener(Lye7;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Cannot set menu item click listener, setAdapter has already been called."

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$e;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$e;-><init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Lye7;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->m:Lye7;

    return-void
.end method

.method public setOnItemMoveListener(Lze7;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f()V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->setOnItemMoveListener(Lze7;)V

    return-void
.end method

.method public setOnItemMovementListener(Laf7;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f()V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->setOnItemMovementListener(Laf7;)V

    return-void
.end method

.method public setOnItemStateChangedListener(Lbf7;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f()V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->setOnItemStateChangedListener(Lbf7;)V

    return-void
.end method

.method public setSwipeItemMenuEnabled(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setSwipeItemMenuEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->q:Z

    return-void
.end method

.method public setSwipeMenuCreator(Lr7a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Cannot set menu creator, setAdapter has already been called."

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->l:Lr7a;

    return-void
.end method

.method public smoothCloseMenu()V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public smoothOpenLeftMenu(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xc8

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->smoothOpenMenu(III)V

    return-void
.end method

.method public smoothOpenLeftMenu(II)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->smoothOpenMenu(III)V

    return-void
.end method

.method public smoothOpenMenu(III)V
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->d(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->g:I

    invoke-virtual {v0, p3}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenRightMenu(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->g:I

    invoke-virtual {v0, p3}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenLeftMenu(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public smoothOpenRightMenu(I)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0xc8

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->smoothOpenMenu(III)V

    return-void
.end method

.method public smoothOpenRightMenu(II)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->smoothOpenMenu(III)V

    return-void
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f()V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->f()V

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->k:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public useDefaultLoadMore()V
    .locals 2

    new-instance v0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLoadMoreView(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$g;)V

    return-void
.end method
