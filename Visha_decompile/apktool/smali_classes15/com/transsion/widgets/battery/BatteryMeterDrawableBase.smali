.class public Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final ASPECT_RATIO:F = 0.58f

.field private static final RADIUS_RATIO:F = 0.05882353f

.field public static final TAG:Ljava/lang/String; = "BatteryMeterDrawableBase"


# instance fields
.field private battaryWidth:F

.field private final mBatteryBgPath:Landroid/graphics/Path;

.field private final mBatteryBoltPath:Landroid/graphics/Path;

.field private final mBatteryButtomPath:Landroid/graphics/Path;

.field protected final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBatteryPlusPath:Landroid/graphics/Path;

.field protected final mBoltPaint:Landroid/graphics/Paint;

.field private mChargeColor:I

.field private mCharging:Z

.field protected final mColors:[I

.field protected final mContext:Landroid/content/Context;

.field protected final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIconTint:I

.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I

.field private mLevel:I

.field private mLoadBoltBg:Z

.field private mLoadChargeBg:Z

.field private mLoadPlusBg:Z

.field protected mLongBatteryLife:Z

.field private final mPadding:Landroid/graphics/Rect;

.field private mPaddingBatteryBodyAndBolt:I

.field protected final mPlusPaint:Landroid/graphics/Paint;

.field protected mPowerSaveAsColorError:Z

.field private mPowerSaveEnabled:Z

.field private mShowPercent:Z

.field protected mTempPaint:Landroid/graphics/Paint;

.field protected final mTextPaint:Landroid/graphics/Paint;

.field private final mWarningLevel:I

.field protected final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLevel:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    iput v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mIconTint:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBoltPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/common/R$array;->batterymeter_color_levels:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/transsion/common/R$array;->batterymeter_color_values:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mColors:[I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mColors:[I

    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mColors:[I

    add-int/2addr v6, v1

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0xf

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mWarningLevel:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    const-string p2, "sans-serif-condensed"

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    const-string v0, "sans-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mColors:[I

    array-length v0, p2

    if-le v0, v1, :cond_1

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/common/R$color;->os_red_basic_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mChargeColor:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0x30

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    const/16 p1, 0x19

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPaddingBatteryBodyAndBolt:I

    const/high16 p1, 0x42100000    # 36.0f

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->battaryWidth:F

    return-void
.end method

.method public static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private drawBattery(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLevel:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mIconTint:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mShowPercent:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mWarningLevel:I

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->loadChargeBg()V

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->drawBatteryBody(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V

    return-void
.end method

.method private drawBatteryBody(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    int-to-float v3, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->constrain(FFF)F

    move-result v3

    iget v4, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPaddingBatteryBodyAndBolt:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v5, v4

    int-to-float v6, v6

    iget v7, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->battaryWidth:F

    mul-float/2addr v7, v3

    sub-float v9, v6, v7

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v14, 0x3f800000    # 1.0f

    add-float v10, v3, v14

    sub-int/2addr v5, v4

    int-to-float v3, v5

    sub-float v11, v3, v14

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v12, v3, v14

    iget-object v15, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v13, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-boolean v3, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mShowPercent:Z

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%d"

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v3, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    iput-object v3, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mTempPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v0, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mTempPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v4, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private getColorForLevel(I)I
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mCharging:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mIconTint:I

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mColors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-gt p1, v1, :cond_2

    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_1

    iget p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mIconTint:I

    return p0

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_3
    return v1
.end method

.method private loadBoltBg()V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mCharging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLoadBoltBg:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLoadBoltBg:Z

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBoltPath:Landroid/graphics/Path;

    const v1, 0x41d73333    # 26.9f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBoltPath:Landroid/graphics/Path;

    const v3, -0x40cccccd    # -0.7f

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBoltPath:Landroid/graphics/Path;

    const/high16 v3, 0x40900000    # 4.5f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBoltPath:Landroid/graphics/Path;

    const v3, -0x3f29999a    # -6.7f

    const/high16 v5, 0x41100000    # 9.0f

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBoltPath:Landroid/graphics/Path;

    const v3, 0x3f333333    # 0.7f

    const/high16 v5, -0x3f400000    # -6.0f

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBoltPath:Landroid/graphics/Path;

    const/high16 v3, -0x3f700000    # -4.5f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBoltPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBoltPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBoltPath:Landroid/graphics/Path;

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_0
    return-void
.end method

.method private loadChargeBg()V
    .locals 13

    iget-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLoadChargeBg:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLoadChargeBg:Z

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v1, 0x422d999a    # 43.4f

    const v2, 0x3fb33333    # 1.4f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const/high16 v3, -0x3df00000    # -36.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v5, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const/high16 v10, 0x40800000    # 4.0f

    const v11, 0x409ccccd    # 4.9f

    const/high16 v6, 0x40b00000    # 5.5f

    const v7, 0x3fb33333    # 1.4f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x40400000    # 3.0f

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v3, 0x41766666    # 15.4f

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v5, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v10, 0x4059999a    # 3.4f

    const v11, 0x4059999a    # 3.4f

    const/4 v6, 0x0

    const v7, 0x3ff33333    # 1.9f

    const/high16 v8, 0x3fc00000    # 1.5f

    const v9, 0x4059999a    # 3.4f

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v5, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v11, -0x3fa66666    # -3.4f

    const v6, 0x3ff33333    # 1.9f

    const/4 v7, 0x0

    const v8, 0x4059999a    # 3.4f

    const/high16 v9, -0x40400000    # -1.5f

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v3, 0x423b3334    # 46.800003f

    const v5, 0x409ccccd    # 4.9f

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v11, 0x422d999a    # 43.4f

    const v12, 0x3fb33333    # 1.4f

    const v7, 0x423b3333    # 46.8f

    const/high16 v8, 0x40400000    # 3.0f

    const v9, 0x42353333    # 45.3f

    const v10, 0x3fb33333    # 1.4f

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v1, 0x42346666    # 45.1f

    const v2, 0x419b3333    # 19.4f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v10, -0x3fd9999a    # -2.6f

    const v11, 0x40266666    # 2.6f

    const/4 v6, 0x0

    const v7, 0x3fb33333    # 1.4f

    const v8, -0x40666666    # -1.2f

    const v9, 0x40266666    # 2.6f

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v3, 0x4104cccd    # 8.3f

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v11, -0x3fd9999a    # -2.6f

    const v12, -0x3fd9999a    # -2.6f

    const v7, -0x404ccccd    # -1.4f

    const/4 v8, 0x0

    const v9, -0x3fd9999a    # -2.6f

    const v10, -0x40666666    # -1.2f

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v3, 0x40b66667    # 5.7000003f

    const v5, 0x40b66666    # 5.7f

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v11, 0x40266666    # 2.6f

    const/4 v7, 0x0

    const v8, -0x404ccccd    # -1.4f

    const v9, 0x3f99999a    # 1.2f

    const v10, -0x3fd9999a    # -2.6f

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v3, 0x42093333    # 34.3f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v5, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v10, 0x40266666    # 2.6f

    const v6, 0x3fb33333    # 1.4f

    const v8, 0x40266666    # 2.6f

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    const v3, 0x4234cccc    # 45.199997f

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryButtomPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    const v1, 0x40133333    # 2.3f

    const v2, 0x40eccccd    # 7.4f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    const v3, 0x4124cccd    # 10.3f

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    const v3, 0x418d999a    # 17.7f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    const v9, -0x40266666    # -1.7f

    const v10, -0x40266666    # -1.7f

    const v5, -0x4099999a    # -0.9f

    const/4 v6, 0x0

    const v7, -0x40266666    # -1.7f

    const v8, -0x40b33333    # -0.8f

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    const v3, 0x3f199998    # 0.5999999f

    const v4, 0x41133333    # 9.2f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    const v10, 0x40133333    # 2.3f

    const v11, 0x40eccccd    # 7.4f

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x41033333    # 8.2f

    const v8, 0x3fa66666    # 1.3f

    const v9, 0x40eccccd    # 7.4f

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryBgPath:Landroid/graphics/Path;

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_0
    return-void
.end method

.method private loadPlusBg()V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLoadPlusBg:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLoadPlusBg:Z

    iget-object v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const/high16 v2, 0x41f00000    # 30.0f

    const v3, 0x41333333    # 11.2f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v4, -0x3f7ccccd    # -4.1f

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v6, 0x41cf3333    # 25.9f

    const v7, 0x40e33333    # 7.1f

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v13, -0x40733333    # -1.1f

    const v14, -0x40733333    # -1.1f

    const/4 v9, 0x0

    const v10, -0x40e66666    # -0.6f

    const/high16 v11, -0x41000000    # -0.5f

    const v12, -0x40733333    # -1.1f

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v15, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v20, -0x40733333    # -1.1f

    const v21, 0x3f8ccccd    # 1.1f

    const v16, -0x40e66666    # -0.6f

    const/16 v17, 0x0

    const v18, -0x40733333    # -1.1f

    const/high16 v19, 0x3f000000    # 0.5f

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v6, 0x40833333    # 4.1f

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v7, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v13, 0x3f8ccccd    # 1.1f

    const v8, -0x40e66666    # -0.6f

    const v10, -0x40733333    # -1.1f

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v14, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v19, 0x3f8ccccd    # 1.1f

    const v20, 0x3f8ccccd    # 1.1f

    const/4 v15, 0x0

    const v16, 0x3f19999a    # 0.6f

    const/high16 v17, 0x3f000000    # 0.5f

    const v18, 0x3f8ccccd    # 1.1f

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v7, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v12, 0x3f8ccccd    # 1.1f

    const/4 v8, 0x0

    const v9, 0x3f19999a    # 0.6f

    const/high16 v10, 0x3f000000    # 0.5f

    const v11, 0x3f8ccccd    # 1.1f

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v14, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v20, -0x40733333    # -1.1f

    const v15, 0x3f19999a    # 0.6f

    const/16 v16, 0x0

    const v17, 0x3f8ccccd    # 1.1f

    const/high16 v18, -0x41000000    # -0.5f

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v4, 0x41566666    # 13.4f

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const v10, 0x3f8ccccd    # 1.1f

    const v11, -0x40733333    # -1.1f

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const v8, 0x3f8ccccd    # 1.1f

    const/high16 v9, -0x41000000    # -0.5f

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v12, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    const/high16 v17, 0x41f00000    # 30.0f

    const v18, 0x41333333    # 11.2f

    const v13, 0x41f8cccd    # 31.1f

    const v14, 0x413b3333    # 11.7f

    const v15, 0x41f4cccd    # 30.6f

    const v16, 0x41333333    # 11.2f

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v0, v0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPlusPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_0
    return-void
.end method

.method private static loadPoints(Landroid/content/res/Resources;I)[F
    .locals 6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    aget v3, p0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [F

    :goto_1
    array-length v3, p0

    if-ge p1, v3, :cond_1

    aget v3, p0, p1

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    aput v3, v0, p1

    add-int/lit8 v3, p1, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private updateSize()V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mHeight:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mWidth:I

    return-void
.end method


# virtual methods
.method public batteryColorForLevel(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    iget p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mChargeColor:I

    :goto_1
    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->drawBattery(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAspectRatio()F
    .locals 0

    const p0, 0x3f147ae1    # 0.58f

    return p0
.end method

.method public getBatteryLevel()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLevel:I

    return p0
.end method

.method public getCharging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mCharging:Z

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getPowerSaveEnabled()Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getRadiusRatio()F
    .locals 0

    const p0, 0x3d70f0f1

    return p0
.end method

.method public postInvalidate()V
    .locals 3

    new-instance v0, Lod0;

    invoke-direct {v0, p0}, Lod0;-><init>(Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    new-instance v0, Lod0;

    invoke-direct {v0, p0}, Lod0;-><init>(Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLevel:I

    invoke-virtual {p0}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->updateSize()V

    return-void
.end method

.method public setCharging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mCharging:Z

    invoke-virtual {p0}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors(III)V
    .locals 0

    iput p3, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mIconTint:I

    iget-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iput p3, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mChargeColor:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setLongBatteryStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLongBatteryLife:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mLongBatteryLife:Z

    invoke-virtual {p0}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iput p3, v0, Landroid/graphics/Rect;->right:I

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->updateSize()V

    return-void
.end method

.method public setPowerSave(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    invoke-virtual {p0}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method

.method public setPowerSaveAsColorError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    return-void
.end method

.method public setShowPercent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->mShowPercent:Z

    invoke-virtual {p0}, Lcom/transsion/widgets/battery/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method
