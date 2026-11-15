.class Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator$2;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    iput p2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator$2;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator$2;->val$position:I

    iput p0, p1, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->selectedPosition:I

    const/4 p0, 0x0

    iput p0, p1, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->selectionOffset:F

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator$2;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator$2;->val$position:I

    iput p0, p1, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->selectedPosition:I

    return-void
.end method
