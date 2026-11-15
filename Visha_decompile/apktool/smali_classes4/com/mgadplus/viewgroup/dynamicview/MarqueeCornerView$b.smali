.class public Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->c(Lacc;)V
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

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;->c:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;->c:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->d(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;->b:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;->c:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->b(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;->c:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->d(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;->c:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/mgmi/R$anim;->middle_marquee_scale_out:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b$a;

    invoke-direct {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$b;->c:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->k(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
