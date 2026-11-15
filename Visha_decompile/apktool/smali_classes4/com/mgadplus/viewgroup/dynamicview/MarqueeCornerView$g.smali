.class public Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$g;->b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$g;->b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->e(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$g;->b:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->f(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V

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
