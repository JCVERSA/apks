.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->c0(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$g;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$g;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMThumbColorAnimator$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$g;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMThumbColorAnimator$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$g;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$g;->c:I

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMThumbOutColor$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$g;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
