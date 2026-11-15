.class Lcom/transsion/widgets/CustomSwipeRefreshLayout$7;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$7;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$7;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iget v0, p2, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mStartingScale:F

    neg-float v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setAnimationProgress(F)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$7;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method
