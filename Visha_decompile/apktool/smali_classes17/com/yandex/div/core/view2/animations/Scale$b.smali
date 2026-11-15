.class public final Lcom/yandex/div/core/view2/animations/Scale$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/animations/Scale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Landroid/view/View;

.field public final c:F

.field public final d:F

.field public e:Z

.field public final synthetic f:Lcom/yandex/div/core/view2/animations/Scale;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/animations/Scale;Landroid/view/View;FF)V
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->f:Lcom/yandex/div/core/view2/animations/Scale;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->b:Landroid/view/View;

    iput p3, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->c:F

    iput p4, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->d:F

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->b:Landroid/view/View;

    iget v1, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->c:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->b:Landroid/view/View;

    iget v1, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->d:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->resetPivot()V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->f:Lcom/yandex/div/core/view2/animations/Scale;

    invoke-static {p1}, Lcom/yandex/div/core/view2/animations/Scale;->a(Lcom/yandex/div/core/view2/animations/Scale;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->f:Lcom/yandex/div/core/view2/animations/Scale;

    invoke-static {p1}, Lcom/yandex/div/core/view2/animations/Scale;->c(Lcom/yandex/div/core/view2/animations/Scale;)F

    move-result p1

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->e:Z

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->f:Lcom/yandex/div/core/view2/animations/Scale;

    invoke-static {v1}, Lcom/yandex/div/core/view2/animations/Scale;->a(Lcom/yandex/div/core/view2/animations/Scale;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/animations/Scale$b;->f:Lcom/yandex/div/core/view2/animations/Scale;

    invoke-static {p0}, Lcom/yandex/div/core/view2/animations/Scale;->c(Lcom/yandex/div/core/view2/animations/Scale;)F

    move-result p0

    mul-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    return-void
.end method
