.class public Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;
    }
.end annotation


# instance fields
.field public final b:Landroid/view/GestureDetector;

.field public final c:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final d:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final e:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public f:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/lang/Runnable;

.field public final i:Landroidx/dynamicanimation/animation/SpringForce;

.field public final j:Landroidx/dynamicanimation/animation/SpringForce;

.field public final k:Landroidx/dynamicanimation/animation/SpringForce;

.field public l:F

.field public m:F

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->g:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$1;-><init>(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->h:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->n:Z

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->b:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v2, 0x3a83126f    # 0.001f

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v2, Lpmb;

    invoke-direct {v2, p0}, Lpmb;-><init>(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;)V

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v2, Lqmb;

    invoke-direct {v2, p0}, Lqmb;-><init>(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;)V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v0, Lrmb;

    invoke-direct {v0, p0}, Lrmb;-><init>(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;)V

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->i:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v3, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->j:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->k:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p0, 0x40000000    # 2.0f

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {p0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->g(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->f(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->e(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method


# virtual methods
.method public final synthetic e(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->f:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;->c(F)V

    :cond_0
    return-void
.end method

.method public final synthetic f(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->f:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;->d(F)V

    :cond_0
    return-void
.end method

.method public final synthetic g(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->f:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;->b(F)V

    :cond_0
    return-void
.end method

.method public h(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->h:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->l()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->j:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->i:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->f:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, v1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;->b(F)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->k:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->n:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->l:F

    iput v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->m:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->k()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->f:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;->a(FF)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->n:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->n:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->j()V

    :cond_0
    iget p2, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->l:F

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->l:F

    iget p2, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->m:F

    sub-float/2addr p2, p4

    iput p2, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->m:F

    iget-object p2, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->f:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    iget p4, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->l:F

    add-float/2addr p3, p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->m:F

    add-float/2addr p1, p0

    invoke-interface {p2, p3, p1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;->a(FF)V

    :cond_1
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAnimValueListener(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->f:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;

    return-void
.end method
