.class Lcom/transsion/widgets/CustomSwipeRefreshLayout$2;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$2;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$2;->this$0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method
