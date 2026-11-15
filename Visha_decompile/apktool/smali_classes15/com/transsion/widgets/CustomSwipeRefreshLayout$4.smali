.class Lcom/transsion/widgets/CustomSwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

.field final synthetic val$endingAlpha:I

.field final synthetic val$startingAlpha:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomSwipeRefreshLayout;II)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$4;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$4;->val$startingAlpha:I

    iput p3, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$4;->val$endingAlpha:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$4;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iget-object p2, p2, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$4;->val$startingAlpha:I

    int-to-float v1, v0

    iget p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$4;->val$endingAlpha:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    float-to-int p0, v1

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    return-void
.end method
