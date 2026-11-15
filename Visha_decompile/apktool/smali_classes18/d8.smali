.class public Ld8;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8$d;
    }
.end annotation


# instance fields
.field public o:Landroidx/collection/SparseArrayCompat;

.field public p:Landroidx/collection/SparseArrayCompat;

.field public q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public r:Landroid/view/LayoutInflater;

.field public s:Lr7a;

.field public t:Lye7;

.field public u:Lwe7;

.field public v:Lxe7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Ld8;->o:Landroidx/collection/SparseArrayCompat;

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Ld8;->p:Landroidx/collection/SparseArrayCompat;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ld8;->r:Landroid/view/LayoutInflater;

    iput-object p2, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public static synthetic b(Ld8;)Lwe7;
    .locals 0

    iget-object p0, p0, Ld8;->u:Lwe7;

    return-object p0
.end method

.method public static synthetic c(Ld8;)Lxe7;
    .locals 0

    iget-object p0, p0, Ld8;->v:Lxe7;

    return-object p0
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ld8;->p:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Ld8;->k()I

    move-result p0

    const v1, 0x30d40

    add-int/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Ld8;->d(Landroid/view/View;)V

    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result p1

    invoke-virtual {p0}, Ld8;->j()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Ld8;->k()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getHeaderCount()I
    .locals 0

    iget-object p0, p0, Ld8;->o:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 2

    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result v0

    invoke-virtual {p0}, Ld8;->j()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ld8;->k()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemId(I)J
    .locals 1

    invoke-virtual {p0, p1}, Ld8;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    neg-int p0, p1

    add-int/lit8 p0, p0, -0x1

    int-to-long p0, p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object p0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Ld8;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ld8;->o:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Ld8;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld8;->p:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Ld8;->j()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public h(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ld8;->o:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result p0

    const v1, 0x186a0

    add-int/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld8;->h(Landroid/view/View;)V

    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final j()I
    .locals 0

    iget-object p0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public k()I
    .locals 0

    iget-object p0, p0, Ld8;->p:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    return p0
.end method

.method public l()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    new-instance v1, Ld8$c;

    invoke-direct {v1, p0, p1, v0}, Ld8$c;-><init>(Ld8;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 8

    .line 2
    invoke-virtual {p0, p1}, Ld8;->v(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result v1

    sub-int/2addr p2, v1

    .line 5
    instance-of v1, v0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ld8;->s:Lr7a;

    if-eqz v1, :cond_4

    .line 6
    check-cast v0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    .line 7
    new-instance v4, Lo7a;

    invoke-direct {v4, v0}, Lo7a;-><init>(Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;)V

    .line 8
    new-instance v1, Lo7a;

    invoke-direct {v1, v0}, Lo7a;-><init>(Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;)V

    .line 9
    iget-object v2, p0, Ld8;->s:Lr7a;

    invoke-interface {v2, v4, v1, p2}, Lr7a;->a(Lo7a;Lo7a;I)V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/recyclerview/SwipeMenuView;

    .line 11
    invoke-virtual {v4}, Lo7a;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v4}, Lo7a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v6, 0x1

    .line 13
    iget-object v7, p0, Ld8;->t:Lye7;

    move-object v3, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->createMenu(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lo7a;Lai1;ILye7;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 15
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    :goto_0
    const/4 v2, 0x2

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/recyclerview/SwipeMenuView;

    .line 17
    invoke-virtual {v1}, Lo7a;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v1}, Lo7a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v6, -0x1

    .line 19
    iget-object v7, p0, Ld8;->t:Lye7;

    move-object v3, p1

    move-object v4, v1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->createMenu(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lo7a;Lai1;ILye7;)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 21
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    :cond_4
    :goto_1
    iget-object p0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    iget-object v0, p0, Ld8;->o:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance p0, Ld8$d;

    invoke-direct {p0, v0}, Ld8$d;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Ld8;->p:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance p0, Ld8$d;

    invoke-direct {p0, v0}, Ld8$d;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    iget-object v0, p0, Ld8;->u:Lwe7;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ld8$a;

    invoke-direct {v1, p0, p2}, Ld8$a;-><init>(Ld8;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Ld8;->v:Lxe7;

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ld8$b;

    invoke-direct {v1, p0, p2}, Ld8$b;-><init>(Ld8;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    iget-object v0, p0, Ld8;->s:Lr7a;

    if-nez v0, :cond_4

    return-object p2

    :cond_4
    iget-object v0, p0, Ld8;->r:Landroid/view/LayoutInflater;

    sget v1, Lcom/yanzhenjie/recyclerview/x/R$layout;->x_recycler_view_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/yanzhenjie/recyclerview/x/R$id;->swipe_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld8;->r(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "itemView"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_5
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ld8;->v(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-virtual {p0, p1}, Ld8;->v(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz p1, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-virtual {p0, p1}, Ld8;->v(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-virtual {p0, p1}, Ld8;->v(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Ld8;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ld8;->r(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public s(I)Z
    .locals 1

    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result v0

    invoke-virtual {p0}, Ld8;->j()I

    move-result p0

    add-int/2addr v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setHasStableIds(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public setOnItemClickListener(Lwe7;)V
    .locals 0

    iput-object p1, p0, Ld8;->u:Lwe7;

    return-void
.end method

.method public setOnItemLongClickListener(Lxe7;)V
    .locals 0

    iput-object p1, p0, Ld8;->v:Lxe7;

    return-void
.end method

.method public setOnItemMenuClickListener(Lye7;)V
    .locals 0

    iput-object p1, p0, Ld8;->t:Lye7;

    return-void
.end method

.method public t(I)Z
    .locals 0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public u(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Ld8;->t(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ld8;->s(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    instance-of v0, p1, Ld8$d;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Ld8;->u(I)Z

    move-result p0

    return p0
.end method

.method public w(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ld8;->p:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld8;->p:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    invoke-virtual {p0}, Ld8;->getHeaderCount()I

    move-result v0

    invoke-virtual {p0}, Ld8;->j()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public x(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ld8;->o:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld8;->o:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public y(Lr7a;)V
    .locals 0

    iput-object p1, p0, Ld8;->s:Lr7a;

    return-void
.end method
