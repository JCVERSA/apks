.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startTrackGradientAnimation([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public final synthetic d:Z

.field public final synthetic e:[I


# direct methods
.method public constructor <init>(ILcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z[I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->b:I

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->d:Z

    iput-object p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->e:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->b:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMGradientAnimToken$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMAnimStartColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMAnimTargetColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->d:Z

    invoke-static {p1, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMTrackGradientActive$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMThumbTargetColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$canAutoThumbColor(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->e:[I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$targetProgress01(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$sampleGradientColorFrom(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[IF)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMThumbOutColor$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;I)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->b:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMGradientAnimToken$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMAnimTargetColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMSecondTrackGradientColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMSecondTrackGradient$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/graphics/LinearGradient;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->d:Z

    invoke-static {p1, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMTrackGradientActive$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMThumbTargetColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$canAutoThumbColor(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->e:[I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$targetProgress01(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$sampleGradientColorFrom(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[IF)I

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMThumbOutColor$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMAnimStartColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setMAnimTargetColors$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$h;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

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
