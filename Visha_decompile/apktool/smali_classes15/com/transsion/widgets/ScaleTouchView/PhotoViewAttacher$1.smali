.class Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/ScaleTouchView/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(FF)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->n(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;->isScaling()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->j(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnViewDragListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->j(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnViewDragListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/widgets/ScaleTouchView/OnViewDragListener;->onDrag(FF)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->p(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->v(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)V

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->e(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->a(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->n(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;->isScaling()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->b(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->d(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->d(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    cmpl-float v1, p1, v3

    if-gez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->d(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)I

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    if-ne v1, v2, :cond_3

    cmpg-float p1, p1, v4

    if-lez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->q(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)I

    move-result p1

    if-nez p1, :cond_4

    cmpl-float p1, p2, v3

    if-gez p1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->q(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)I

    move-result p0

    if-ne p0, v2, :cond_7

    cmpg-float p0, p2, v4

    if-gtz p0, :cond_7

    :cond_5
    if-eqz v0, :cond_7

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onFling(FFFF)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    new-instance p2, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;

    invoke-static {p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->e(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->u(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;)V

    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->c(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p2}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->e(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->x(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->e(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->w(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->e(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->c(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScale(FFF)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->onScale(FFFFF)V

    return-void
.end method

.method public onScale(FFFFF)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getScale()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->h(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->m(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->m(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;->onScaleChange(FFF)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->p(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 6
    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->p(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7
    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->v(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)V

    :cond_2
    return-void
.end method
