.class Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->startShowRemindAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic c:I

.field final synthetic d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;


# direct methods
.method constructor <init>(Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;FLandroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    .line 2
    .line 3
    iput p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->a:F

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    iput p4, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    .line 2
    .line 3
    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->a:F

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    .line 10
    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->c:I

    .line 11
    .line 12
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    .line 2
    .line 3
    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->a:F

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    .line 10
    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->c:I

    .line 11
    .line 12
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;->d:Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
