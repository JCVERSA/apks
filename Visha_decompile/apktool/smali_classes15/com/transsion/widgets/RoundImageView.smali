.class public Lcom/transsion/widgets/RoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field public static final TYPE_CIRCLE:I = 0x0

.field public static final TYPE_OVAL:I = 0x2

.field public static final TYPE_ROUND:I = 0x1


# instance fields
.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderWidth:F

.field private mCornerRadius:F

.field private mLeftBottomCornerRadius:F

.field private mLeftTopCornerRadius:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRadius:F

.field private mRightBottomCornerRadius:F

.field private mRightTopCornerRadius:F

.field private mRoundPath:Landroid/graphics/Path;

.field private mRoundRect:Landroid/graphics/RectF;

.field private mWidth:I

.field private type:I

.field private useUnitDip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/transsion/widgets/RoundImageView;->useUnitDip:Z

    .line 5
    sget-object v1, Lcom/transsion/common/R$styleable;->RoundImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/transsion/common/R$styleable;->RoundImageView_type:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/RoundImageView;->type:I

    .line 7
    sget p2, Lcom/transsion/common/R$styleable;->RoundImageView_border_color:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/RoundImageView;->mBorderColor:I

    .line 8
    sget p2, Lcom/transsion/common/R$styleable;->RoundImageView_border_width:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/RoundImageView;->mBorderWidth:F

    .line 9
    sget p2, Lcom/transsion/common/R$styleable;->RoundImageView_corner_radius:I

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/transsion/widgets/RoundImageView;->dp2px(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/RoundImageView;->mCornerRadius:F

    .line 10
    sget p2, Lcom/transsion/common/R$styleable;->RoundImageView_leftTop_corner_radius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/RoundImageView;->mLeftTopCornerRadius:F

    .line 11
    sget p2, Lcom/transsion/common/R$styleable;->RoundImageView_leftBottom_corner_radius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/RoundImageView;->mLeftBottomCornerRadius:F

    .line 12
    sget p2, Lcom/transsion/common/R$styleable;->RoundImageView_rightTop_corner_radius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/RoundImageView;->mRightTopCornerRadius:F

    .line 13
    sget p2, Lcom/transsion/common/R$styleable;->RoundImageView_rightBottom_corner_radius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/RoundImageView;->mRightBottomCornerRadius:F

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-direct {p0}, Lcom/transsion/widgets/RoundImageView;->init()V

    return-void
.end method

.method private dp2px(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgets/RoundImageView;->useUnitDip:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "drawableToBitmap "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RoundImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lcom/transsion/widgets/RoundImageView;->updateStrokePaint()V

    return-void
.end method

.method private setRoundPath()V
    .locals 14

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    iget-object v9, p0, Lcom/transsion/widgets/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    iget v9, p0, Lcom/transsion/widgets/RoundImageView;->mLeftTopCornerRadius:F

    const/4 v10, 0x0

    cmpl-float v11, v9, v10

    if-nez v11, :cond_0

    iget v11, p0, Lcom/transsion/widgets/RoundImageView;->mLeftBottomCornerRadius:F

    cmpl-float v11, v11, v10

    if-nez v11, :cond_0

    iget v11, p0, Lcom/transsion/widgets/RoundImageView;->mRightTopCornerRadius:F

    cmpl-float v11, v11, v10

    if-nez v11, :cond_0

    iget v11, p0, Lcom/transsion/widgets/RoundImageView;->mRightBottomCornerRadius:F

    cmpl-float v10, v11, v10

    if-nez v10, :cond_0

    iget-object v9, p0, Lcom/transsion/widgets/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/transsion/widgets/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget p0, p0, Lcom/transsion/widgets/RoundImageView;->mCornerRadius:F

    new-array v8, v8, [F

    aput p0, v8, v7

    aput p0, v8, v6

    aput p0, v8, v5

    aput p0, v8, v4

    aput p0, v8, v3

    aput p0, v8, v2

    aput p0, v8, v1

    aput p0, v8, v0

    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v10, v8, p0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/transsion/widgets/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/transsion/widgets/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v12, p0, Lcom/transsion/widgets/RoundImageView;->mRightTopCornerRadius:F

    iget v13, p0, Lcom/transsion/widgets/RoundImageView;->mRightBottomCornerRadius:F

    iget p0, p0, Lcom/transsion/widgets/RoundImageView;->mLeftBottomCornerRadius:F

    new-array v8, v8, [F

    aput v9, v8, v7

    aput v9, v8, v6

    aput v12, v8, v5

    aput v12, v8, v4

    aput v13, v8, v3

    aput v13, v8, v2

    aput p0, v8, v1

    aput p0, v8, v0

    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v11, v8, p0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method

.method private setupShader()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/widgets/RoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/transsion/widgets/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/transsion/widgets/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget v1, p0, Lcom/transsion/widgets/RoundImageView;->type:I

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_6

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v4, p0, Lcom/transsion/widgets/RoundImageView;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v1, v1

    div-float v3, v4, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v4, p0, Lcom/transsion/widgets/RoundImageView;->mWidth:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v4, p0, Lcom/transsion/widgets/RoundImageView;->mWidth:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/widgets/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/widgets/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/transsion/widgets/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/widgets/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private updateStrokePaint()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/RoundImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderWidth:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/RoundImageView;->mCornerRadius:F

    return p0
.end method

.method public isUseUnitDip()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/RoundImageView;->useUnitDip:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/RoundImageView;->setupShader()V

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgets/RoundImageView;->setRoundPath()V

    iget-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderWidth:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mRoundPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mRadius:F

    iget v1, p0, Lcom/transsion/widgets/RoundImageView;->mBorderWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v1, v3

    add-float/2addr v4, v0

    div-float/2addr v1, v3

    add-float/2addr v1, v0

    iget-object v5, p0, Lcom/transsion/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderWidth:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_3

    iget v1, p0, Lcom/transsion/widgets/RoundImageView;->mRadius:F

    div-float v2, v0, v3

    add-float/2addr v2, v1

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/transsion/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderWidth:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgets/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->type:I

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/RoundImageView;->mWidth:I

    div-int/lit8 p2, p1, 0x2

    int-to-float p2, p2

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/widgets/RoundImageView;->mRadius:F

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget p3, p0, Lcom/transsion/widgets/RoundImageView;->type:I

    const/4 p4, 0x1

    if-eq p3, p4, :cond_0

    const/4 p4, 0x2

    if-ne p3, p4, :cond_1

    :cond_0
    iget-object p3, p0, Lcom/transsion/widgets/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget p0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderWidth:F

    const/high16 p4, 0x40000000    # 2.0f

    div-float v0, p0, p4

    div-float v1, p0, p4

    int-to-float p1, p1

    div-float v2, p0, p4

    sub-float/2addr p1, v2

    int-to-float p2, p2

    div-float/2addr p0, p4

    sub-float/2addr p2, p0

    invoke-virtual {p3, v0, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    return-void
.end method

.method public setBorderColor(I)Lcom/transsion/widgets/RoundImageView;
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgets/RoundImageView;->mBorderColor:I

    invoke-direct {p0}, Lcom/transsion/widgets/RoundImageView;->updateStrokePaint()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public setBorderWidth(I)Lcom/transsion/widgets/RoundImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/RoundImageView;->dp2px(I)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mBorderWidth:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/transsion/widgets/RoundImageView;->mBorderWidth:F

    invoke-direct {p0}, Lcom/transsion/widgets/RoundImageView;->updateStrokePaint()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public setCornerRadius(I)Lcom/transsion/widgets/RoundImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/RoundImageView;->dp2px(I)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mCornerRadius:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/transsion/widgets/RoundImageView;->mCornerRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public setLeftBottomCornerRadius(I)Lcom/transsion/widgets/RoundImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/RoundImageView;->dp2px(I)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mLeftBottomCornerRadius:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/transsion/widgets/RoundImageView;->mLeftBottomCornerRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public setLeftTopCornerRadius(I)Lcom/transsion/widgets/RoundImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/RoundImageView;->dp2px(I)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mLeftTopCornerRadius:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/transsion/widgets/RoundImageView;->mLeftTopCornerRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public setRightBottomCornerRadius(I)Lcom/transsion/widgets/RoundImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/RoundImageView;->dp2px(I)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mRightBottomCornerRadius:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/transsion/widgets/RoundImageView;->mRightBottomCornerRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public setRightTopCornerRadius(I)Lcom/transsion/widgets/RoundImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/RoundImageView;->dp2px(I)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->mRightTopCornerRadius:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/transsion/widgets/RoundImageView;->mRightTopCornerRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public setType(I)Lcom/transsion/widgets/RoundImageView;
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/RoundImageView;->type:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/transsion/widgets/RoundImageView;->type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iput v0, p0, Lcom/transsion/widgets/RoundImageView;->type:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-object p0
.end method

.method public setUseUnitDip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/RoundImageView;->useUnitDip:Z

    return-void
.end method
