.class public Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$f;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$f;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->a(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->c(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;F)V

    :cond_1
    :goto_0
    return-void
.end method
