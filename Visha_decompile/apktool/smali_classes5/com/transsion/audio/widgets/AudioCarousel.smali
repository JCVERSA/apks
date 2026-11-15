.class public Lcom/transsion/audio/widgets/AudioCarousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/AudioCarousel$Adapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Carousel"

.field public static final TOUCH_UP_CARRY_ON:I = 0x2

.field public static final TOUCH_UP_IMMEDIATE_STOP:I = 0x1


# instance fields
.field private backwardTransition:I

.field private dampening:F

.field private emptyViewBehavior:I

.field private firstViewReference:I

.field private forwardTransition:I

.field private infiniteCarousel:Z

.field private mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

.field private mAnimateTargetDelay:I

.field private mIndex:I

.field mLastStartId:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPreviousIndex:I

.field private mTargetIndex:I

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private nextState:I

.field private previousState:I

.field private startIndex:I

.field private touchUpMode:I

.field private velocityThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mPreviousIndex:I

    .line 5
    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->firstViewReference:I

    .line 7
    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->infiniteCarousel:Z

    .line 8
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->backwardTransition:I

    .line 9
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->forwardTransition:I

    .line 10
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->previousState:I

    .line 11
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->nextState:I

    const v1, 0x3f666666    # 0.9f

    .line 12
    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->dampening:F

    .line 13
    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->startIndex:I

    const/4 p1, 0x4

    .line 14
    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->emptyViewBehavior:I

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->touchUpMode:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 16
    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->velocityThreshold:F

    .line 17
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mTargetIndex:I

    const/16 p1, 0xc8

    .line 18
    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAnimateTargetDelay:I

    .line 19
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mLastStartId:I

    .line 20
    new-instance p1, Lcom/transsion/audio/widgets/AudioCarousel$1;

    invoke-direct {p1, p0}, Lcom/transsion/audio/widgets/AudioCarousel$1;-><init>(Lcom/transsion/audio/widgets/AudioCarousel;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mPreviousIndex:I

    .line 25
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->firstViewReference:I

    .line 27
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->infiniteCarousel:Z

    .line 28
    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->backwardTransition:I

    .line 29
    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->forwardTransition:I

    .line 30
    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->previousState:I

    .line 31
    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->nextState:I

    const v2, 0x3f666666    # 0.9f

    .line 32
    iput v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->dampening:F

    .line 33
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->startIndex:I

    const/4 v0, 0x4

    .line 34
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->emptyViewBehavior:I

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->touchUpMode:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 36
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->velocityThreshold:F

    .line 37
    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mTargetIndex:I

    const/16 v0, 0xc8

    .line 38
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAnimateTargetDelay:I

    .line 39
    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mLastStartId:I

    .line 40
    new-instance v0, Lcom/transsion/audio/widgets/AudioCarousel$1;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/AudioCarousel$1;-><init>(Lcom/transsion/audio/widgets/AudioCarousel;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/AudioCarousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 43
    iput-object p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    .line 44
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mList:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 45
    iput p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mPreviousIndex:I

    .line 46
    iput p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->firstViewReference:I

    .line 48
    iput-boolean p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->infiniteCarousel:Z

    .line 49
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->backwardTransition:I

    .line 50
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->forwardTransition:I

    .line 51
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->previousState:I

    .line 52
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->nextState:I

    const v1, 0x3f666666    # 0.9f

    .line 53
    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->dampening:F

    .line 54
    iput p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->startIndex:I

    const/4 p3, 0x4

    .line 55
    iput p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->emptyViewBehavior:I

    const/4 p3, 0x1

    .line 56
    iput p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->touchUpMode:I

    const/high16 p3, 0x40000000    # 2.0f

    .line 57
    iput p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->velocityThreshold:F

    .line 58
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mTargetIndex:I

    const/16 p3, 0xc8

    .line 59
    iput p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAnimateTargetDelay:I

    .line 60
    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mLastStartId:I

    .line 61
    new-instance p3, Lcom/transsion/audio/widgets/AudioCarousel$1;

    invoke-direct {p3, p0}, Lcom/transsion/audio/widgets/AudioCarousel$1;-><init>(Lcom/transsion/audio/widgets/AudioCarousel;)V

    iput-object p3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/AudioCarousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/AudioCarousel;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioCarousel;->lambda$updateItems$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/audio/widgets/AudioCarousel;)F
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->dampening:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/audio/widgets/AudioCarousel;)Lcom/transsion/audio/widgets/AudioCarousel$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/audio/widgets/AudioCarousel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/audio/widgets/AudioCarousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-object p0
.end method

.method private enableTransition(IZ)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result p1

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/audio/widgets/AudioCarousel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mPreviousIndex:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/audio/widgets/AudioCarousel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->touchUpMode:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/audio/widgets/AudioCarousel;)F
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->velocityThreshold:F

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/audio/widgets/AudioCarousel;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioCarousel;->updateItems()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_b

    sget-object v0, Lcom/transsion/audio/R$styleable;->AudioCarousel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Lcom/transsion/audio/R$styleable;->AudioCarousel_audio_carousel_firstView:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->firstViewReference:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->firstViewReference:I

    goto/16 :goto_1

    :cond_0
    sget v2, Lcom/transsion/audio/R$styleable;->AudioCarousel_audio_carousel_backwardTransition:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->backwardTransition:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->backwardTransition:I

    goto/16 :goto_1

    :cond_1
    sget v2, Lcom/transsion/audio/R$styleable;->AudioCarousel_audio_carousel_forwardTransition:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->forwardTransition:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->forwardTransition:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/transsion/audio/R$styleable;->AudioCarousel_audio_carousel_emptyViewsBehavior:I

    if-ne v1, v2, :cond_3

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->emptyViewBehavior:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->emptyViewBehavior:I

    goto :goto_1

    :cond_3
    sget v2, Lcom/transsion/audio/R$styleable;->AudioCarousel_audio_carousel_previousState:I

    if-ne v1, v2, :cond_4

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->previousState:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->previousState:I

    goto :goto_1

    :cond_4
    sget v2, Lcom/transsion/audio/R$styleable;->AudioCarousel_audio_carousel_nextState:I

    if-ne v1, v2, :cond_5

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->nextState:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->nextState:I

    goto :goto_1

    :cond_5
    sget v2, Lcom/transsion/audio/R$styleable;->AudioCarousel_audio_carousel_touchUp_dampeningFactor:I

    if-ne v1, v2, :cond_6

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->dampening:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->dampening:F

    goto :goto_1

    :cond_6
    sget v2, Lcom/transsion/audio/R$styleable;->AudioCarousel_audio_carousel_touchUpMode:I

    if-ne v1, v2, :cond_7

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->touchUpMode:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->touchUpMode:I

    goto :goto_1

    :cond_7
    sget v2, Lcom/transsion/audio/R$styleable;->AudioCarousel_audio_carousel_touchUp_velocityThreshold:I

    if-ne v1, v2, :cond_8

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->velocityThreshold:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->velocityThreshold:F

    goto :goto_1

    :cond_8
    sget v2, Lcom/transsion/audio/R$styleable;->AudioCarousel_audio_carousel_infinite:I

    if-ne v1, v2, :cond_9

    iget-boolean v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->infiniteCarousel:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->infiniteCarousel:Z

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    return-void
.end method

.method private synthetic lambda$updateItems$0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    iget v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mTargetIndex:I

    iget v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->previousState:I

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->nextState:I

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    :goto_0
    return-void
.end method

.method private resetItemsVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3, v1}, Lcom/transsion/audio/widgets/AudioCarousel;->updateViewVisibility(Landroid/view/View;I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateItems()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    iget-object v3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget v4, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->startIndex:I

    sub-int/2addr v4, v5

    iget-boolean v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->infiniteCarousel:Z

    if-eqz v5, :cond_8

    if-gez v4, :cond_4

    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v5}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v5

    rem-int v5, v4, v5

    if-nez v5, :cond_3

    iget-object v4, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v4, v3, v1}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v5}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v6

    iget-object v7, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v7}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v7

    rem-int/2addr v4, v7

    add-int/2addr v6, v4

    invoke-interface {v5, v3, v6}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v5}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v5

    if-lt v4, v5, :cond_7

    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v5}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v5

    if-ne v4, v5, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v5}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v5

    if-le v4, v5, :cond_6

    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v5}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v5

    rem-int/2addr v4, v5

    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v5, v3, v4}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v5, v3, v4}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_2

    :cond_8
    if-gez v4, :cond_9

    iget v4, p0, Lcom/transsion/audio/widgets/AudioCarousel;->emptyViewBehavior:I

    invoke-direct {p0, v3, v4}, Lcom/transsion/audio/widgets/AudioCarousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v5}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v5

    if-lt v4, v5, :cond_a

    iget v4, p0, Lcom/transsion/audio/widgets/AudioCarousel;->emptyViewBehavior:I

    invoke-direct {p0, v3, v4}, Lcom/transsion/audio/widgets/AudioCarousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_2

    :cond_a
    invoke-direct {p0, v3, v1}, Lcom/transsion/audio/widgets/AudioCarousel;->updateViewVisibility(Landroid/view/View;I)Z

    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v5, v3, v4}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->populate(Landroid/view/View;I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mTargetIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    iget v3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    if-eq v0, v3, :cond_c

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-instance v3, Lnn;

    invoke-direct {v3, p0}, Lnn;-><init>(Lcom/transsion/audio/widgets/AudioCarousel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_c
    iget v3, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    if-ne v0, v3, :cond_d

    iput v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mTargetIndex:I

    :cond_d
    :goto_3
    iget v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->backwardTransition:I

    if-eq v0, v2, :cond_12

    iget v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->forwardTransition:I

    if-ne v0, v2, :cond_e

    goto :goto_6

    :cond_e
    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->infiniteCarousel:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {v0}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v0

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    const/4 v3, 0x1

    if-nez v2, :cond_10

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->backwardTransition:I

    invoke-direct {p0, v2, v1}, Lcom/transsion/audio/widgets/AudioCarousel;->enableTransition(IZ)Z

    goto :goto_4

    :cond_10
    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->backwardTransition:I

    invoke-direct {p0, v2, v3}, Lcom/transsion/audio/widgets/AudioCarousel;->enableTransition(IZ)Z

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, p0, Lcom/transsion/audio/widgets/AudioCarousel;->backwardTransition:I

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    :goto_4
    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_11

    iget v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->forwardTransition:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/audio/widgets/AudioCarousel;->enableTransition(IZ)Z

    goto :goto_5

    :cond_11
    iget v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->forwardTransition:I

    invoke-direct {p0, v0, v3}, Lcom/transsion/audio/widgets/AudioCarousel;->enableTransition(IZ)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->forwardTransition:I

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    :goto_5
    return-void

    :cond_12
    :goto_6
    const-string p0, "Carousel"

    const-string v0, "No backward or forward transitions defined for Carousel!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateViewVisibility(ILandroid/view/View;I)Z
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p0

    if-nez p0, :cond_1

    return p1

    .line 7
    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    return p1
.end method

.method private updateViewVisibility(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 4
    aget v3, v0, v1

    invoke-direct {p0, v3, p1, p2}, Lcom/transsion/audio/widgets/AudioCarousel;->updateViewVisibility(ILandroid/view/View;I)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentIndex()I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    return p0
.end method

.method public jumpToIndex(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioCarousel;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioCarousel;->refresh()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/transsion/audio/widgets/AudioCarousel;->firstViewReference:I

    if-ne v4, v2, :cond_0

    iput v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->startIndex:I

    :cond_0
    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->touchUpMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->forwardTransition:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->backwardTransition:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioCarousel;->updateItems()V

    :cond_4
    return-void
.end method

.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0

    iput p2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mLastStartId:I

    return-void
.end method

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 1

    iget p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mPreviousIndex:I

    const-string p1, "Carousel"

    const-string v0, "                                                                         "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->nextState:I

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->previousState:I

    if-ne p2, p1, :cond_1

    iget p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->infiniteCarousel:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    invoke-interface {p1}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result p1

    if-lt p2, p1, :cond_3

    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    :cond_3
    iget p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {p1}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    invoke-interface {p1}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result p1

    if-lt p2, p1, :cond_5

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {p1}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    :cond_5
    iget p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    if-gez p1, :cond_6

    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    :cond_6
    :goto_1
    iget p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mPreviousIndex:I

    iget p2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    if-eq p1, p2, :cond_7

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    invoke-interface {p0, p1}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->onOldItem(I)V

    :goto_2
    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioCarousel;->updateItems()V

    return-void
.end method

.method public setAdapter(Lcom/transsion/audio/widgets/AudioCarousel$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAdapter:Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    return-void
.end method

.method public setInfiniteCarousel(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInfiniteCarousel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Carousel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->infiniteCarousel:Z

    if-nez v0, :cond_0

    const-string v0, "resetItemsVisibility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioCarousel;->resetItemsVisibility()V

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->infiniteCarousel:Z

    return-void
.end method

.method public transitionNext(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->nextState:I

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    return-void
.end method

.method public transitionPrevious(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->previousState:I

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    return-void
.end method

.method public transitionToIndex(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioCarousel;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mTargetIndex:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAnimateTargetDelay:I

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    iget p2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mIndex:I

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->previousState:I

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAnimateTargetDelay:I

    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p2, p0, Lcom/transsion/audio/widgets/AudioCarousel;->nextState:I

    iget p0, p0, Lcom/transsion/audio/widgets/AudioCarousel;->mAnimateTargetDelay:I

    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    :goto_0
    return-void
.end method
