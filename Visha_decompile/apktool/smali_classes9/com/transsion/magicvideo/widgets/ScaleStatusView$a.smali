.class public Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/ScaleStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->a(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p1

    neg-float p2, p3

    neg-float p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p3}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->b(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->checkBorder(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)[F

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p3}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->a(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, p3

    const/4 p3, 0x0

    aput p2, p1, p3

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)[F

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget-object p4, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p4}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->a(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p4

    aput p2, p1, v1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->a(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->c(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->c(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget-object p4, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p4}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    div-float/2addr p2, p4

    iget-object p4, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p4}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)[F

    move-result-object p4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)[F

    move-result-object v0

    aget v0, v0, p3

    neg-float v0, v0

    mul-float/2addr v0, p1

    aput v0, p4, p3

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)[F

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p3}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)[F

    move-result-object p3

    aget p3, p3, v1

    neg-float p3, p3

    mul-float/2addr p3, p2

    aput p3, p1, v1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)[F

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->controlVideoRect([F)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;->b:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method
