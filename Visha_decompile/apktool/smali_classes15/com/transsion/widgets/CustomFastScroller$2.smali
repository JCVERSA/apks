.class Lcom/transsion/widgets/CustomFastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/CustomFastScroller;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$2;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/widgets/CustomFastScroller$2;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    invoke-static {p2}, Lcom/transsion/widgets/CustomFastScroller;->a(Lcom/transsion/widgets/CustomFastScroller;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$2;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    iget-object p1, p1, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$2;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    iget-object p1, p1, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$2;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    iget-object p1, p1, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$2;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    invoke-static {p1}, Lcom/transsion/widgets/CustomFastScroller;->c(Lcom/transsion/widgets/CustomFastScroller;)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller$2;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    iput p2, p0, Lcom/transsion/widgets/CustomFastScroller;->mAnimationState:I

    invoke-virtual {p0, p2}, Lcom/transsion/widgets/CustomFastScroller;->setState(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller$2;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgets/CustomFastScroller;->updateScrollPosition(II)V

    :goto_0
    return-void
.end method
