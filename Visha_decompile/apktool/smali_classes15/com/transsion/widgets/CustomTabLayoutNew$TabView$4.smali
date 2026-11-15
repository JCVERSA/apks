.class Lcom/transsion/widgets/CustomTabLayoutNew$TabView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

.field final synthetic val$targetWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$4;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    iput p2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$4;->val$targetWidth:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$4;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$4;->val$targetWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$4;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_0
    return-void
.end method
