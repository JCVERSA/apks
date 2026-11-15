.class public Lcom/yalantis/ucrop/view/GestureCropImageView;
.super Lcom/yalantis/ucrop/view/CropImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/GestureCropImageView$a;,
        Lcom/yalantis/ucrop/view/GestureCropImageView$c;,
        Lcom/yalantis/ucrop/view/GestureCropImageView$b;
    }
.end annotation


# instance fields
.field public C:Landroid/view/ScaleGestureDetector;

.field public D:Lyv8;

.field public E:Landroid/view/GestureDetector;

.field public F:F

.field public G:F

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->H:Z

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->I:Z

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->J:Z

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->K:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->H:Z

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->I:Z

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->J:Z

    const/4 p1, 0x5

    .line 7
    iput p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->K:I

    return-void
.end method

.method public static bridge synthetic p(Lcom/yalantis/ucrop/view/GestureCropImageView;)F
    .locals 0

    iget p0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->F:F

    return p0
.end method

.method public static bridge synthetic q(Lcom/yalantis/ucrop/view/GestureCropImageView;)F
    .locals 0

    iget p0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->G:F

    return p0
.end method


# virtual methods
.method public getDoubleTapScaleSteps()I
    .locals 0

    iget p0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->K:I

    return p0
.end method

.method public getDoubleTapTargetScale()F
    .locals 5

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    iget p0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->K:I

    int-to-float p0, p0

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, p0

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public init()V
    .locals 0

    invoke-super {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->init()V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->r()V

    return-void
.end method

.method public isGestureEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->J:Z

    return p0
.end method

.method public isRotateEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->H:Z

    return p0
.end method

.method public isScaleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->I:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->cancelAllAnimations()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->F:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->G:F

    :cond_1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->J:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->E:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->I:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->C:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->H:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->D:Lyv8;

    invoke-virtual {v0, p1}, Lyv8;->d(Landroid/view/MotionEvent;)Z

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    :cond_5
    return v1
.end method

.method public final r()V
    .locals 5

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/yalantis/ucrop/view/GestureCropImageView$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView$a;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Ltd4;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->E:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/yalantis/ucrop/view/GestureCropImageView$c;

    invoke-direct {v2, p0, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView$c;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Ltd4;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->C:Landroid/view/ScaleGestureDetector;

    new-instance v0, Lyv8;

    new-instance v1, Lcom/yalantis/ucrop/view/GestureCropImageView$b;

    invoke-direct {v1, p0, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView$b;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Ltd4;)V

    invoke-direct {v0, v1}, Lyv8;-><init>(Lyv8$a;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->D:Lyv8;

    return-void
.end method

.method public setDoubleTapScaleSteps(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->K:I

    return-void
.end method

.method public setGestureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->J:Z

    return-void
.end method

.method public setRotateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->H:Z

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->I:Z

    return-void
.end method
