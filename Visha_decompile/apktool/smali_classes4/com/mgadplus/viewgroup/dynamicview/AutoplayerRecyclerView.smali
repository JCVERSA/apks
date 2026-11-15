.class public Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;
.implements Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;",
        "Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;"
    }
.end annotation


# instance fields
.field public e:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

.field public f:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView$a;

.field public g:Z

.field public h:Z

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:I

.field public n:I

.field public o:Lcom/mgadplus/viewgroup/dynamicview/MgmiLinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    .line 3
    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->n:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    .line 7
    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->n:I

    .line 8
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    .line 11
    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->n:I

    .line 12
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->o:Lcom/mgadplus/viewgroup/dynamicview/MgmiLinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setSmoothScrollbarEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->e:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->j:Ljava/util/List;

    iget p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll2d;

    invoke-virtual {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->g(Ll2d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getBubbleEntryListentry()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->i:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdOptionMessage()Lcom/mgmi/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->k:Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getAdOptionMessage()Lcom/mgmi/model/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/a;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->l:Ljava/util/List;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    .line 14
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->n:I

    .line 15
    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->j:Ljava/util/List;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->h:Z

    :cond_1
    return-void
.end method

.method public a(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_2

    .line 2
    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll2d;

    invoke-virtual {v2}, Ll2d;->i()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->k:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->l:Ljava/util/List;

    if-nez p0, :cond_3

    :cond_1
    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_3

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->j:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 5
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->j:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public appear(Z)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/MgmiLinearLayoutManager;

    invoke-direct {v0, p1}, Lcom/mgadplus/viewgroup/dynamicview/MgmiLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->o:Lcom/mgadplus/viewgroup/dynamicview/MgmiLinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-direct {v0, p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->e:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->f:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->g:Z

    return-void
.end method

.method public synthetic bindData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->a(Lcom/mgmi/model/VASTFloatAd;)V

    return-void
.end method

.method public disappear(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->stopTurning()V

    return-void
.end method

.method public bridge synthetic getSchemeView()Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;
    .locals 0

    .line 1
    return-object p0
.end method

.method public isVisiblity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public leftClick()V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->f:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView$a;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAddItem(I)V
    .locals 0

    return-void
.end method

.method public onBindComplete()V
    .locals 5

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->o:Lcom/mgadplus/viewgroup/dynamicview/MgmiLinearLayoutManager;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->n:I

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->o:Lcom/mgadplus/viewgroup/dynamicview/MgmiLinearLayoutManager;

    iget v3, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->n:I

    iget v4, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    add-int/2addr v3, v4

    neg-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->j:Ljava/util/List;

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2d;

    invoke-virtual {v0}, Ll2d;->i()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->f:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView$a;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->n:I

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->n:I

    iput v1, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    :goto_1
    return-void
.end method

.method public onCloseClick()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->disappear(Z)V

    return-void
.end method

.method public onImageClick(Ll2d;)V
    .locals 0

    return-void
.end method

.method public prepareContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup$MarginLayoutParams;)Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;
    .locals 0

    return-object p0
.end method

.method public rightClick()V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->m:I

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->l:Ljava/util/List;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->f:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView$a;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setEventListener(Lcom/mgadplus/viewgroup/dynamicview/a$a;)V
    .locals 0

    return-void
.end method

.method public setInterectAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/mgadplus/viewgroup/dynamicview/a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setOnAutoplayerAdaperClick(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->e:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->h(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;)V

    return-void
.end method

.method public startTurning()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->stopTurning()V

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->f:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView$a;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopTurning()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->g:Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView;->f:Lcom/mgadplus/viewgroup/dynamicview/AutoplayerRecyclerView$a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
