.class public Lt6/f;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field private b:Lr6/f;

.field private c:Z

.field private d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field private e:Z

.field private f:Ls6/a;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1

    .line 1
    const-string v0, "baseQuickAdapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lt6/f;->c:Z

    .line 13
    .line 14
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 15
    .line 16
    iput-object v0, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 17
    .line 18
    invoke-static {}, Lt6/j;->a()Ls6/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lt6/f;->f:Ls6/a;

    .line 23
    .line 24
    iput-boolean p1, p0, Lt6/f;->h:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Lt6/f;->i:Z

    .line 27
    .line 28
    iput p1, p0, Lt6/f;->j:I

    .line 29
    .line 30
    return-void
.end method

.method private static final G(Lt6/f;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 7
    .line 8
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lt6/f;->w()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lt6/f;->w()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-boolean v0, p0, Lt6/f;->g:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 29
    .line 30
    if-ne p1, v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lt6/f;->w()V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Lt6/f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lt6/f;->o(Lt6/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lt6/f;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/f;->G(Lt6/f;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lt6/f;Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/f;->g(Lt6/f;Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/recyclerview/widget/RecyclerView$m;Lt6/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/f;->h(Landroidx/recyclerview/widget/RecyclerView$m;Lt6/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g(Lt6/f;Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$manager"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lt6/f;->q(Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lt6/f;->c:Z

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private static final h(Landroidx/recyclerview/widget/RecyclerView$m;Lt6/f;)V
    .locals 2

    .line 1
    const-string v0, "$manager"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E([I)[I

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Lt6/f;->l([I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 v0, 0x1

    .line 27
    add-int/2addr p0, v0

    .line 28
    iget-object v1, p1, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq p0, v1, :cond_0

    .line 35
    .line 36
    iput-boolean v0, p1, Lt6/f;->c:Z

    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private final l([I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    array-length v1, p1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_2

    .line 11
    .line 12
    aget v3, p1, v2

    .line 13
    .line 14
    if-le v3, v0, :cond_1

    .line 15
    .line 16
    move v0, v3

    .line 17
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    :goto_1
    return v0
.end method

.method private final n()V
    .locals 2

    .line 1
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 2
    .line 3
    iput-object v0, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n0()Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lt6/b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lt6/b;-><init>(Lt6/f;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lt6/f;->b:Lr6/f;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Lr6/f;->a()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method private static final o(Lt6/f;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lt6/f;->b:Lr6/f;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lr6/f;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final q(Landroidx/recyclerview/widget/LinearLayoutManager;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    iget-object v2, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic u(Lt6/f;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lt6/f;->t(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: loadMoreEnd"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lt6/f;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public final B(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lt6/f;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public final C(Ls6/a;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lt6/f;->f:Ls6/a;

    .line 7
    .line 8
    return-void
.end method

.method public D(Lr6/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt6/f;->b:Lr6/f;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lt6/f;->z(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final E(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-le p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lt6/f;->j:I

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public final F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    .line 1
    const-string v0, "viewHolder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 7
    .line 8
    new-instance v0, Lt6/c;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lt6/c;-><init>(Lt6/f;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lt6/f;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lt6/f;->m()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lt6/f;->j:I

    .line 20
    .line 21
    sub-int/2addr v0, v1

    .line 22
    if-ge p1, v0, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object p1, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 26
    .line 27
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 28
    .line 29
    if-eq p1, v0, :cond_3

    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 33
    .line 34
    if-ne p1, v0, :cond_4

    .line 35
    .line 36
    return-void

    .line 37
    :cond_4
    iget-boolean p1, p0, Lt6/f;->c:Z

    .line 38
    .line 39
    if-nez p1, :cond_5

    .line 40
    .line 41
    return-void

    .line 42
    :cond_5
    invoke-direct {p0}, Lt6/f;->n()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lt6/f;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lt6/f;->c:Z

    .line 8
    .line 9
    iget-object v0, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n0()Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    .line 27
    const-wide/16 v3, 0x32

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    new-instance v2, Lt6/d;

    .line 32
    .line 33
    invoke-direct {v2, p0, v1}, Lt6/d;-><init>(Lt6/f;Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    instance-of v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    new-instance v2, Lt6/e;

    .line 45
    .line 46
    invoke-direct {v2, v1, p0}, Lt6/e;-><init>(Landroidx/recyclerview/widget/RecyclerView$m;Lt6/f;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_0
    return-void
.end method

.method public final i()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ls6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lt6/f;->f:Ls6/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()I
    .locals 3

    .line 1
    iget-object v0, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v1, v2

    .line 26
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->V()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v1, v0

    .line 31
    return v1
.end method

.method public final m()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lt6/f;->b:Lr6/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lt6/f;->k:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 12
    .line 13
    sget-object v2, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 14
    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lt6/f;->e:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Collection;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    :goto_0
    return v1
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lt6/f;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt6/f;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 9
    .line 10
    iput-object v0, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 11
    .line 12
    iget-object v0, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 13
    .line 14
    invoke-virtual {p0}, Lt6/f;->k()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lt6/f;->f()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final t(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt6/f;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-boolean p1, p0, Lt6/f;->e:Z

    .line 9
    .line 10
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 11
    .line 12
    iput-object v0, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lt6/f;->k()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 27
    .line 28
    invoke-virtual {p0}, Lt6/f;->k()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt6/f;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 9
    .line 10
    iput-object v0, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 11
    .line 12
    iget-object v0, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 13
    .line 14
    invoke-virtual {p0}, Lt6/f;->k()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object v1, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 9
    .line 10
    iget-object v0, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 11
    .line 12
    invoke-virtual {p0}, Lt6/f;->k()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lt6/f;->n()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt6/f;->b:Lr6/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lt6/f;->z(Z)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 10
    .line 11
    iput-object v0, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lt6/f;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public final z(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt6/f;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean p1, p0, Lt6/f;->k:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lt6/f;->m()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 16
    .line 17
    invoke-virtual {p0}, Lt6/f;->k()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    sget-object p1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 28
    .line 29
    iput-object p1, p0, Lt6/f;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 30
    .line 31
    iget-object p1, p0, Lt6/f;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 32
    .line 33
    invoke-virtual {p0}, Lt6/f;->k()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method
