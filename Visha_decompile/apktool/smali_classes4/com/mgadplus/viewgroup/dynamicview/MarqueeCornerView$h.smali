.class public Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$h;->a:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$h;->a:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->h(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView$h;->a:Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    invoke-static {p0}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->j(Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
