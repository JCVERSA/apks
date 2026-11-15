.class public Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic c:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$f;->c:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$f;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$f;->b:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$f;->c:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-static {v1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->b(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$f;->c:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->d(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$f;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
