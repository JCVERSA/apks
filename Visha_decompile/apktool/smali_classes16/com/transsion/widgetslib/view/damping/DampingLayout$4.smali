.class Lcom/transsion/widgetslib/view/damping/DampingLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;->abortRefreshing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->C(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->L(Lcom/transsion/widgetslib/view/damping/DampingLayout;Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Q(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    :cond_1
    return-void
.end method
