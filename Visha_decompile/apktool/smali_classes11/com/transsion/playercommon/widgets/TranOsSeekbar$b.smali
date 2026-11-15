.class public Lcom/transsion/playercommon/widgets/TranOsSeekbar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/TranOsSeekbar;->L(FF)Landroid/animation/ValueAnimator;
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

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$b;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$b;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->w(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$b;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$b;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$b;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$b;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->x(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$b;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
