.class public final Lcom/yandex/div/internal/widget/slider/SliderView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/internal/widget/slider/SliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:F

.field public c:Z

.field public final synthetic d:Lcom/yandex/div/internal/widget/slider/SliderView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/slider/SliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$f;->d:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$f;->b:F

    return p0
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$f;->b:F

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$f;->c:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$f;->d:Lcom/yandex/div/internal/widget/slider/SliderView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$setSliderAnimator$p(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/animation/ValueAnimator;)V

    iget-boolean p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$f;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$f;->d:Lcom/yandex/div/internal/widget/slider/SliderView;

    iget v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$f;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$f;->d:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbValue()F

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$notifyThumbChangedListeners(Lcom/yandex/div/internal/widget/slider/SliderView;Ljava/lang/Float;F)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$f;->c:Z

    return-void
.end method
