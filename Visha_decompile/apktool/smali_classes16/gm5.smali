.class public Lgm5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Z = false


# instance fields
.field public a:I

.field public b:Landroid/view/View;

.field public c:J

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lgm5;->a:I

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lgm5;->h:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lgm5;->a:I

    return-void
.end method

.method public b()Z
    .locals 0

    iget p0, p0, Lgm5;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Landroid/view/View;FF)V
    .locals 2

    iput-object p1, p0, Lgm5;->b:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lgm5;->f(FF)V

    invoke-virtual {p0, p3}, Lgm5;->e(F)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x2

    iput p1, p0, Lgm5;->a:I

    iput-wide v0, p0, Lgm5;->c:J

    const/high16 p1, 0x43160000    # 150.0f

    iput p1, p0, Lgm5;->d:F

    sget-boolean p0, Lgm5;->i:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ListScaleHelper onRebound() now = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", scaleY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", pviotY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "os_list"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;FF)V
    .locals 2

    iput-object p1, p0, Lgm5;->b:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2, p1}, Lgm5;->f(FF)V

    invoke-virtual {p0, p3}, Lgm5;->e(F)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x1

    iput p1, p0, Lgm5;->a:I

    iput-wide v0, p0, Lgm5;->c:J

    const/high16 p1, 0x43160000    # 150.0f

    iput p1, p0, Lgm5;->d:F

    sget-boolean p0, Lgm5;->i:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ListScaleHelper onRelease() now = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", scaleY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", pviotY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "os_list"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final e(F)V
    .locals 0

    iput p1, p0, Lgm5;->g:F

    return-void
.end method

.method public final f(FF)V
    .locals 0

    iput p1, p0, Lgm5;->e:F

    iput p2, p0, Lgm5;->f:F

    return-void
.end method

.method public g()Z
    .locals 12

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lgm5;->c:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lgm5;->d:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v4, p0, Lgm5;->h:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    iget v4, p0, Lgm5;->e:F

    iget v5, p0, Lgm5;->f:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v2, p0, Lgm5;->a:I

    const/4 v5, 0x0

    const-string v6, ", mPviotY = "

    const-string v7, ", scale = "

    const-string v8, "os_list"

    const/4 v9, 0x1

    if-eq v2, v9, :cond_2

    const/4 v10, 0x2

    if-eq v2, v10, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-boolean v2, Lgm5;->i:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ListScaleHelper update() 2 duration = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lgm5;->c:J

    sub-long v10, v0, v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lgm5;->g:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lgm5;->b:Landroid/view/View;

    iget v6, p0, Lgm5;->g:F

    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lgm5;->b:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    iget-wide v6, p0, Lgm5;->c:J

    sub-long/2addr v0, v6

    long-to-float v0, v0

    iget v1, p0, Lgm5;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iput v9, p0, Lgm5;->a:I

    iput v4, p0, Lgm5;->e:F

    iput v3, p0, Lgm5;->f:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgm5;->c:J

    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lgm5;->d:F

    goto :goto_0

    :cond_2
    sget-boolean v2, Lgm5;->i:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListScaleHelper update() 1 duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lgm5;->c:J

    sub-long v10, v0, v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lgm5;->g:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lgm5;->b:Landroid/view/View;

    iget v3, p0, Lgm5;->g:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lgm5;->b:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    iget-wide v2, p0, Lgm5;->c:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lgm5;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iput v5, p0, Lgm5;->a:I

    :cond_4
    :goto_0
    iget p0, p0, Lgm5;->a:I

    if-eqz p0, :cond_5

    move v5, v9

    :cond_5
    return v5
.end method
