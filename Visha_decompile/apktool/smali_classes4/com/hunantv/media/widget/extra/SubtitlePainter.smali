.class final Lcom/hunantv/media/widget/extra/SubtitlePainter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "SubtitlePainter"


# instance fields
.field private applyEmbeddedFontSizes:Z

.field private applyEmbeddedStyles:Z

.field private backgroundColor:I

.field private bitmapRect:Landroid/graphics/Rect;

.field private bottomPaddingFraction:F

.field private cueBitmap:Landroid/graphics/Bitmap;

.field private cueBitmapHeight:F

.field private cueLine:F

.field private cueLineAnchor:I

.field private cueLineType:I

.field private cuePosition:F

.field private cuePositionAnchor:I

.field private cueSize:F

.field private cueText:Ljava/lang/CharSequence;

.field private cueTextAlignment:Landroid/text/Layout$Alignment;

.field private cueTextSizePx:F

.field private defaultTextSizePx:F

.field private edgeColor:I

.field private edgeType:I

.field private foregroundColor:I

.field private final outlineWidth:F

.field private final paint:Landroid/graphics/Paint;

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textTop:I

.field private windowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1010217

    const v1, 0x1010218

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->spacingAdd:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->spacingMult:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->outlineWidth:F

    iput p1, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->shadowRadius:F

    iput p1, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->shadowOffset:F

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private static areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private drawBitmapLayout(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLayout(Landroid/graphics/Canvas;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/extra/SubtitlePainter;->drawTextLayout(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/widget/extra/SubtitlePainter;->drawBitmapLayout(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawTextLayout(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->windowColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->windowColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaddingX:I

    neg-int v2, v2

    int-to-float v4, v2

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaddingX:I

    add-int/2addr v2, v3

    int-to-float v6, v2

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->edgeType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->outlineWidth:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->edgeColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->shadowRadius:F

    iget v5, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->shadowOffset:F

    iget v6, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->edgeColor:I

    invoke-virtual {v2, v4, v5, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_8

    :cond_4
    if-ne v2, v5, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    const/4 v2, -0x1

    if-eqz v4, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->edgeColor:I

    :goto_1
    if-eqz v4, :cond_7

    iget v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->edgeColor:I

    :cond_7
    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->shadowRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget-object v6, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->shadowRadius:F

    neg-float v8, v4

    invoke-virtual {v6, v7, v8, v8, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->shadowRadius:F

    invoke-virtual {v5, v6, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private setupBitmapLayout()V
    .locals 7

    iget v0, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentRight:I

    iget v1, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentLeft:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentBottom:I

    iget v3, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentTop:I

    sub-int/2addr v2, v3

    int-to-float v1, v1

    int-to-float v0, v0

    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cuePosition:F

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    int-to-float v3, v3

    int-to-float v2, v2

    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLine:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueSize:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueBitmapHeight:F

    const/4 v5, 0x1

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    :goto_0
    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_1

    :cond_0
    int-to-float v2, v0

    iget-object v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    goto :goto_0

    :goto_1
    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLineAnchor:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    int-to-float v4, v0

    :goto_2
    sub-float/2addr v1, v4

    goto :goto_3

    :cond_1
    if-ne v4, v5, :cond_2

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    goto :goto_2

    :cond_2
    :goto_3
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cuePositionAnchor:I

    if-ne v4, v6, :cond_3

    int-to-float v4, v2

    :goto_4
    sub-float/2addr v3, v4

    goto :goto_5

    :cond_3
    if-ne v4, v5, :cond_4

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    goto :goto_4

    :cond_4
    :goto_5
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v1

    add-int/2addr v2, v3

    invoke-direct {v4, v1, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setupTextLayout()V
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentRight:I

    iget v2, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentLeft:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentBottom:I

    iget v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentTop:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->defaultTextSizePx:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->defaultTextSizePx:F

    const/high16 v4, 0x3e000000    # 0.125f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v4, v3, 0x2

    sub-int v5, v1, v4

    iget v6, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueSize:F

    const/4 v7, 0x1

    cmpl-float v8, v6, v7

    if-eqz v8, :cond_0

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    :cond_0
    const-string v6, "SubtitlePainter"

    if-gtz v5, :cond_1

    const-string v0, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    iget-boolean v9, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->applyEmbeddedStyles:Z

    const/high16 v10, 0xff0000

    const/16 v16, 0x0

    const/4 v15, 0x0

    if-nez v9, :cond_2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_2
    iget-boolean v9, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->applyEmbeddedFontSizes:Z

    if-nez v9, :cond_5

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const-class v11, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v9, v15, v8, v11}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/AbsoluteSizeSpan;

    const-class v12, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v9, v15, v8, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/RelativeSizeSpan;

    array-length v12, v11

    move v13, v15

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    invoke-virtual {v9, v14}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    array-length v11, v8

    move v12, v15

    :goto_1
    if-ge v12, v11, :cond_4

    aget-object v13, v8, v12

    invoke-virtual {v9, v13}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v8, v9

    goto :goto_3

    :cond_5
    iget v9, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueTextSizePx:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_6

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    iget v11, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueTextSizePx:F

    float-to-int v11, v11

    invoke-direct {v8, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v9, v8, v15, v11, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_6
    :goto_3
    iget v9, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->backgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lez v9, :cond_7

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    iget v11, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->backgroundColor:I

    invoke-direct {v8, v11}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v9, v8, v15, v11, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v18, v9

    goto :goto_4

    :cond_7
    move-object/from16 v18, v8

    :goto_4
    iget-object v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v8, :cond_8

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_8
    move-object/from16 v21, v8

    new-instance v14, Landroid/text/StaticLayout;

    iget-object v10, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v13, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->spacingMult:F

    iget v12, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->spacingAdd:F

    const/16 v17, 0x1

    move-object v8, v14

    move-object/from16 v9, v18

    move v11, v5

    move/from16 v19, v12

    move-object/from16 v12, v21

    move-object v7, v14

    move/from16 v14, v19

    move/from16 v25, v3

    move v3, v15

    move/from16 v15, v17

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    iget-object v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    move v9, v3

    move v15, v9

    :goto_5
    if-ge v15, v8, :cond_9

    iget-object v10, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v15}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_9
    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueSize:F

    const/4 v10, 0x1

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_a

    if-ge v9, v5, :cond_a

    goto :goto_6

    :cond_a
    move v5, v9

    :goto_6
    add-int/2addr v5, v4

    iget v4, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cuePosition:F

    cmpl-float v8, v4, v10

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v8, :cond_d

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentLeft:I

    add-int/2addr v1, v4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cuePositionAnchor:I

    if-ne v8, v10, :cond_b

    sub-int/2addr v1, v5

    goto :goto_7

    :cond_b
    if-ne v8, v9, :cond_c

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v5

    div-int/2addr v1, v10

    :cond_c
    :goto_7
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v5, v1

    iget v4, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentRight:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_8

    :cond_d
    sub-int/2addr v1, v5

    div-int/2addr v1, v10

    iget v4, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentLeft:I

    add-int/2addr v1, v4

    add-int v4, v1, v5

    :goto_8
    sub-int/2addr v4, v1

    if-gtz v4, :cond_e

    const-string v0, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget v5, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLine:F

    const/4 v6, 0x1

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_14

    iget v6, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLineType:I

    if-nez v6, :cond_f

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    :goto_9
    iget v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentTop:I

    :goto_a
    add-int/2addr v2, v3

    goto :goto_b

    :cond_f
    iget-object v2, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget-object v5, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLine:F

    cmpl-float v5, v3, v16

    if-ltz v5, :cond_10

    int-to-float v2, v2

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_9

    :cond_10
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v3, v5

    int-to-float v2, v2

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentBottom:I

    goto :goto_a

    :goto_b
    iget v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLineAnchor:I

    if-ne v3, v10, :cond_11

    sub-int/2addr v2, v7

    goto :goto_c

    :cond_11
    if-ne v3, v9, :cond_12

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v7

    div-int/2addr v2, v10

    :cond_12
    :goto_c
    add-int v3, v2, v7

    iget v5, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentBottom:I

    if-le v3, v5, :cond_13

    sub-int v2, v5, v7

    goto :goto_d

    :cond_13
    iget v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentTop:I

    if-ge v2, v3, :cond_15

    move v2, v3

    goto :goto_d

    :cond_14
    iget v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentBottom:I

    sub-int/2addr v3, v7

    int-to-float v2, v2

    iget v5, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->bottomPaddingFraction:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int v2, v3, v2

    :cond_15
    :goto_d
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v5, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v6, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->spacingMult:F

    iget v7, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->spacingAdd:F

    const/16 v24, 0x1

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move/from16 v20, v4

    move/from16 v22, v6

    move/from16 v23, v7

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    iput v1, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textLeft:I

    iput v2, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textTop:I

    move/from16 v1, v25

    iput v1, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaddingX:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/hunantv/media/a/b;ZZLcom/hunantv/media/a/a;FFFLandroid/graphics/Canvas;IIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    iget-object v13, v1, Lcom/hunantv/media/a/b;->c:Landroid/graphics/Bitmap;

    if-nez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-eqz v13, :cond_3

    iget-object v14, v1, Lcom/hunantv/media/a/b;->a:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    return-void

    :cond_1
    iget-boolean v14, v1, Lcom/hunantv/media/a/b;->k:Z

    if-eqz v14, :cond_2

    if-eqz v2, :cond_2

    iget v14, v1, Lcom/hunantv/media/a/b;->l:I

    goto :goto_1

    :cond_2
    iget v14, v4, Lcom/hunantv/media/a/a;->d:I

    goto :goto_1

    :cond_3
    const/high16 v14, -0x1000000

    :goto_1
    iget-object v15, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    iget-object v8, v1, Lcom/hunantv/media/a/b;->a:Ljava/lang/CharSequence;

    invoke-static {v15, v8}, Lcom/hunantv/media/widget/extra/SubtitlePainter;->areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    iget-object v15, v1, Lcom/hunantv/media/a/b;->b:Landroid/text/Layout$Alignment;

    invoke-static {v8, v15}, Lcom/hunantv/media/utils/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v15, v1, Lcom/hunantv/media/a/b;->c:Landroid/graphics/Bitmap;

    if-ne v8, v15, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLine:F

    iget v15, v1, Lcom/hunantv/media/a/b;->d:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLineType:I

    iget v15, v1, Lcom/hunantv/media/a/b;->e:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLineAnchor:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v15, v1, Lcom/hunantv/media/a/b;->f:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/hunantv/media/utils/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cuePosition:F

    iget v15, v1, Lcom/hunantv/media/a/b;->g:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cuePositionAnchor:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v15, v1, Lcom/hunantv/media/a/b;->h:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/hunantv/media/utils/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueSize:F

    iget v15, v1, Lcom/hunantv/media/a/b;->i:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueBitmapHeight:F

    iget v15, v1, Lcom/hunantv/media/a/b;->j:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget-boolean v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->applyEmbeddedStyles:Z

    if-ne v8, v2, :cond_4

    iget-boolean v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->applyEmbeddedFontSizes:Z

    if-ne v8, v3, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->foregroundColor:I

    iget v15, v4, Lcom/hunantv/media/a/a;->b:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->backgroundColor:I

    iget v15, v4, Lcom/hunantv/media/a/a;->c:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->windowColor:I

    if-ne v8, v14, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->edgeType:I

    iget v15, v4, Lcom/hunantv/media/a/a;->e:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->edgeColor:I

    iget v15, v4, Lcom/hunantv/media/a/a;->f:I

    if-ne v8, v15, :cond_4

    iget-object v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iget-object v15, v4, Lcom/hunantv/media/a/a;->g:Landroid/graphics/Typeface;

    invoke-static {v8, v15}, Lcom/hunantv/media/utils/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->defaultTextSizePx:F

    cmpl-float v8, v8, v5

    if-nez v8, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueTextSizePx:F

    cmpl-float v8, v8, v6

    if-nez v8, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentLeft:I

    if-ne v8, v9, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentTop:I

    if-ne v8, v10, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentRight:I

    if-ne v8, v11, :cond_4

    iget v8, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentBottom:I

    if-ne v8, v12, :cond_4

    move-object/from16 v8, p8

    invoke-direct {v0, v8, v13}, Lcom/hunantv/media/widget/extra/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    return-void

    :cond_4
    move-object/from16 v8, p8

    iget-object v15, v1, Lcom/hunantv/media/a/b;->a:Ljava/lang/CharSequence;

    iput-object v15, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    iget-object v15, v1, Lcom/hunantv/media/a/b;->b:Landroid/text/Layout$Alignment;

    iput-object v15, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    iget-object v15, v1, Lcom/hunantv/media/a/b;->c:Landroid/graphics/Bitmap;

    iput-object v15, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget v15, v1, Lcom/hunantv/media/a/b;->d:F

    iput v15, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLine:F

    iget v15, v1, Lcom/hunantv/media/a/b;->e:I

    iput v15, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLineType:I

    iget v15, v1, Lcom/hunantv/media/a/b;->f:I

    iput v15, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueLineAnchor:I

    iget v15, v1, Lcom/hunantv/media/a/b;->g:F

    iput v15, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cuePosition:F

    iget v15, v1, Lcom/hunantv/media/a/b;->h:I

    iput v15, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cuePositionAnchor:I

    iget v15, v1, Lcom/hunantv/media/a/b;->i:F

    iput v15, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueSize:F

    iget v1, v1, Lcom/hunantv/media/a/b;->j:F

    iput v1, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueBitmapHeight:F

    iput-boolean v2, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->applyEmbeddedStyles:Z

    iput-boolean v3, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->applyEmbeddedFontSizes:Z

    iget v1, v4, Lcom/hunantv/media/a/a;->b:I

    iput v1, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->foregroundColor:I

    iget v1, v4, Lcom/hunantv/media/a/a;->c:I

    iput v1, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->backgroundColor:I

    iput v14, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->windowColor:I

    iget v1, v4, Lcom/hunantv/media/a/a;->e:I

    iput v1, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->edgeType:I

    iget v1, v4, Lcom/hunantv/media/a/a;->f:I

    iput v1, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->edgeColor:I

    iget-object v1, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget-object v2, v4, Lcom/hunantv/media/a/a;->g:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput v5, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->defaultTextSizePx:F

    iput v6, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->cueTextSizePx:F

    iput v7, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->bottomPaddingFraction:F

    iput v9, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentLeft:I

    iput v10, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentTop:I

    iput v11, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentRight:I

    iput v12, v0, Lcom/hunantv/media/widget/extra/SubtitlePainter;->parentBottom:I

    if-eqz v13, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/widget/extra/SubtitlePainter;->setupTextLayout()V

    goto :goto_2

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/hunantv/media/widget/extra/SubtitlePainter;->setupBitmapLayout()V

    :goto_2
    invoke-direct {v0, v8, v13}, Lcom/hunantv/media/widget/extra/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    return-void
.end method
