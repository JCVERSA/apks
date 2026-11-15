.class public Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->getShimmerAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;II)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;->d:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;

    iput p2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;->b:I

    iput p3, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;->d:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;

    iget v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;->b:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->c(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;->d:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->a(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;->c:I

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;->d:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
