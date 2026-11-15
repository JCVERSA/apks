.class Lcom/transsion/publish/view/ZoomImageView$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/ZoomImageView;->r(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/transsion/publish/view/ZoomImageView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/ZoomImageView;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$c;->c:Lcom/transsion/publish/view/ZoomImageView;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/publish/view/ZoomImageView$c;->a:F

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/publish/view/ZoomImageView$c;->b:F

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$c;->c:Lcom/transsion/publish/view/ZoomImageView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/publish/view/ZoomImageView;->k(Lcom/transsion/publish/view/ZoomImageView;)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    div-float/2addr p1, v0

    .line 18
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$c;->c:Lcom/transsion/publish/view/ZoomImageView;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/transsion/publish/view/ZoomImageView;->c(Lcom/transsion/publish/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView$c;->a:F

    .line 25
    .line 26
    iget v2, p0, Lcom/transsion/publish/view/ZoomImageView$c;->b:F

    .line 27
    .line 28
    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$c;->c:Lcom/transsion/publish/view/ZoomImageView;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->c(Lcom/transsion/publish/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$c;->c:Lcom/transsion/publish/view/ZoomImageView;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->n(Lcom/transsion/publish/view/ZoomImageView;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
