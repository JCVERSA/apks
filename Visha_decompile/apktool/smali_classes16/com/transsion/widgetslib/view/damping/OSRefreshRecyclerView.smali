.class public Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/transsion/widgetslib/view/damping/a;


# instance fields
.field private mDampingAdapter:Lmu4;

.field private mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

.field private mIsAppBarExpanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mIsAppBarExpanded:Z

    .line 3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->initHeaderHelper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mIsAppBarExpanded:Z

    .line 6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->initHeaderHelper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mIsAppBarExpanded:Z

    .line 9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->initHeaderHelper()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;)Lmu4;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mDampingAdapter:Lmu4;

    return-object p0
.end method


# virtual methods
.method public abortRefreshing()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->j()V

    return-void
.end method

.method public canScrollVertically(I)Z
    .locals 1

    if-gez p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mIsAppBarExpanded:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getHeaderHelper()Lcom/transsion/widgetslib/view/damping/HeaderHelper;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    return-object p0
.end method

.method public getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p0

    return-object p0
.end method

.method public initHeaderHelper()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setMinHeight(I)V

    return-void
.end method

.method public isRefreshing()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->o()Z

    move-result p0

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->p()V

    return-void
.end method

.method public onFinishHeaderInflate(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->q(Landroid/view/View;)V

    return-void
.end method

.method public onOverScrollUpdated(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->r(F)V

    return-void
.end method

.method public run()V
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mDampingAdapter:Lmu4;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v4

    new-instance v5, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;

    invoke-direct {v5, p0, v0, v3, v4}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$a;-><init>(Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;ILandroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    instance-of v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getLayoutHeader()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    instance-of v0, p1, Lmu4;

    if-eqz v0, :cond_0

    check-cast p1, Lmu4;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mDampingAdapter:Lmu4;

    invoke-interface {p1, p0}, Lmu4;->setRefreshLayout(Lcom/transsion/widgetslib/view/damping/a;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAppBarExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mIsAppBarExpanded:Z

    return-void
.end method

.method public setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$a;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$a;)V

    return-void
.end method

.method public setRefreshEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setRefreshEnabled(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setTextColor(I)V

    return-void
.end method
