.class public Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->y()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->q(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->i(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->r(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->p(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->h(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->h(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v3}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgressFloat()F

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;->onProgressChanged(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;IFZ)V

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->e(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F

    move-result v1

    mul-float/2addr p1, v2

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->e(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->m(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F

    move-result v3

    sub-float/2addr p1, v0

    mul-float/2addr p1, v2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->k(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F

    move-result v0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {v2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr p1, v0

    add-float/2addr v3, p1

    invoke-static {v1, v3}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->m(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
