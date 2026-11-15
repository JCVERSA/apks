.class public Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:F

.field public d:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

.field public e:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;

.field public f:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;

.field public g:Landroid/view/View$OnTouchListener;

.field public h:Landroid/graphics/Paint;

.field public i:I

.field public j:I

.field public k:Landroid/content/res/ColorStateList;

.field public l:I

.field public m:I

.field public n:F

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->l:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->m:I

    .line 6
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_shadow_ver_inset_top_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->o:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_shadow_ver_inset_bottom_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->p:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_shadow_inset_start_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->q:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_shadow_inset_end_level2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->r:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->c:F

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->n:F

    .line 14
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 16
    sget v2, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->getDefaultTinStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->k:Landroid/content/res/ColorStateList;

    .line 18
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 20
    sget v1, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_width:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->n:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 21
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_height:I

    iget v4, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->n:F

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 22
    sget v4, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_src:I

    .line 23
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 24
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_background_color:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    .line 25
    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 26
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->j:I

    .line 27
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_use_default_inset:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->s:Z

    .line 28
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_tint_color:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 29
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->k:Landroid/content/res/ColorStateList;

    .line 30
    :cond_0
    sget-boolean v6, Lolb;->E:Z

    if-eqz v6, :cond_1

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 31
    sget v5, Lcom/transsion/widgetslib/R$color;->os_platform_clickable_color:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 32
    :cond_1
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    :goto_0
    sget v5, Lcom/transsion/widgetslib/R$attr;->os_shadow_color_level2_attr:I

    filled-new-array {v5}, [I

    move-result-object v5

    .line 34
    invoke-virtual {p1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 35
    sget v6, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level2_hios:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v5, v3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 36
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_shadow_color:I

    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->i:I

    .line 38
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_require_alpha:I

    .line 39
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->t:Z

    .line 40
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->t:Z

    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->requireAlpha()V

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int p2, v1

    .line 44
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-int p2, v2

    .line 45
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 46
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->j:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImageBackgroundColor(I)V

    .line 49
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->i:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setShadowColor(I)V

    .line 50
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->c:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImagePadding(F)V

    .line 51
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;

    invoke-direct {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;-><init>()V

    const p2, 0x3f6147ae    # 0.88f

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->D(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;

    move-result-object p1

    new-instance p2, Lfz3;

    invoke-direct {p2}, Lfz3;-><init>()V

    .line 52
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->E(Lfz3;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->J(Landroid/view/View;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$d;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$d;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 53
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->G(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$c;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$c;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 54
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->H(Landroid/view/View$OnTouchListener;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$b;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$b;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 55
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->x(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$a;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$a;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 56
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->y(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->z()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    .line 58
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->h:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->h:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->d:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->e:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->f:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->g:Landroid/view/View$OnTouchListener;

    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_margin_end_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fab_margin_bottom_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public getDefaultTinStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 p0, 0x0

    new-array p0, p0, [I

    filled-new-array {p0}, [[I

    move-result-object p0

    filled-new-array {p1}, [I

    move-result-object p1

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public getImage()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->t:Z

    if-nez v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->e()V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->V(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->l:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->i:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public requireAlpha()V
    .locals 4

    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->q:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->o:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->r:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->p:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setImageBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBackgroundColor(I)V
    .locals 3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_floating_ova_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x10100a7

    .line 9
    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    new-array v2, v2, [I

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    .line 11
    filled-new-array {p1, p1}, [I

    move-result-object p1

    .line 12
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 13
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImageBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBackgroundColor(II)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_floating_ova_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x10100a7

    .line 2
    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    new-array v2, v2, [I

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    .line 4
    filled-new-array {p2, p1}, [I

    move-result-object p1

    .line 5
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 6
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImageBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImagePadding(F)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

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

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->c:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImagePadding(F)V

    return-void
.end method

.method public setOnAnimationEndListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->e:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;

    return-void
.end method

.method public setOnAnimationUpdateListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->f:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;

    return-void
.end method

.method public setOnClickListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->d:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

    return-void
.end method

.method public setOnFabTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->g:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->i:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUseDefaultInset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->s:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
