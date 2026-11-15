.class public final Lcom/transsion/cloud/fragment/CloudFragment$initView$31;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/transsion/cloud/fragment/CloudFragment$initView$31",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "newState",
        "Lzfb;",
        "onScrollStateChanged",
        "(Landroidx/recyclerview/widget/RecyclerView;I)V",
        "clouddrive_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c(Lcom/transsion/cloud/fragment/CloudFragment;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->d()V

    return-void
.end method

.method public static final c(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 1

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCardViewAdd$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/widget/FrameLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static final d()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$isInEditMode$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCardViewAdd$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    new-instance p2, Lh21;

    invoke-direct {p2, p0}, Lh21;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_3

    :cond_1
    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$isInEditMode$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Z

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCardViewAdd$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCardViewAdd$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {v2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getFreezeView$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x8

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCardViewAdd$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Li21;

    invoke-direct {v0}, Li21;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMIsNeedUploadData$p(Lcom/transsion/cloud/fragment/CloudFragment;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_6

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    goto :goto_2

    :cond_7
    move p1, v3

    :goto_2
    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->R()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {v0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMOffset$p(Lcom/transsion/cloud/fragment/CloudFragment;)I

    move-result v0

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_8

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1, v3}, Lcom/transsion/cloud/fragment/CloudFragment;->access$refreshData(Lcom/transsion/cloud/fragment/CloudFragment;Z)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    :cond_9
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$31;->c:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMRefreshView$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0, v3}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->changeEditMode(Z)V

    :cond_a
    :goto_3
    return-void
.end method
