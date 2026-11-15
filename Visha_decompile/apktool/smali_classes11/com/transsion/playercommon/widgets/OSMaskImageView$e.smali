.class public Lcom/transsion/playercommon/widgets/OSMaskImageView$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/OSMaskImageView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/OSMaskImageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/OSMaskImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->g(Lcom/transsion/playercommon/widgets/OSMaskImageView;Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h(Lcom/transsion/playercommon/widgets/OSMaskImageView;Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->a(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->a(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->c(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->c(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->c(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->a(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->a(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->g(Lcom/transsion/playercommon/widgets/OSMaskImageView;Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h(Lcom/transsion/playercommon/widgets/OSMaskImageView;Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->a(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->a(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
