.class Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
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

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getMediumScale()F

    move-result v1

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getMaximumScale()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getMaximumScale()F

    move-result v1

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getMinimumScale()F

    move-result v1

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->i(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->i(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->e(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v2}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->r(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnViewTapListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v2}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->r(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnViewTapListener;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v3}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->e(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-interface {v2, v3, v1, p1}, Lcom/transsion/widgets/ScaleTouchView/OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->l(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnPhotoTapListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->l(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnPhotoTapListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->e(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-interface {v0, p0, v1, p1}, Lcom/transsion/widgets/ScaleTouchView/OnPhotoTapListener;->onPhotoTap(Landroid/widget/ImageView;FF)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->k(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnOutsidePhotoTapListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->k(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnOutsidePhotoTapListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;->this$0:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-static {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->e(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/widgets/ScaleTouchView/OnOutsidePhotoTapListener;->onOutsidePhotoTap(Landroid/widget/ImageView;)V

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
