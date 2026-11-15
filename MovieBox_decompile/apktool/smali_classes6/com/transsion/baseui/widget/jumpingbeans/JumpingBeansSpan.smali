.class final Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;
.super Landroid/text/style/SuperscriptSpan;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan$a;
    }
.end annotation


# instance fields
.field private final animatedRange:F

.field private final delay:I

.field private jumpAnimator:Landroid/animation/ValueAnimator;

.field private final loopDuration:I

.field private shift:I

.field private final textView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;IIIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->textView:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    mul-int/2addr p4, p3

    .line 12
    iput p4, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->delay:I

    .line 13
    .line 14
    iput p2, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->loopDuration:I

    .line 15
    .line 16
    iput p5, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->animatedRange:F

    .line 17
    .line 18
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->d()V

    .line 2
    .line 3
    .line 4
    const-string v0, "JumpingBeans"

    .line 5
    .line 6
    const-string v1, "!!! Remember to call JumpingBeans.stopJumping() when appropriate !!!"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private b(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->jumpAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->shift:I

    .line 8
    .line 9
    float-to-int p1, p1

    .line 10
    div-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    filled-new-array {v0, p1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->jumpAnimator:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->loopDuration:I

    .line 23
    .line 24
    int-to-long v0, v0

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->delay:I

    .line 30
    .line 31
    int-to-long v0, v0

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->jumpAnimator:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan$a;

    .line 38
    .line 39
    iget v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->animatedRange:F

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan$a;-><init>(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->jumpAnimator:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    const/4 v0, -0x1

    .line 50
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->jumpAnimator:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->jumpAnimator:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->jumpAnimator:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private e(Landroid/animation/ValueAnimator;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->c(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->shift:I

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->jumpAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->jumpAnimator:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->textView:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->textView:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->textView:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->e(Landroid/animation/ValueAnimator;Landroid/widget/TextView;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->a()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->b(F)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->shift:I

    .line 9
    .line 10
    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 11
    .line 12
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->b(F)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;->shift:I

    .line 9
    .line 10
    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 11
    .line 12
    return-void
.end method
