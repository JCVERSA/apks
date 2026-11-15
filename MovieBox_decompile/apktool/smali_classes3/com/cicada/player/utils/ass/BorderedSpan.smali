.class public Lcom/cicada/player/utils/ass/BorderedSpan;
.super Landroid/text/style/ReplacementSpan;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;
    }
.end annotation


# instance fields
.field final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;


# direct methods
.method public constructor <init>(Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private fillPainStyle(Landroid/graphics/Paint;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->fontName:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 14
    .line 15
    iget-wide v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->fontSize:D

    .line 16
    .line 17
    double-to-float v0, v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 22
    .line 23
    iget v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mPrimaryColour:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 29
    .line 30
    iget-boolean v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mUnderline:Z

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 36
    .line 37
    iget-boolean v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mStrikeOut:Z

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 43
    .line 44
    iget-boolean v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mBold:Z

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 50
    .line 51
    iget-boolean v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mItalic:Z

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const/high16 v0, -0x41800000    # -0.25f

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v0, v1

    .line 60
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 64
    .line 65
    iget-wide v2, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mShadowWidth:D

    .line 66
    .line 67
    double-to-float v4, v2

    .line 68
    double-to-float v2, v2

    .line 69
    iget v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mShadowColor:I

    .line 70
    .line 71
    invoke-virtual {p1, v1, v4, v2, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p7

    .line 3
    .line 4
    iget-object v2, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 5
    .line 6
    iget-wide v2, v2, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineWidth:D

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmpl-double v2, v2, v4

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderPaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {p0, v2}, Lcom/cicada/player/utils/ass/BorderedSpan;->fillPainStyle(Landroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 22
    .line 23
    iget-wide v3, v3, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineWidth:D

    .line 24
    .line 25
    double-to-float v3, v3

    .line 26
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    iget-object v3, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 32
    .line 33
    iget v3, v3, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineColour:I

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    int-to-float v9, v1

    .line 39
    iget-object v10, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderPaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    move-object v4, p1

    .line 42
    move-object v5, p2

    .line 43
    move v6, p3

    .line 44
    move v7, p4

    .line 45
    move/from16 v8, p5

    .line 46
    .line 47
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    move-object/from16 v7, p9

    .line 51
    .line 52
    invoke-direct {p0, v7}, Lcom/cicada/player/utils/ass/BorderedSpan;->fillPainStyle(Landroid/graphics/Paint;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-object/from16 v7, p9

    .line 57
    .line 58
    :goto_0
    int-to-float v6, v1

    .line 59
    move-object v1, p1

    .line 60
    move-object v2, p2

    .line 61
    move v3, p3

    .line 62
    move v4, p4

    .line 63
    move/from16 v5, p5

    .line 64
    .line 65
    move-object/from16 v7, p9

    .line 66
    .line 67
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cicada/player/utils/ass/BorderedSpan;->fillPainStyle(Landroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    float-to-int p1, p1

    .line 9
    return p1
.end method
