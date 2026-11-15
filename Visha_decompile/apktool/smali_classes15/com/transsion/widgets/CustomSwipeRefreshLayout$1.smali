.class Lcom/transsion/widgets/CustomSwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomSwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomSwipeRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$1;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$1;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iget-boolean v0, p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$1;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iget-object p1, p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$1;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iget-boolean v0, p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNotify:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mListener:Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$1;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->reset()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
