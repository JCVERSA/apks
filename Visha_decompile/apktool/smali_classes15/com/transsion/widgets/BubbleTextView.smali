.class public Lcom/transsion/widgets/BubbleTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private bgColor:I

.field private bubbleOffset:I

.field private height:I

.field private labelHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private strokeColor:I

.field private strokeWidth:I

.field private triangleColor:I

.field private triangleDirection:I

.field private triangleHeight:I

.field private triangleWidth:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/transsion/widgets/BubbleTextView;->bubbleOffset:I

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgets/BubbleTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private drawRound(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 8

    int-to-float v1, p3

    iget v0, p0, Lcom/transsion/widgets/BubbleTextView;->triangleHeight:I

    add-int v2, v0, p3

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgets/BubbleTextView;->width:I

    sub-int/2addr v3, p3

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/widgets/BubbleTextView;->height:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, p3

    int-to-float v4, v4

    iget p0, p0, Lcom/transsion/widgets/BubbleTextView;->mRadius:I

    int-to-float v5, p0

    int-to-float v6, p0

    move-object v0, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 4

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iget p3, p0, Lcom/transsion/widgets/BubbleTextView;->width:I

    const/4 v0, 0x2

    div-int/2addr p3, v0

    iget v1, p0, Lcom/transsion/widgets/BubbleTextView;->bubbleOffset:I

    if-eqz v1, :cond_0

    move p3, v1

    :cond_0
    iget v1, p0, Lcom/transsion/widgets/BubbleTextView;->triangleColor:I

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/transsion/widgets/BubbleTextView;->triangleColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget v1, p0, Lcom/transsion/widgets/BubbleTextView;->triangleDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    if-eq v1, v0, :cond_2

    return-void

    :cond_2
    sget v1, Lcom/transsion/common/R$drawable;->ic_bubble_trangle:I

    invoke-virtual {p0, v1}, Lcom/transsion/widgets/BubbleTextView;->drawBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/transsion/widgets/BubbleTextView;->triangleWidth:I

    div-int/2addr v2, v0

    sub-int/2addr p3, v2

    int-to-float p3, p3

    iget v0, p0, Lcom/transsion/widgets/BubbleTextView;->height:I

    iget p0, p0, Lcom/transsion/widgets/BubbleTextView;->triangleHeight:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    invoke-virtual {p1, v1, p3, p0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/transsion/common/R$drawable;->ic_bubble_trangle_up:I

    invoke-virtual {p0, v1}, Lcom/transsion/widgets/BubbleTextView;->drawBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget p0, p0, Lcom/transsion/widgets/BubbleTextView;->triangleWidth:I

    div-int/2addr p0, v0

    sub-int/2addr p3, p0

    int-to-float p0, p3

    const/4 p3, 0x0

    invoke-virtual {p1, v1, p0, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawView(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgets/BubbleTextView;->strokeColor:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgets/BubbleTextView;->strokeWidth:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/BubbleTextView;->initStrokePaint()V

    iget-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/BubbleTextView;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->bubble_text_view_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgets/BubbleTextView;->strokeWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgets/BubbleTextView;->mRadius:I

    iget-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/widgets/BubbleTextView;->drawRound(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    iget-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/widgets/BubbleTextView;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    :cond_0
    iget v0, p0, Lcom/transsion/widgets/BubbleTextView;->bgColor:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->bubble_text_view_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/BubbleTextView;->mRadius:I

    iget-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/BubbleTextView;->strokeWidth:I

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/widgets/BubbleTextView;->drawRound(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    iget-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/BubbleTextView;->strokeWidth:I

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/widgets/BubbleTextView;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    :cond_1
    return-void
.end method

.method private getFontHeight()I
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgets/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private getFontWidth()I
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/transsion/widgets/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    if-lt v3, v2, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgets/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public drawBitmap(I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public getTriangleHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/BubbleTextView;->triangleHeight:I

    return p0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/common/R$dimen;->bubble_triangle_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/BubbleTextView;->triangleHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/common/R$dimen;->bubble_triangle_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/BubbleTextView;->triangleWidth:I

    if-eqz p2, :cond_0

    sget-object p3, Lcom/transsion/common/R$styleable;->BubbleTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/common/R$styleable;->BubbleTextView_bubbleColor:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/BubbleTextView;->bgColor:I

    sget p2, Lcom/transsion/common/R$styleable;->BubbleTextView_bubbleStrokeColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/BubbleTextView;->strokeColor:I

    sget p2, Lcom/transsion/common/R$styleable;->BubbleTextView_bubbleStrokeWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/BubbleTextView;->strokeWidth:I

    sget p2, Lcom/transsion/common/R$styleable;->BubbleTextView_triangleDirection:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/BubbleTextView;->triangleDirection:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/transsion/widgets/BubbleTextView;->initPaint()V

    return-void
.end method

.method public initPaint()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public initStrokePaint()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/BubbleTextView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/transsion/widgets/BubbleTextView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/BubbleTextView;->drawView(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    invoke-direct {p0}, Lcom/transsion/widgets/BubbleTextView;->getFontHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    mul-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgets/BubbleTextView;->labelHeight:I

    iget p2, p0, Lcom/transsion/widgets/BubbleTextView;->triangleHeight:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/widgets/BubbleTextView;->strokeWidth:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgets/BubbleTextView;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/widgets/BubbleTextView;->getFontWidth()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/widgets/BubbleTextView;->strokeWidth:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgets/BubbleTextView;->width:I

    iget p2, p0, Lcom/transsion/widgets/BubbleTextView;->height:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBubbleColor(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BubbleTextView;->bgColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStroke(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BubbleTextView;->strokeColor:I

    iput p2, p0, Lcom/transsion/widgets/BubbleTextView;->strokeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTriangleColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/BubbleTextView;->triangleColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTriangleDirection(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/BubbleTextView;->triangleDirection:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTriangleOffset(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/BubbleTextView;->bubbleOffset:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
