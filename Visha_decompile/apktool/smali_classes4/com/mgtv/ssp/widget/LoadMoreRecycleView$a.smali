.class Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/widget/LoadMoreRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;


# direct methods
.method private constructor <init>(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;Lcom/mgtv/ssp/widget/LoadMoreRecycleView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;-><init>(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-static {p1}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    goto :goto_0

    :cond_2
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v2, v1, [I

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    if-lez v1, :cond_3

    sub-int/2addr v1, p3

    aget p2, v2, v1

    aget v0, v2, v0

    move v3, v0

    move v0, p2

    move p2, v3

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    iget-object v1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-static {v1}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->b(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-static {v0}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->c(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)I

    move-result v0

    if-gt p1, v0, :cond_4

    iget-object p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-virtual {p1, p3}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a(Z)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-static {p1}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->b(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;->a()V

    :cond_4
    iget-object p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-static {p1}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->d(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView$b;

    move-result-object p1

    if-eqz p1, :cond_5

    if-gt p2, p3, :cond_5

    iget-object p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-virtual {p1, p3}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a(Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView;

    invoke-static {p0}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->d(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$b;->a()V

    :cond_5
    return-void
.end method
