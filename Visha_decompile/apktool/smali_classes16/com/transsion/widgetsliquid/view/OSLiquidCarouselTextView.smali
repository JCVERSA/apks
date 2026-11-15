.class public Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;
.super Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1e
.end annotation


# instance fields
.field public N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

.field public O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

.field public P:Landroid/content/Context;

.field public Q:I

.field public R:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->Q:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->R:Z

    .line 4
    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->P:Landroid/content/Context;

    .line 5
    new-instance v0, Lcom/transsion/widgetsliquid/view/CarouselTextView;

    invoke-direct {v0, p1}, Lcom/transsion/widgetsliquid/view/CarouselTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    .line 6
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->v()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->Q:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->R:Z

    .line 10
    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->P:Landroid/content/Context;

    .line 11
    new-instance v0, Lcom/transsion/widgetsliquid/view/CarouselTextView;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetsliquid/view/CarouselTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    .line 12
    new-instance v0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    .line 13
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->v()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->Q:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->R:Z

    .line 17
    new-instance v0, Lcom/transsion/widgetsliquid/view/CarouselTextView;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/CarouselTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    .line 18
    new-instance v0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    .line 19
    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->P:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->v()V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->w()V

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)Lcom/transsion/widgetsliquid/view/CarouselTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    return-object p0
.end method

.method public static bridge synthetic t(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->Q:I

    return-void
.end method

.method private v()V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->P:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setBackgroundLeftRightMargin(F)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    new-instance v1, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$a;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    new-instance v1, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView$b;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->setOnWidthChangedListener(Lcom/transsion/widgetsliquid/view/CarouselTextView$a;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->P:Landroid/content/Context;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lyj1;->d(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->P:Landroid/content/Context;

    invoke-static {v1, v2}, Lyj1;->d(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget-boolean v1, Lolb;->P:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->O:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    sget-object v1, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->BUTTON:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    sget-object v1, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->CAROUSEL_TEXTVIEW_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getCarouselTextView()Lcom/transsion/widgetsliquid/view/CarouselTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->onAttachedToWindow()V

    new-instance v0, Lr57;

    invoke-direct {v0, p0}, Lr57;-><init>(Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->R:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->_setMaxWidth(I)V

    iput-boolean v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->R:Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->onMeasure(II)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->Q:I

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMeasuredWidth = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OSLiquidCarouselTextView"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-eq v0, p1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->onSizeChanged(IIII)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final synthetic w()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidCarouselTextView;->N:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->forceScrollCheck()V

    :cond_0
    return-void
.end method
