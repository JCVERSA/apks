.class public Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# instance fields
.field private a:Landroidx/recyclerview/widget/PagerSnapHelper;

.field private b:Lcom/mgtv/ssp/immersion/a/b;

.field private c:I

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 3
    new-instance p2, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {p2}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iput-object p2, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->a:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 4
    iput-object p1, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/ssp/immersion/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->b:Lcom/mgtv/ssp/immersion/a/b;

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->a:Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->b:Lcom/mgtv/ssp/immersion/a/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->b:Lcom/mgtv/ssp/immersion/a/b;

    invoke-interface {p0}, Lcom/mgtv/ssp/immersion/a/b;->a()V

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->c:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->b:Lcom/mgtv/ssp/immersion/a/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/mgtv/ssp/immersion/a/b;->a(ZI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->b:Lcom/mgtv/ssp/immersion/a/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/mgtv/ssp/immersion/a/b;->a(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->a:Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->b:Lcom/mgtv/ssp/immersion/a/b;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->b:Lcom/mgtv/ssp/immersion/a/b;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/mgtv/ssp/immersion/a/b;->a(IZ)V

    :cond_3
    iget-object p0, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->b:Lcom/mgtv/ssp/immersion/a/b;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    if-eq v0, p1, :cond_5

    iget-object p1, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->b:Lcom/mgtv/ssp/immersion/a/b;

    invoke-interface {p1, v0}, Lcom/mgtv/ssp/immersion/a/b;->a(I)V

    :cond_5
    iget-object p0, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->c:I

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/immersion/ui/ViewPagerLayoutManager;->c:I

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method
