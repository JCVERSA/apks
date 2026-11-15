.class Lcom/transsion/widgets/CustomTabLayoutNew$TabView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->animateTabWidth(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$3;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$3;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$3;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_0
    return-void
.end method
