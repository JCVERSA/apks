.class public Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/TranOsSeekbar;->N()Landroid/animation/ValueAnimator;
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

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->s(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->z(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->E(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->y(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getProgressFloat()F

    move-result v2

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;->a(Lcom/transsion/playercommon/widgets/TranOsSeekbar;IFZ)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
