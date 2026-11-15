.class public Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;
.super Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
.source "SourceFile"


# instance fields
.field public N:Lcom/transsion/widgetslib/view/OSBigButton;

.field public O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

.field public P:Landroid/content/Context;

.field public Q:Z

.field public R:Landroid/view/View$OnClickListener;

.field public S:Lu97;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->Q:Z

    .line 5
    new-instance v1, Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/widgetslib/view/OSBigButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    .line 6
    new-instance v1, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    .line 7
    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->P:Landroid/content/Context;

    .line 8
    new-instance p3, Lu97;

    invoke-direct {p3}, Lu97;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->S:Lu97;

    .line 9
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->osBigLiqButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget p2, Lcom/transsion/widgetslib/R$styleable;->osBigLiqButton_isTinyButton:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->Q:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    iget-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->Q:Z

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxButtonHeightDp(I)V

    .line 14
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinButtonHeightDp(I)V

    .line 15
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxTextLine(I)V

    .line 16
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->s()V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->t(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->showWithFadeAnimation()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->hideWithFadeAnimation()V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->onMeasure(II)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setShadowCorner(F)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setCornerRadius(F)V

    :cond_1
    return-void
.end method

.method public final s()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setEnableDefRoundCorner(Z)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->P:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->Q:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-static {v1, v0}, Lyj1;->d(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->isNightMode()Z

    move-result v0

    const-string v1, "#33FFFFFF"

    const/4 v2, 0x5

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMixLevel()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMixLevel()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setFillColor(I)V

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    const-string v1, "#14FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setFillColor(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMixLevel()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMixLevel()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    const-string v1, "#CCFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setFillColor(I)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setFillColor(I)V

    :goto_3
    sget-boolean v0, Lolb;->P:Z

    const/4 v1, -0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->S:Lu97;

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    const v3, 0x3f866666    # 1.05f

    invoke-virtual {v0, v2, v3, p0}, Lu97;->c(Landroid/view/View;FLandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->BUTTON:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    sget-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->BIG_BUTTON_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMixLevel()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-super {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMixLevel()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v0, 0x437f0000    # 255.0f

    const/16 v1, 0x1f

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_5

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->P:Landroid/content/Context;

    invoke-static {p1}, Lolb;->z(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getBrandAlpha()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBrandColor(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->P:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetsliquid/R$attr;->os_brand_disabled:I

    sget v3, Lcom/transsion/widgetsliquid/R$color;->os_brand_disabled_hios:I

    invoke-static {p1, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getBrandAlpha()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBrandColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getMixLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->R:Landroid/view/View$OnClickListener;

    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    new-instance v0, Lq57;

    invoke-direct {v0, p0, p1}, Lq57;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->R:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->N:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic t(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
