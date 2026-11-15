.class public Lcom/transsion/widgets/FadingEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final DEFAULT_GRADIENT_SIZE_DP:I = 0x50

.field private static final DIRTY_FLAG_BOTTOM:I = 0x2

.field private static final DIRTY_FLAG_LEFT:I = 0x4

.field private static final DIRTY_FLAG_RIGHT:I = 0x8

.field private static final DIRTY_FLAG_TOP:I = 0x1

.field private static final FADE_COLORS:[I

.field private static final FADE_COLORS_REVERSE:[I

.field public static final FADE_EDGE_BOTTOM:I = 0x2

.field public static final FADE_EDGE_LEFT:I = 0x4

.field public static final FADE_EDGE_RIGHT:I = 0x8

.field public static final FADE_EDGE_TOP:I = 0x1


# instance fields
.field private fadeBottom:Z

.field private fadeLeft:Z

.field private fadeRight:Z

.field private fadeTop:Z

.field private gradientDirtyFlags:I

.field private gradientPaintBottom:Landroid/graphics/Paint;

.field private gradientPaintLeft:Landroid/graphics/Paint;

.field private gradientPaintRight:Landroid/graphics/Paint;

.field private gradientPaintTop:Landroid/graphics/Paint;

.field private gradientRectBottom:Landroid/graphics/Rect;

.field private gradientRectLeft:Landroid/graphics/Rect;

.field private gradientRectRight:Landroid/graphics/Rect;

.field private gradientRectTop:Landroid/graphics/Rect;

.field private gradientSizeBottom:I

.field private gradientSizeLeft:I

.field private gradientSizeRight:I

.field private gradientSizeTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/transsion/widgets/FadingEdgeLayout;->FADE_COLORS:[I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgets/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/widgets/FadingEdgeLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/transsion/widgets/FadingEdgeLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p2}, Lcom/transsion/widgets/FadingEdgeLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/transsion/common/R$styleable;->FadingEdgeLayout:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, Lcom/transsion/common/R$styleable;->FadingEdgeLayout_fel_edge:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeTop:Z

    and-int/lit8 v3, v2, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeBottom:Z

    and-int/lit8 v3, v2, 0x4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeLeft:Z

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    move v4, v1

    :cond_3
    iput-boolean v4, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeRight:Z

    sget v2, Lcom/transsion/common/R$styleable;->FadingEdgeLayout_fel_size_top:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeTop:I

    sget v2, Lcom/transsion/common/R$styleable;->FadingEdgeLayout_fel_size_bottom:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeBottom:I

    sget v2, Lcom/transsion/common/R$styleable;->FadingEdgeLayout_fel_size_left:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeLeft:I

    sget v2, Lcom/transsion/common/R$styleable;->FadingEdgeLayout_fel_size_right:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeRight:I

    iget-boolean v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeTop:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeTop:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_4
    iget-boolean v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeLeft:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeLeft:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_5
    iget-boolean v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeBottom:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeBottom:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_6
    iget-boolean v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeRight:Z

    if-eqz v2, :cond_7

    if-lez v0, :cond_7

    iget v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_8
    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeRight:I

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeLeft:I

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeBottom:I

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeTop:I

    :goto_3
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    return-void
.end method

.method private initBottomGradient()V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeBottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v1, v3

    iget-object v4, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v8, v2

    int-to-float v7, v3

    int-to-float v9, v1

    sget-object v10, Lcom/transsion/widgets/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v0

    move v6, v8

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private initLeftGradient()V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeLeft:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v6, v1

    int-to-float v9, v2

    int-to-float v8, v0

    sget-object v10, Lcom/transsion/widgets/FadingEdgeLayout;->FADE_COLORS:[I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v3

    move v7, v9

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private initRightGradient()V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeRight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v6, v2

    int-to-float v9, v0

    int-to-float v8, v1

    sget-object v10, Lcom/transsion/widgets/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v3

    move v7, v9

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private initTopGradient()V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeTop:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v0, v2

    iget-object v4, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v8, v1

    int-to-float v7, v2

    int-to-float v9, v0

    sget-object v10, Lcom/transsion/widgets/FadingEdgeLayout;->FADE_COLORS:[I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v3

    move v6, v8

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeTop:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeBottom:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeLeft:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeRight:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v3, :cond_3

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    invoke-direct {p0}, Lcom/transsion/widgets/FadingEdgeLayout;->initTopGradient()V

    :cond_3
    iget v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    invoke-direct {p0}, Lcom/transsion/widgets/FadingEdgeLayout;->initLeftGradient()V

    :cond_4
    iget v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    invoke-direct {p0}, Lcom/transsion/widgets/FadingEdgeLayout;->initBottomGradient()V

    :cond_5
    iget v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x8

    if-ne v1, v5, :cond_6

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    invoke-direct {p0}, Lcom/transsion/widgets/FadingEdgeLayout;->initRightGradient()V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeTop:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeTop:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_7
    iget-boolean v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeBottom:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeBottom:I

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_8
    iget-boolean v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeLeft:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeLeft:I

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_9
    iget-boolean v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeRight:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeRight:I

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_a
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_b
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_3

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p3, p1, 0xc

    iput p3, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    iget-boolean p3, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeRight:Z

    if-eqz p3, :cond_0

    or-int/lit8 p1, p1, 0xc

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_0
    if-eqz p3, :cond_1

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeTop:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeBottom:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_3
    if-eq p2, p4, :cond_7

    iget-boolean p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeRight:Z

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_4
    if-eqz p1, :cond_5

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_5
    iget-boolean p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeTop:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_6
    iget-boolean p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeBottom:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_7
    return-void
.end method

.method public setFadeEdges(ZZZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeTop:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeTop:Z

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeLeft:Z

    if-eq p1, p2, :cond_1

    iput-boolean p2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeLeft:Z

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeBottom:Z

    if-eq p1, p3, :cond_2

    iput-boolean p3, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeBottom:Z

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeRight:Z

    if-eq p1, p4, :cond_3

    iput-boolean p4, p0, Lcom/transsion/widgets/FadingEdgeLayout;->fadeRight:Z

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_3
    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public setFadeSizes(IIII)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeTop:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeTop:I

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_0
    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeLeft:I

    if-eq p1, p2, :cond_1

    iput p2, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeLeft:I

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_1
    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeBottom:I

    if-eq p1, p3, :cond_2

    iput p3, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeBottom:I

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_2
    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeRight:I

    if-eq p1, p4, :cond_3

    iput p4, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientSizeRight:I

    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_3
    iget p1, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-eq v0, p2, :cond_1

    iget v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-eq v0, p3, :cond_2

    iget v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p4, :cond_3

    iget v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/transsion/widgets/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
