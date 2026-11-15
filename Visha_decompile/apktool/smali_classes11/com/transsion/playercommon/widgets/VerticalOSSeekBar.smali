.class public Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;
.super Lcom/transsion/playercommon/widgets/CustomOsSeekbar;
.source "SourceFile"


# static fields
.field public static final ROTATION_ANGLE_CW_270:I = 0x10e

.field public static final ROTATION_ANGLE_CW_90:I = 0x5a


# instance fields
.field public c0:Z

.field public d0:Ljava/lang/reflect/Method;

.field public e0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x5a

    .line 2
    iput v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->N(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x5a

    .line 5
    iput v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->N(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x5a

    .line 8
    iput v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->N(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static O(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getWrapper()Lcom/transsion/playercommon/widgets/VerticalSeekBarWrapper;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lcom/transsion/playercommon/widgets/VerticalSeekBarWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/playercommon/widgets/VerticalSeekBarWrapper;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized L(IZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->d0:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setProgress"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->d0:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->d0:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_1
    int-to-float p1, p1

    :try_start_4
    invoke-super {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    :catch_1
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->T()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final M(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final N(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    if-eqz p2, :cond_1

    sget-object v1, Lcom/transsion/playercommon/R$styleable;->VerticalSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/playercommon/R$styleable;->VerticalSeekBar_seekBarRotation:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p2}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->O(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iput p2, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method public final P()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->c0:Z

    return-void
.end method

.method public final Q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->c0:Z

    return-void
.end method

.method public final R(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->c0:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->Q()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->c0:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->U(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->c0:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->U(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->Q()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->P()V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->U(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->Q()V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->M(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->P()V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->U(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->M(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_1
    return v2
.end method

.method public final S(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->M(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->M(Z)V

    :cond_2
    :goto_0
    return v0
.end method

.method public final T()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public final U(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-super {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int v1, v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v3, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    const/16 v4, 0x5a

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    const/16 v0, 0x10e

    if-eq v3, v0, :cond_0

    move p1, v5

    goto :goto_0

    :cond_0
    sub-int/2addr v2, p1

    int-to-float p1, v2

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    int-to-float p1, p1

    :goto_0
    cmpg-float v0, p1, v5

    if-ltz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v0, v1

    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    div-float v5, p1, v0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getMax()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    mul-float/2addr v5, p1

    float-to-int p1, v5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->L(IZ)V

    return-void
.end method

.method public V()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getRotationAngle()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    return p0
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->V()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    move v0, v1

    goto :goto_1

    :pswitch_0
    return v1

    :pswitch_1
    iget v1, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_0

    :goto_0
    move v0, v2

    :cond_0
    move v1, v2

    goto :goto_1

    :pswitch_2
    iget v1, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    const/16 v3, 0x10e

    if-ne v1, v3, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result p1

    add-int/2addr p1, v0

    if-ltz p1, :cond_1

    int-to-float p2, p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getMax()F

    move-result v0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->L(IZ)V

    :cond_1
    return v2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->onMeasure(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-super {p0, p2, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz p2, :cond_1

    invoke-super {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-super {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p2, p1, p4, p3}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->onSizeChanged(IIII)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->S(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->R(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setProgress(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    return-void
.end method

.method public setRotationAngle(I)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->O(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->e0:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->V()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/VerticalOSSeekBar;->getWrapper()Lcom/transsion/playercommon/widgets/VerticalSeekBarWrapper;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/VerticalSeekBarWrapper;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid angle specified :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
