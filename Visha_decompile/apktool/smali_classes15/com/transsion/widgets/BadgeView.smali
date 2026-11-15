.class public Lcom/transsion/widgets/BadgeView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final OS_RED_POINT_TYPE_BIG:I = 0x2

.field public static final OS_RED_POINT_TYPE_MEDIUM:I = 0x1

.field public static final OS_RED_POINT_TYPE_NUM_BIG:I = 0x5

.field public static final OS_RED_POINT_TYPE_NUM_MEDIUM:I = 0x4

.field public static final OS_RED_POINT_TYPE_NUM_SMALL:I = 0x3

.field public static final OS_RED_POINT_TYPE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RedPointView"


# instance fields
.field private backgroundColor:I

.field private corner:I

.field private mCurrentRedPointType:I

.field private mHeight:I

.field private mNumColor:I

.field private mNumText:Ljava/lang/String;

.field private mPadding:I

.field private mPaintBg:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mPlusWidth:F

.field private mRectf:Landroid/graphics/RectF;

.field private mTextSize:I

.field private mTextWidth:F

.field private mWidth:I

.field private plusTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5
    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/widgets/BadgeView;->backgroundColor:I

    .line 6
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/BadgeView;->mNumColor:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/transsion/widgets/BadgeView;->mCurrentRedPointType:I

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/BadgeView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static dp2px(I)I
    .locals 2

    int-to-float p0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgets/BadgeView;->mRectf:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView_osRedPointTextViewType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/BadgeView;->mCurrentRedPointType:I

    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSRedPointTextView_osRedPointTextViewNum:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mCurrentRedPointType:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/BadgeView;->setRedPointType(I)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/BadgeView;->backgroundColor:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mRectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgets/BadgeView;->corner:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/widgets/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/widgets/BadgeView;->mTextWidth:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/transsion/widgets/BadgeView;->mCurrentRedPointType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v5, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgets/BadgeView;->plusTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v3, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v3

    iget v2, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    iget v2, p0, Lcom/transsion/widgets/BadgeView;->mTextWidth:F

    iget v3, p0, Lcom/transsion/widgets/BadgeView;->mPlusWidth:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/widgets/BadgeView;->mTextSize:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    iget p2, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->backgroundColor:I

    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mCurrentRedPointType:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/BadgeView;->setRedPointType(I)V

    return-void
.end method

.method public setNum(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    const-string p1, "99+"

    iput-object p1, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    iput-object v1, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    :cond_1
    :goto_0
    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mCurrentRedPointType:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/BadgeView;->setRedPointType(I)V

    iget-object p0, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    return-object p0
.end method

.method public setRedPointType(I)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mPaintBg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/BadgeView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/BadgeView;->mNumColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mCurrentRedPointType:I

    const/4 v0, 0x6

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    const/16 v4, 0xc

    if-eq p1, v1, :cond_7

    const/16 v5, 0x9

    const/4 v6, 0x3

    if-eq p1, v6, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 p1, 0x14

    invoke-static {p1}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    invoke-static {v6}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mPadding:I

    invoke-static {v4}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mTextSize:I

    invoke-static {v5}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->plusTextSize:I

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgets/BadgeView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget-object v2, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/BadgeView;->mPlusWidth:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mTextWidth:F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mTextWidth:F

    :goto_0
    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mTextWidth:F

    iget v0, p0, Lcom/transsion/widgets/BadgeView;->mPadding:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    goto/16 :goto_1

    :cond_2
    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    goto/16 :goto_1

    :cond_3
    const/16 p1, 0x13

    invoke-static {p1}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    invoke-static {v0}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mPadding:I

    invoke-static {v4}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mTextSize:I

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mTextWidth:F

    iget v0, p0, Lcom/transsion/widgets/BadgeView;->mPadding:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    goto/16 :goto_1

    :cond_4
    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    goto/16 :goto_1

    :cond_5
    const/16 p1, 0xe

    invoke-static {p1}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    invoke-static {v6}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mPadding:I

    invoke-static {v5}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mTextSize:I

    invoke-static {v0}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->plusTextSize:I

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgets/BadgeView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mNumText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mTextWidth:F

    iget v0, p0, Lcom/transsion/widgets/BadgeView;->mPadding:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    goto :goto_1

    :cond_6
    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    goto :goto_1

    :cond_7
    invoke-static {v4}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    invoke-static {v2}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mPadding:I

    invoke-static {v2}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mTextSize:I

    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    goto :goto_1

    :cond_8
    const/16 p1, 0x8

    invoke-static {p1}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    invoke-static {v2}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mPadding:I

    invoke-static {v2}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mTextSize:I

    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    goto :goto_1

    :cond_9
    invoke-static {v0}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    invoke-static {v2}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mPadding:I

    invoke-static {v2}, Lcom/transsion/widgets/BadgeView;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mTextSize:I

    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    :goto_1
    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    div-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->corner:I

    iget-object p1, p0, Lcom/transsion/widgets/BadgeView;->mPaintText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgets/BadgeView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    iget v0, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/BadgeView;->mWidth:I

    iget-object v0, p0, Lcom/transsion/widgets/BadgeView;->mRectf:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget p1, p0, Lcom/transsion/widgets/BadgeView;->mHeight:I

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
