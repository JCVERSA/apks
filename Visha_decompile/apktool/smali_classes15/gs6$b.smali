.class public final Lgs6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgs6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public varargs constructor <init>([Lgs6$a;)V
    .locals 1

    const-string v0, "floatProp"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgs6$b;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Lhi;->c1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float p1, v1

    mul-float/2addr v0, p1

    iget-object p1, p0, Lgs6$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    :goto_0
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lgs6$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "mFloatProps[i]"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lgs6$a;

    invoke-virtual {p1}, Lgs6$a;->a()F

    move-result v2

    sub-float v2, v0, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p1}, Lgs6$a;->b()F

    move-result v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p1}, Lgs6$a;->d()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p1}, Lgs6$a;->c()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {p1}, Lgs6$a;->f()F

    move-result v4

    const/4 v5, 0x1

    int-to-float v5, v5

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Lgs6$a;->i(F)V

    invoke-virtual {p1}, Lgs6$a;->e()Landroid/util/Property;

    move-result-object v2

    invoke-virtual {p1}, Lgs6$a;->g()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Lgs6$a;->h()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
