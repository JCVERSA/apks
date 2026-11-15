.class Lcom/transsion/widgets/CustomSwipeRefreshLayout$3;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$3;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$3;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method
