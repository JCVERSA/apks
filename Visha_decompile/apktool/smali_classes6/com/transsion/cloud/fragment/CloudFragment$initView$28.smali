.class public final Lcom/transsion/cloud/fragment/CloudFragment$initView$28;
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
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0011\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "com/transsion/cloud/fragment/CloudFragment$initView$28",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "newState",
        "Lzfb;",
        "onScrollStateChanged",
        "(Landroidx/recyclerview/widget/RecyclerView;I)V",
        "",
        "c",
        "Z",
        "isHorizontalInteracting",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "d",
        "Ljava/lang/Runnable;",
        "restoreRefreshRunnable",
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
.field public c:Z

.field public d:Ljava/lang/Runnable;

.field public final synthetic e:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->e:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->e:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {v1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMRefreshView$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->c:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->e:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMRefreshView$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->c:Z

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->e:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMRefreshView$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->c:Z

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->c:Z

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->e:Lcom/transsion/cloud/fragment/CloudFragment;

    new-instance p2, Lcom/transsion/cloud/fragment/CloudFragment$initView$28$onScrollStateChanged$$inlined$Runnable$1;

    invoke-direct {p2, p1}, Lcom/transsion/cloud/fragment/CloudFragment$initView$28$onScrollStateChanged$$inlined$Runnable$1;-><init>(Lcom/transsion/cloud/fragment/CloudFragment;)V

    iput-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->d:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->e:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMRefreshView$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$initView$28;->d:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method
