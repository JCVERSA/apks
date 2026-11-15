.class public Lcom/transsion/audio/widgets/LrcViewNew;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/LrcViewNew$OnLayoutChangeListener;,
        Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;,
        Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;
    }
.end annotation


# static fields
.field private static final ADJUST_DURATION:J = 0x64L

.field private static final CURRENT_TEXT_SIZE:F

.field private static final DEFAULT_TEXT_SIZE:F

.field private static final DEFAULT_TIME_TEXT_SIZE:F

.field private static final LABEL_TEXT_SIZE:F

.field private static final TAG:Ljava/lang/String; = "LrcView"

.field private static final TIMELINE_KEEP_TIME:J = 0x7d0L


# instance fields
.field private final hideTimelineRunnable:Ljava/lang/Runnable;

.field private isAllNoTimeLrc:Z

.field private isFirstInit:Z

.field private isFling:Z

.field private isShowTimeline:Z

.field private isTouching:Z

.field private lrcPositionToCenter:I

.field private mAnimationDuration:J

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentLine:I

.field private mCurrentTextColor:I

.field private mCurrentTextSize:F

.field private mDefaultLabel:Ljava/lang/String;

.field private mDelayMs:I

.field private mDividerHeight:F

.field private mDrawableWidth:I

.field private mFlag:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mLabelPaint:Landroid/text/TextPaint;

.field private final mLrcEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audio/lyrics/bean/LrcRow;",
            ">;"
        }
    .end annotation
.end field

.field private mLrcPadding:F

.field private final mLrcPaint:Landroid/text/TextPaint;

.field private mNormalTextColor:I

.field private mNormalTextSize:F

.field private mOffset:F

.field private mOnLayoutChangeListener:Lcom/transsion/audio/widgets/LrcViewNew$OnLayoutChangeListener;

.field private mOnPlayClickListener:Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

.field private mOnTapListener:Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;

.field private mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRectPaint:Landroid/text/TextPaint;

.field private mScroller:Landroid/widget/Scroller;

.field private final mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mTextGravity:I

.field private mTimeFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final mTimePaint:Landroid/text/TextPaint;

.field private mTimeTextColor:I

.field private mTimeTextWidth:I

.field private mTimelineColor:I

.field private mTimelineTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/transsion/audio/widgets/LrcViewNew;->DEFAULT_TEXT_SIZE:F

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/transsion/audio/widgets/LrcViewNew;->CURRENT_TEXT_SIZE:F

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/transsion/audio/widgets/LrcViewNew;->LABEL_TEXT_SIZE:F

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/transsion/audio/widgets/LrcViewNew;->DEFAULT_TIME_TEXT_SIZE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/widgets/LrcViewNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audio/widgets/LrcViewNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    .line 5
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    .line 6
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimePaint:Landroid/text/TextPaint;

    .line 7
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mRectPaint:Landroid/text/TextPaint;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isFirstInit:Z

    .line 9
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3}, Landroid/text/TextPaint;-><init>()V

    iput-object p3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLabelPaint:Landroid/text/TextPaint;

    .line 10
    iput-boolean p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    .line 11
    new-instance p1, Lcom/transsion/audio/widgets/LrcViewNew$1;

    invoke-direct {p1, p0}, Lcom/transsion/audio/widgets/LrcViewNew$1;-><init>(Lcom/transsion/audio/widgets/LrcViewNew;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 12
    new-instance p1, Lcom/transsion/audio/widgets/LrcViewNew$2;

    invoke-direct {p1, p0}, Lcom/transsion/audio/widgets/LrcViewNew$2;-><init>(Lcom/transsion/audio/widgets/LrcViewNew;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->hideTimelineRunnable:Ljava/lang/Runnable;

    .line 13
    invoke-direct {p0, p2}, Lcom/transsion/audio/widgets/LrcViewNew;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/LrcViewNew;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/LrcViewNew;->lambda$updateTime$1(JZ)V

    return-void
.end method

.method private adjustCenter()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterLine()I

    move-result v0

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->smoothScrollTo(IJ)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/widgets/LrcViewNew;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->lambda$smoothScrollTo$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/widgets/LrcViewNew;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->lambda$setLabel$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/audio/widgets/LrcViewNew;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->lambda$scrollToCurrentLine$2()V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;F)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    sub-float/2addr p3, v0

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/audio/widgets/LrcViewNew;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->hideTimelineRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private endAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/audio/widgets/LrcViewNew;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    return p0
.end method

.method private findShowLine(J)I
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-gt v2, v0, :cond_3

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget v4, v4, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget v4, v4, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method public static bridge synthetic g(Lcom/transsion/audio/widgets/LrcViewNew;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isFling:Z

    return p0
.end method

.method private getCenterLine()I
    .locals 5

    const/4 v0, -0x1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    invoke-direct {p0, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->getOffset(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_0

    iget v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    invoke-direct {p0, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->getOffset(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getCenterY()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->lrcPositionToCenter:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getCurrentLineRect()Landroid/graphics/Rect;
    .locals 4

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterLine()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterY()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/lyrics/bean/LrcRow;

    invoke-virtual {v0}, Lcom/transsion/audio/lyrics/bean/LrcRow;->getStaticLayout()Landroid/text/StaticLayout;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-direct {v2, v0, v3, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private getFlag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mFlag:Ljava/lang/Object;

    return-object p0
.end method

.method private getLrcWidth()F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getOffset(I)F
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget v0, v0, Lcom/transsion/audio/lyrics/bean/LrcRow;->offset:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-gt v2, p1, :cond_0

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audio/lyrics/bean/LrcRow;

    invoke-virtual {v3}, Lcom/transsion/audio/lyrics/bean/LrcRow;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/audio/lyrics/bean/LrcRow;

    invoke-virtual {v4}, Lcom/transsion/audio/lyrics/bean/LrcRow;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    shr-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mDividerHeight:F

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iput v0, v1, Lcom/transsion/audio/lyrics/bean/LrcRow;->offset:F

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget p0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->offset:F

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/audio/widgets/LrcViewNew;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isShowTimeline:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/audio/widgets/LrcViewNew;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentLine:I

    return p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    sget v1, Lcom/transsion/audio/widgets/LrcViewNew;->DEFAULT_TEXT_SIZE:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget p1, Lcom/transsion/audio/widgets/LrcViewNew;->CURRENT_TEXT_SIZE:F

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentTextSize:F

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimePaint:Landroid/text/TextPaint;

    sget v2, Lcom/transsion/audio/widgets/LrcViewNew;->DEFAULT_TIME_TEXT_SIZE:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLabelPaint:Landroid/text/TextPaint;

    sget v0, Lcom/transsion/audio/widgets/LrcViewNew;->LABEL_TEXT_SIZE:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/audio/R$color;->lyric_label_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iput v1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mNormalTextSize:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$color;->lyric_text_line_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimelineColor:I

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimeFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41d80000    # 27.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mDividerHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$drawable;->ic_lyric_time_arrow:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mAnimationDuration:J

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private initPlayDrawable()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterY()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v3, v1

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterY()I

    move-result v1

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/audio/widgets/LrcViewNew;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mDelayMs:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/audio/widgets/LrcViewNew;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/audio/widgets/LrcViewNew;)F
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    return p0
.end method

.method private synthetic lambda$scrollToCurrentLine$2()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterLine()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentLine:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isShowTimeline:Z

    invoke-direct {p0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->smoothScrollTo(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setLabel$0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$smoothScrollTo$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateTime$1(JZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mDelayMs:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/LrcViewNew;->findShowLine(J)I

    move-result p1

    iget p2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentLine:I

    if-eq p1, p2, :cond_3

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentLine:I

    iget-boolean p2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isShowTimeline:Z

    if-eqz p2, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-boolean p2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isFirstInit:Z

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->smoothScrollTo(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isFirstInit:Z

    const-wide/16 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/LrcViewNew;->smoothScrollTo(IJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOnPlayClickListener:Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOnTapListener:Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/transsion/audio/widgets/LrcViewNew;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/transsion/audio/widgets/LrcViewNew;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isFling:Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/audio/widgets/LrcViewNew;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isShowTimeline:Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/audio/widgets/LrcViewNew;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isTouching:Z

    return-void
.end method

.method private reset()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->endAnimation()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isShowTimeline:Z

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isTouching:Z

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isFling:Z

    iget-object v2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->hideTimelineRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    iput v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentLine:I

    iput-boolean v1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    return-void
.end method

.method private runOnUi(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/audio/widgets/LrcViewNew;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentLine:I

    return-void
.end method

.method private setFlag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mFlag:Ljava/lang/Object;

    return-void
.end method

.method private smoothScrollTo(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mAnimationDuration:J

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->smoothScrollTo(IJ)V

    return-void
.end method

.method private smoothScrollTo(IJ)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->getOffset(I)F

    move-result p1

    .line 3
    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->endAnimation()V

    .line 4
    iget v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mAnimator:Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lxu5;

    invoke-direct {p2, p0}, Lxu5;-><init>(Lcom/transsion/audio/widgets/LrcViewNew;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/audio/widgets/LrcViewNew;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/audio/widgets/LrcViewNew;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterLine()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Lcom/transsion/audio/widgets/LrcViewNew;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCurrentLineRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/transsion/audio/widgets/LrcViewNew;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->getOffset(I)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Lcom/transsion/audio/widgets/LrcViewNew;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->smoothScrollTo(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    invoke-direct {p0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->getOffset(I)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    iget-object v2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->getOffset(I)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isFling:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isFling:Z

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isTouching:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->adjustCenter()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->hideTimelineRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public hasLrc()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public initEntryList()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    sget v1, Lcom/transsion/audio/widgets/LrcViewNew;->CURRENT_TEXT_SIZE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getLrcWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/audio/lyrics/bean/LrcRow;->init(Landroid/text/TextPaint;II)V

    iget-boolean v1, v1, Lcom/transsion/audio/lyrics/bean/LrcRow;->noTimeText:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mNormalTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getLrcWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/audio/lyrics/bean/LrcRow;->init(Landroid/text/TextPaint;II)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    :cond_4
    :goto_2
    return-void
.end method

.method public isAllNoTimeLrc()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->hideTimelineRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrag(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(J)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterY()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->getCenterLine()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "onDrawText but not lrc so return"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "LrcView"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isShowTimeline:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget-object v2, v2, Lcom/transsion/audio/lyrics/bean/LrcRow;->timeStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimePaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimelineColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v5, v6}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v6, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v5, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v8, v4

    iget-object v10, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimePaint:Landroid/text/TextPaint;

    move-object v5, p1

    move v7, v0

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimePaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimeTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimeFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v5, v4

    sub-float/2addr v0, v5

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43340000    # 180.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-boolean v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    sget v4, Lcom/transsion/audio/widgets/LrcViewNew;->LABEL_TEXT_SIZE:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentLine:I

    if-ne v0, v3, :cond_4

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    :cond_4
    iget-boolean v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isShowTimeline:Z

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_5

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimelineTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mNormalTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mNormalTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audio/lyrics/bean/LrcRow;

    invoke-virtual {v3}, Lcom/transsion/audio/lyrics/bean/LrcRow;->getStaticLayout()Landroid/text/StaticLayout;

    move-result-object v3

    if-lez v0, :cond_6

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/audio/lyrics/bean/LrcRow;

    invoke-virtual {v4}, Lcom/transsion/audio/lyrics/bean/LrcRow;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mDividerHeight:F

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    :cond_6
    invoke-direct {p0, p1, v3, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->drawText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;F)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->initPlayDrawable()V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->initEntryList()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOnLayoutChangeListener:Lcom/transsion/audio/widgets/LrcViewNew$OnLayoutChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/audio/widgets/LrcViewNew$OnLayoutChangeListener;->onLayoutChange()V

    :cond_0
    return-void
.end method

.method public onLrcLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/audio/lyrics/bean/LrcRow;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->reset()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->initEntryList()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isTouching:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isShowTimeline:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->adjustCenter()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->hideTimelineRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public scrollToCurrentLine()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOffset:F

    :cond_0
    new-instance v0, Lyu5;

    invoke-direct {v0, p0}, Lyu5;-><init>(Lcom/transsion/audio/widgets/LrcViewNew;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCurrentColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setCurrentTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mCurrentTextSize:F

    return-void
.end method

.method public setDelayMs(I)V
    .locals 3

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mDelayMs:I

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mLrcEntryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget v1, v0, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/transsion/audio/lyrics/bean/LrcRow;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/audio/lyrics/bean/LrcRow;->timeStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDraggable(ZLcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOnPlayClickListener:Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "if draggable == true, onPlayClickListener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOnPlayClickListener:Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

    :goto_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lwu5;

    invoke-direct {v0, p0, p1}, Lwu5;-><init>(Lcom/transsion/audio/widgets/LrcViewNew;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/LrcViewNew;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLrcPositionToCenter(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->lrcPositionToCenter:I

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mNormalTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setNormalTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mNormalTextSize:F

    return-void
.end method

.method public setOnLayoutChangeListener(Lcom/transsion/audio/widgets/LrcViewNew$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOnLayoutChangeListener:Lcom/transsion/audio/widgets/LrcViewNew$OnLayoutChangeListener;

    return-void
.end method

.method public setOnPlayClickListener(Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOnPlayClickListener:Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

    return-void
.end method

.method public setOnTapListener(Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mOnTapListener:Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;

    return-void
.end method

.method public setTimeTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimeTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTimelineColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimelineColor:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTimelineTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/LrcViewNew;->mTimelineTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public updateTime(J)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(JZ)V

    return-void
.end method

.method public updateTime(JZ)V
    .locals 1

    .line 2
    new-instance v0, Lvu5;

    invoke-direct {v0, p0, p1, p2, p3}, Lvu5;-><init>(Lcom/transsion/audio/widgets/LrcViewNew;JZ)V

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/LrcViewNew;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method
