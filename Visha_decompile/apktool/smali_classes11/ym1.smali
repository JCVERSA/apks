.class public abstract Lym1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ym1"

.field public static volatile b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/View;[I[IZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lym1;->b(Landroid/view/ViewGroup;Landroid/view/View;[I[IZLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public static b(Landroid/view/ViewGroup;Landroid/view/View;[I[IZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v4, p2, v3

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    aget v2, p2, v1

    int-to-float v2, v2

    aget v4, p3, v3

    int-to-float v5, v4

    aget p3, p3, v1

    int-to-float p3, p3

    int-to-float v4, v4

    invoke-virtual {v0, v2, v5, p3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    aget v2, p2, v1

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    aget p2, p2, v3

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "translationX"

    const-string p3, "translationY"

    invoke-static {p1, p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 p3, 0x2

    new-array v0, p3, [F

    fill-array-data v0, :array_0

    const-string v2, "scaleX"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v4, "scaleY"

    new-array p3, p3, [F

    fill-array-data p3, :array_1

    invoke-static {p1, v4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {p3, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p3, Lym1$a;

    invoke-direct {p3, p1, p5, p4, p0}, Lym1$a;-><init>(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;ZLandroid/view/ViewGroup;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lym1$b;

    invoke-direct {p0, p4, p1}, Lym1$b;-><init>(ZLandroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
