.class Lcom/transsion/widgets/CustomSwipeRefreshLayout$5;
.super Landroid/view/animation/Animation;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$5;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$5;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iget-boolean v0, p2, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v0, :cond_0

    iget v0, p2, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget p2, p2, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    :goto_0
    iget-object p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$5;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iget v1, p2, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mFrom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v1, v0

    iget-object p2, p2, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr v1, p2

    iget-object p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$5;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {p2, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$5;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowScale(F)V

    return-void
.end method
