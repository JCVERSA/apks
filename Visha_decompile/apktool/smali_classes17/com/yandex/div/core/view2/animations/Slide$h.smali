.class public final Lcom/yandex/div/core/view2/animations/Slide$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/animations/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public final d:F

.field public final e:F

.field public final f:I

.field public final g:I

.field public h:[I

.field public i:F

.field public j:F


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 1

    const-string v0, "originalView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movingView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    iput p5, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->d:F

    iput p6, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->e:F

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p5

    invoke-static {p5}, Ls86;->c(F)I

    move-result p5

    sub-int/2addr p3, p5

    iput p3, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->f:I

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-static {p2}, Ls86;->c(F)I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->g:I

    sget p2, Lcom/yandex/div/R$id;->div_transition_position:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p4, p3, [I

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    check-cast p3, [I

    goto :goto_0

    :cond_0
    move-object p3, p5

    :goto_0
    iput-object p3, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->h:[I

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2, p5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->h:[I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->f:I

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ls86;->c(F)I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->g:I

    iget-object v1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ls86;->c(F)I

    move-result v1

    add-int/2addr v0, v1

    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->h:[I

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->b:Landroid/view/View;

    sget v0, Lcom/yandex/div/R$id;->div_transition_position:I

    iget-object p0, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->h:[I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->i:F

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->j:F

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    iget v0, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->d:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    iget p0, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->e:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    iget v0, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->i:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    iget p0, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->j:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    const-string p0, "transition"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    const-string v0, "transition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    iget v1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->d:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->c:Landroid/view/View;

    iget v1, p0, Lcom/yandex/div/core/view2/animations/Slide$h;->e:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0

    const-string p0, "transition"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0

    const-string p0, "transition"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    const-string p0, "transition"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
