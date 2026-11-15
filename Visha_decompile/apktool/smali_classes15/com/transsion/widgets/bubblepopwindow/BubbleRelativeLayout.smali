.class public Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;
    }
.end annotation


# static fields
.field public static CORNER_RADIUS:F = 8.0f

.field public static LEG_HALF_BASE:I = 0x1e

.field public static MIN_LEG_DISTANCE:F = 0.0f

.field public static PADDING:I = 0x0

.field public static SHADOW_COLOR:I = 0x0

.field public static STROKE_WIDTH:F = 2.0f


# instance fields
.field private mBubbleLegOffset:F

.field private final mBubbleLegPrototype:Landroid/graphics/Path;

.field private mBubbleOrientation:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

.field private mFillPaint:Landroid/graphics/Paint;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->SHADOW_COLOR:I

    sget v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->PADDING:I

    sget v1, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->LEG_HALF_BASE:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->MIN_LEG_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-object p3, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mFillPaint:Landroid/graphics/Paint;

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPath:Landroid/graphics/Path;

    .line 6
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleLegPrototype:Landroid/graphics/Path;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x3f400000    # 0.75f

    .line 8
    iput p3, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleLegOffset:F

    .line 9
    sget-object p3, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->LEFT:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    iput-object p3, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleOrientation:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_1

    sget-object v0, Lcom/transsion/common/R$styleable;->bubbleWindow:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/transsion/common/R$styleable;->bubbleWindow_bubbleWindowpadding:I

    sget v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->PADDING:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    sput p2, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->PADDING:I

    sget p2, Lcom/transsion/common/R$styleable;->bubbleWindow_bubbleWindowshadowColor:I

    sget v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->SHADOW_COLOR:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sput p2, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->SHADOW_COLOR:I

    sget p2, Lcom/transsion/common/R$styleable;->bubbleWindow_bubbleWindowhalfBaseOfLeg:I

    sget v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->LEG_HALF_BASE:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    sput p2, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->LEG_HALF_BASE:I

    sget v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->PADDING:I

    add-int/2addr v0, p2

    int-to-float p2, v0

    sput p2, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->MIN_LEG_DISTANCE:F

    sget p2, Lcom/transsion/common/R$styleable;->bubbleWindow_bubbleWindowstrokeWidth:I

    sget v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->STROKE_WIDTH:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    sput p2, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->STROKE_WIDTH:F

    sget p2, Lcom/transsion/common/R$styleable;->bubbleWindow_bubbleWindowcornerRadius:I

    sget v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->CORNER_RADIUS:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    sput p2, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->CORNER_RADIUS:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    throw p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    sget p2, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->SHADOW_COLOR:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    sget v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->STROKE_WIDTH:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/CornerPathEffect;

    sget v2, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->CORNER_RADIUS:F

    invoke-direct {v0, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mFillPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v6, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x43480000    # 200.0f

    const/4 v5, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    sget v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->SHADOW_COLOR:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-direct {p0}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->renderBubbleLegPrototype()V

    sget p1, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->PADDING:I

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private renderBubbleLegMatrix(FF)Landroid/graphics/Matrix;
    .locals 5

    iget v0, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleLegOffset:F

    sget v1, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->MIN_LEG_DISTANCE:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget v1, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->MIN_LEG_DISTANCE:F

    sub-float v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    sget-object v3, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$1;->$SwitchMap$com$transsion$widgets$bubblepopwindow$BubbleRelativeLayout$BubbleLegOrientation:[I

    iget-object p0, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleOrientation:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p0, v3, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    move p2, v1

    move p1, v4

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->MIN_LEG_DISTANCE:F

    sub-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {v2, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->MIN_LEG_DISTANCE:F

    sub-float/2addr p2, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {v2, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_2
    sget p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->MIN_LEG_DISTANCE:F

    sub-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {v2, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    move p2, v4

    :goto_0
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v2
.end method

.method private renderBubbleLegPrototype()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleLegPrototype:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleLegPrototype:Landroid/graphics/Path;

    sget v1, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->PADDING:I

    int-to-float v2, v1

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleLegPrototype:Landroid/graphics/Path;

    sget v1, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->PADDING:I

    int-to-float v2, v1

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p0, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleLegPrototype:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    iget-object v2, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    sget v4, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->PADDING:I

    int-to-float v5, v4

    int-to-float v6, v4

    int-to-float v7, v4

    sub-float v7, v0, v7

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-direct {v3, v5, v6, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget v4, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->CORNER_RADIUS:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleLegPrototype:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->renderBubbleLegMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget v2, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->STROKE_WIDTH:F

    sub-float v3, v0, v2

    div-float/2addr v3, v0

    sub-float v2, v1, v2

    div-float/2addr v2, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    div-float/2addr v1, v4

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setBubbleParams(Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;F)V
    .locals 0

    iput p2, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleLegOffset:F

    iput-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->mBubbleOrientation:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    return-void
.end method
