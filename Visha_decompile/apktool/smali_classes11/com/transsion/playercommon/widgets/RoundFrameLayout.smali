.class public Lcom/transsion/playercommon/widgets/RoundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Landroid/graphics/RectF;

.field public d:Landroid/graphics/RectF;

.field public e:F

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public mSolidColor:I

.field public mStrokeColor:I

.field public mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/playercommon/widgets/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/playercommon/widgets/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->b:Ljava/lang/String;

    .line 5
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->c:Landroid/graphics/RectF;

    .line 6
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->d:Landroid/graphics/RectF;

    const/4 p3, 0x0

    .line 7
    iput p3, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->e:F

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->f:Landroid/graphics/Paint;

    .line 9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->g:Landroid/graphics/Paint;

    .line 10
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->h:Landroid/graphics/Paint;

    .line 11
    iput p3, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeWidth:F

    const/4 p3, -0x1

    .line 12
    iput p3, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeColor:I

    .line 13
    iput p3, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mSolidColor:I

    if-eqz p2, :cond_0

    .line 14
    sget-object v3, Lcom/transsion/playercommon/R$styleable;->RoundFrameLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    sget p2, Lcom/transsion/playercommon/R$styleable;->RoundFrameLayout_stroke_color:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeColor:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeColor:I

    .line 16
    sget p2, Lcom/transsion/playercommon/R$styleable;->RoundFrameLayout_solid_color:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mSolidColor:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mSolidColor:I

    .line 17
    sget p2, Lcom/transsion/playercommon/R$styleable;->RoundFrameLayout_stroke_width:I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeWidth:F

    .line 18
    sget p2, Lcom/transsion/playercommon/R$styleable;->RoundFrameLayout_round_corner:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->e:F

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/4 p1, 0x1

    .line 20
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 22
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    iget p1, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeColor:I

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget p1, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeWidth:F

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget p1, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mSolidColor:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->g:Landroid/graphics/Paint;

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->c:Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->e:F

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->c:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    add-float/2addr v3, v6

    iget v6, v2, Landroid/graphics/RectF;->top:F

    div-float v7, v4, v5

    add-float/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->right:F

    div-float v8, v4, v5

    sub-float/2addr v7, v8

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeWidth:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->d:Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->e:F

    div-float v3, v0, v5

    sub-float v3, v2, v3

    div-float/2addr v0, v5

    sub-float/2addr v2, v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->c:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setCorner(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->e:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->e:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeColor:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeWidth:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeWidth:F

    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->h:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
