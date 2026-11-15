.class public Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public b:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Landroid/animation/ValueAnimator;

.field public f:F

.field public g:F

.field public h:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4
    new-instance v1, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->b:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    .line 5
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    .line 6
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->b:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->b:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_image_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->f:F

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 10
    sget v3, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v4, Lcom/transsion/widgetslib/R$attr;->os_fab_bg_pressed_color:I

    sget v5, Lcom/transsion/widgetslib/R$attr;->os_fab_shadow_color:I

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    .line 11
    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 12
    sget v4, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 13
    sget v5, Lcom/transsion/widgetslib/R$color;->os_fab_bg_pressed_color_hios:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 14
    sget v6, Lcom/transsion/widgetslib/R$color;->os_fab_shadow_color_hios:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 15
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-static {}, Lolb;->getOsType()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lolb;->a:[Ljava/lang/String;

    aget-object v0, v7, v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v6

    .line 17
    :goto_0
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    sget p2, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 19
    sget v0, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_height:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 20
    sget v1, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_src:I

    .line 21
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 22
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_background_color:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 23
    sget v4, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_background_pressed_color:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 24
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_shadow_color:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int p2, p2

    .line 27
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-int p2, v0

    .line 28
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 29
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p0, v3, v4}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImageBackgroundColor(II)V

    .line 32
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setShadowColor(I)V

    .line 33
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->f:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImagePadding(F)V

    .line 34
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3f0ccccd    # 0.55f

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ee66666    # 0.45f

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, p2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->h:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->g:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->b:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->g:F

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->h:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$a;-><init>(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->f()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->d()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->g:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->e:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->h:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$b;-><init>(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public getImage()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getShadowLayout()Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->b:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    return-object p0
.end method

.method public setImageBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBackgroundColor(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_floating_ova_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [I

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    filled-new-array {p2, p1}, [I

    move-result-object p1

    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImageBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImagePadding(F)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    div-float/2addr v0, v2

    float-to-int p1, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->f:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImagePadding(F)V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->b:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->b:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->b:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->b:Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
