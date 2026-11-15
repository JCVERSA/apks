.class Lcom/transsion/audio/widgets/SmartEditAnimationView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/SmartEditAnimationView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/SmartEditAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {v0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->c(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    const v1, 0x3e19999a    # 0.15f

    cmpg-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    div-float/2addr p1, v1

    sub-float p1, v3, p1

    mul-float/2addr p1, p1

    sub-float/2addr v3, p1

    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->a(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v1

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->d(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->b(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->e(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->a(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->f(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->b(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->g(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3f59999a    # 0.85f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    sub-float/2addr p1, v1

    const v1, 0x3f333333    # 0.7f

    div-float/2addr p1, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v1, p1

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v4, p1, v2

    if-lez v4, :cond_1

    sub-float/2addr p1, v2

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr p1, v2

    mul-float/2addr p1, p1

    sub-float/2addr v3, p1

    mul-float/2addr v0, v3

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->a(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    invoke-static {p1, v2}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->d(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->b(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v2

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {p1, v2}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->e(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->a(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    invoke-static {p1, v2}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->f(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->b(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->g(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->a(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->d(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->b(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->e(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->a(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->f(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->b(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->g(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;->this$0:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
