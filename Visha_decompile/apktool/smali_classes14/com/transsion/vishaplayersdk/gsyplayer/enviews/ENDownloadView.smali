.class public Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;,
        Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$OnDownloadStateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BG_LINE_COLOR:I = -0xc5c0bb

.field private static final DEFAULT_BG_LINE_WIDTH:I = 0x9

.field private static final DEFAULT_DOWNLOAD_TIME:I = 0x7d0

.field private static final DEFAULT_DOWNLOAD_UNIT:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

.field private static final DEFAULT_LINE_COLOR:I = -0x1

.field private static final DEFAULT_LINE_WIDTH:I = 0x9

.field private static final DEFAULT_RIPPLE_SPEED:I = 0x2

.field private static final DEFAULT_STATE:I = 0x0

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final DEFAULT_TEXT_SIZE:I = 0xe

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_END:I = 0x2

.field public static final STATE_PRE:I = 0x0

.field public static final STATE_RESET:I = 0x3


# instance fields
.field private mBaseLength:F

.field private mBaseRippleLength:F

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCenterX:F

.field private mCenterY:F

.field private mCircleRadius:F

.field private mClipRectF:Landroid/graphics/RectF;

.field private mCurrentRippleX:F

.field private mCurrentSize:D

.field private mCurrentState:I

.field private mDownloadTime:I

.field private mFraction:F

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private mTotalSize:D

.field private mUnit:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

.field mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWidth:F

.field private onDownloadStateListener:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$OnDownloadStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;->B:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->DEFAULT_DOWNLOAD_UNIT:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/transsion/vishaplayersdk/R$styleable;->download:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lcom/transsion/vishaplayersdk/R$styleable;->download_download_line_color:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 5
    sget v1, Lcom/transsion/vishaplayersdk/R$styleable;->download_download_bg_line_color:I

    const v2, -0xc5c0bb

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 6
    sget v2, Lcom/transsion/vishaplayersdk/R$styleable;->download_download_text_color:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 7
    sget v2, Lcom/transsion/vishaplayersdk/R$styleable;->download_download_line_width:I

    const/16 v3, 0x9

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 8
    sget v4, Lcom/transsion/vishaplayersdk/R$styleable;->download_download_bg_line_width:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 9
    sget v4, Lcom/transsion/vishaplayersdk/R$styleable;->download_download_text_size:I

    const/16 v5, 0xe

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    .line 12
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 14
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 19
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    int-to-float p2, v3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float p2, v4

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 24
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 25
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    .line 26
    iput v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTextSize:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentState:I

    .line 28
    sget-object p1, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->DEFAULT_DOWNLOAD_UNIT:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mUnit:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    const/16 p1, 0x7d0

    .line 29
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mDownloadTime:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)F
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)D
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTotalSize:D

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mUnit:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$OnDownloadStateListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->onDownloadStateListener:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$OnDownloadStateListener;

    return-object p0
.end method

.method private downloadAnim()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mDownloadTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$3;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$3;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$4;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public static bridge synthetic e(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;D)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentSize:D

    return-void
.end method

.method private endAnim()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$5;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$5;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$6;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$6;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public static bridge synthetic f(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentState:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    return-void
.end method

.method private getUnitStr(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$7;->$SwitchMap$com$transsion$vishaplayersdk$gsyplayer$enviews$ENDownloadView$DownloadUnit:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const-string p0, " b"

    return-object p0

    :cond_0
    const-string p0, " kb"

    return-object p0

    :cond_1
    const-string p0, " mb"

    return-object p0

    :cond_2
    const-string p0, " gb"

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->downloadAnim()V

    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentState:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v8, 0x1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentState:I

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f99999a    # 1.2f

    const/high16 v11, 0x40000000    # 2.0f

    const v12, 0x400ccccd    # 2.2f

    const v13, 0x3fa66666    # 1.3f

    const v14, 0x3e4ccccd    # 0.2f

    if-eqz v1, :cond_8

    const/4 v15, 0x0

    if-eq v1, v8, :cond_4

    const/4 v2, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    sub-float v3, v1, v2

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    mul-float v5, v2, v8

    sub-float/2addr v1, v5

    mul-float v5, v2, v8

    iget v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    const v9, 0x3f266666    # 0.65f

    mul-float v1, v2, v9

    add-float/2addr v1, v4

    const v11, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v11

    mul-float/2addr v2, v6

    add-float v6, v1, v2

    iget-object v12, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v8

    sub-float v3, v1, v3

    mul-float v4, v2, v8

    iget v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    mul-float v6, v2, v9

    add-float/2addr v6, v4

    mul-float v12, v2, v11

    mul-float/2addr v12, v5

    add-float/2addr v6, v12

    mul-float/2addr v10, v2

    add-float/2addr v1, v10

    mul-float/2addr v14, v2

    mul-float/2addr v14, v5

    sub-float v10, v1, v14

    mul-float v1, v2, v13

    sub-float/2addr v4, v1

    mul-float/2addr v2, v13

    mul-float/2addr v2, v5

    add-float v5, v4, v2

    iget-object v12, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v6

    move v4, v10

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v8

    sub-float v3, v1, v3

    mul-float v4, v2, v8

    iget v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    mul-float v6, v2, v9

    add-float/2addr v6, v4

    mul-float/2addr v11, v2

    mul-float/2addr v11, v5

    add-float/2addr v6, v11

    mul-float v10, v2, v8

    sub-float/2addr v1, v10

    mul-float/2addr v8, v2

    mul-float/2addr v8, v5

    add-float/2addr v8, v1

    mul-float/2addr v9, v2

    add-float/2addr v4, v9

    const/high16 v1, 0x40100000    # 2.25f

    mul-float/2addr v2, v1

    mul-float/2addr v2, v5

    sub-float/2addr v4, v2

    iget-object v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v6

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_1
    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTextSize:I

    int-to-float v4, v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    mul-float/2addr v3, v1

    sub-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mUnit:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    sget-object v2, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;->NONE:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    if-eq v1, v2, :cond_3

    iget-wide v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentSize:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentSize:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mUnit:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    invoke-direct {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->getUnitStr(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    const v4, 0x3fb33333    # 1.4f

    iget v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget-object v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v12

    sub-float v3, v1, v3

    mul-float/2addr v10, v2

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    mul-float/2addr v10, v4

    add-float/2addr v3, v10

    iget v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    mul-float v6, v2, v8

    sub-float v6, v1, v6

    mul-float/2addr v2, v8

    mul-float/2addr v2, v4

    mul-float/2addr v2, v13

    add-float v9, v5, v2

    iget-object v10, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v8

    sub-float v3, v1, v3

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    mul-float/2addr v8, v2

    iget v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    mul-float/2addr v8, v5

    mul-float/2addr v8, v13

    add-float v6, v4, v8

    mul-float/2addr v12, v2

    add-float/2addr v1, v12

    mul-float v8, v2, v5

    sub-float v8, v1, v8

    mul-float/2addr v2, v5

    mul-float/2addr v2, v13

    sub-float/2addr v4, v2

    iget-object v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v6

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_4
    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    float-to-double v2, v1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_5

    iget-object v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTextSize:I

    int-to-float v3, v3

    div-float/2addr v3, v14

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_5
    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mRectF:Landroid/graphics/RectF;

    const v1, 0x43b3feb8    # 359.99f

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    mul-float v4, v3, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentRippleX:F

    add-float/2addr v1, v11

    iput v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentRippleX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseRippleLength:F

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v3

    sub-float v4, v2, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentRippleX:F

    :cond_6
    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentRippleX:F

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_7

    iget-object v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseRippleLength:F

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    sub-float v4, v9, v4

    neg-float v4, v4

    mul-float/2addr v4, v3

    mul-float v5, v3, v11

    invoke-virtual {v2, v3, v4, v5, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    iget-object v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseRippleLength:F

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    sub-float v4, v9, v4

    mul-float/2addr v4, v3

    mul-float v5, v3, v11

    invoke-virtual {v2, v3, v4, v5, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-int/2addr v1, v8

    goto :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;->GB:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    goto/16 :goto_2

    :cond_8
    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpg-double v2, v2, v4

    const v8, 0x3ecccccd    # 0.4f

    if-gtz v2, :cond_9

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    sub-float v2, v4, v1

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    add-float v5, v3, v1

    iget-object v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    add-float v3, v5, v1

    add-float v4, v2, v1

    iget-object v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    add-float v4, v1, v2

    mul-float v5, v2, v13

    div-float/2addr v5, v8

    iget v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const v5, 0x3fcccccd    # 1.6f

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    mul-float/2addr v2, v13

    div-float/2addr v2, v8

    mul-float/2addr v2, v6

    add-float v5, v1, v2

    iget-object v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_9
    float-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v2, v2, v4

    const v3, 0x3e99999a    # 0.3f

    if-gtz v2, :cond_a

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v11, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    sub-float v2, v4, v1

    mul-float v3, v1, v10

    div-float/2addr v3, v14

    iget v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    sub-float v6, v5, v8

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    add-float v6, v3, v1

    div-float/2addr v1, v14

    sub-float/2addr v5, v8

    mul-float/2addr v1, v5

    sub-float v5, v6, v1

    iget-object v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    add-float v3, v4, v2

    div-float v5, v2, v14

    iget v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    sub-float v9, v6, v8

    mul-float/2addr v5, v9

    sub-float/2addr v3, v5

    add-float v5, v1, v2

    mul-float/2addr v2, v10

    div-float/2addr v2, v14

    sub-float/2addr v6, v8

    mul-float/2addr v2, v6

    add-float/2addr v5, v2

    iget-object v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v3

    move v3, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_a
    cmpg-float v1, v1, v9

    if-gtz v1, :cond_b

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    mul-float v5, v4, v3

    sub-float/2addr v2, v5

    iget v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    mul-float/2addr v4, v3

    sub-float/2addr v5, v4

    div-float/2addr v5, v8

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    const v4, 0x3f19999a    # 0.6f

    sub-float/2addr v3, v4

    mul-float/2addr v5, v3

    sub-float/2addr v2, v5

    iget-object v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v11, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v12

    sub-float v3, v1, v3

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    mul-float/2addr v2, v12

    add-float v5, v1, v2

    iget-object v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    move v3, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_b
    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    iget v5, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    sub-float/2addr v5, v9

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v12

    sub-float v3, v1, v3

    iget v4, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    mul-float/2addr v2, v12

    add-float v5, v1, v2

    iget-object v6, v0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    move v3, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mWidth:F

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mHeight:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float p4, p1, p3

    iput p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    div-float/2addr p2, p3

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    const/high16 p2, 0x40a00000    # 5.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x41400000    # 12.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseLength:F

    const p3, 0x408ccccd    # 4.4f

    mul-float/2addr p1, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseRippleLength:F

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    sub-float/2addr p4, p1

    iput p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentRippleX:F

    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCircleRadius:F

    sub-float p4, p2, p3

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterY:F

    sub-float v1, v0, p3

    add-float/2addr p2, p3

    add-float/2addr v0, p3

    invoke-direct {p1, p4, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCenterX:F

    iget p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mBaseRippleLength:F

    const/high16 p4, 0x40c00000    # 6.0f

    mul-float v0, p3, p4

    sub-float v0, p2, v0

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    iget p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mHeight:F

    const/4 p4, 0x0

    invoke-direct {p1, v0, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mClipRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mFraction:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentState:I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public setDownloadConfig(IDLcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mDownloadTime:I

    iput-wide p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mTotalSize:D

    iput-object p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mUnit:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$DownloadUnit;

    return-void
.end method

.method public setOnDownloadStateListener(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$OnDownloadStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->onDownloadStateListener:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$OnDownloadStateListener;

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mCurrentState:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$1;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$2;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$2;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method
