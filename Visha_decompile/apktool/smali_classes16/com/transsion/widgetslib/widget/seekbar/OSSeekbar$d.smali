.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->p()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMFromThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMToThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMFromThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$calculateProgress(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMProgress$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$notifyProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v1

    const/4 v3, 0x2

    if-gtz v2, :cond_0

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMFromThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    int-to-float v2, v3

    mul-float/2addr p1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMCenterThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMFromThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMCenterThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v2

    sub-float/2addr p1, v1

    int-to-float v1, v3

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMToThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMCenterThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr p1, v1

    add-float v1, v2, p1

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMCurrentThumbInHalfWidth$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$d;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
