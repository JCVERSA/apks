.class public Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/TranOsSeekbar;->O(FF)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->D(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->r(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->r(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->C(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    invoke-static {v0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B(Lcom/transsion/playercommon/widgets/TranOsSeekbar;I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->A(Lcom/transsion/playercommon/widgets/TranOsSeekbar;I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->A(Lcom/transsion/playercommon/widgets/TranOsSeekbar;I)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
