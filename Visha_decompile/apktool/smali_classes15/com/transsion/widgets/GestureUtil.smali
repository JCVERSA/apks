.class public Lcom/transsion/widgets/GestureUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/GestureUtil$ScorllToListener;
    }
.end annotation


# static fields
.field public static final GESTURE_ACTION_DOWN:I = 0x8

.field public static final GESTURE_ACTION_UP:I = 0x9

.field public static final GESTURE_ANY:I = 0x0

.field public static final GESTURE_CLICK:I = 0x5

.field public static final GESTURE_DOWN:I = 0x4

.field public static final GESTURE_LEFT:I = 0x1

.field public static final GESTURE_LONGPRESS:I = 0x6

.field public static final GESTURE_RIGHT:I = 0x2

.field public static final GESTURE_SCROLL:I = 0x7

.field public static final GESTURE_UP:I = 0x3

.field public static final MIN_SLIDE_DETECTOR_DISTANCE:I = 0x50

.field private static x1:F

.field private static x2:F

.field private static y1:F

.field private static y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgets/GestureUtil$ScorllToListener;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgets/GestureUtil;->lambda$scrollGesture$0(Lcom/transsion/widgets/GestureUtil$ScorllToListener;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgets/GestureUtil;->lambda$scrollGesturesForAudio$2(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/transsion/widgets/GestureUtil$ScorllToListener;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgets/GestureUtil;->lambda$scrollGestureExactly$1(Lcom/transsion/widgets/GestureUtil$ScorllToListener;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$scrollGesture$0(Lcom/transsion/widgets/GestureUtil$ScorllToListener;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sput p2, Lcom/transsion/widgets/GestureUtil;->x1:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sput p2, Lcom/transsion/widgets/GestureUtil;->y1:F

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x42480000    # 50.0f

    if-ne p2, v3, :cond_4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sput p2, Lcom/transsion/widgets/GestureUtil;->x2:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sput p2, Lcom/transsion/widgets/GestureUtil;->y2:F

    sget v5, Lcom/transsion/widgets/GestureUtil;->y1:F

    sub-float v6, v5, p2

    cmpl-float v6, v6, v4

    if-lez v6, :cond_1

    invoke-interface {p0, v1}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    goto :goto_0

    :cond_1
    sub-float/2addr p2, v5

    cmpl-float p2, p2, v4

    if-lez p2, :cond_2

    invoke-interface {p0, v0}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    goto :goto_0

    :cond_2
    sget p2, Lcom/transsion/widgets/GestureUtil;->x1:F

    sget v5, Lcom/transsion/widgets/GestureUtil;->x2:F

    sub-float v6, p2, v5

    cmpl-float v6, v6, v4

    if-lez v6, :cond_3

    invoke-interface {p0, v3}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    goto :goto_0

    :cond_3
    sub-float/2addr v5, p2

    cmpl-float p2, v5, v4

    if-lez p2, :cond_4

    invoke-interface {p0, v2}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    :cond_4
    :goto_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_8

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sput p2, Lcom/transsion/widgets/GestureUtil;->x2:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sput p2, Lcom/transsion/widgets/GestureUtil;->y2:F

    sget v5, Lcom/transsion/widgets/GestureUtil;->y1:F

    sub-float v6, v5, p2

    cmpl-float v6, v6, v4

    if-lez v6, :cond_5

    invoke-interface {p0, v1}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    goto :goto_1

    :cond_5
    sub-float/2addr p2, v5

    cmpl-float p2, p2, v4

    if-lez p2, :cond_6

    invoke-interface {p0, v0}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    goto :goto_1

    :cond_6
    sget p2, Lcom/transsion/widgets/GestureUtil;->x1:F

    sget v0, Lcom/transsion/widgets/GestureUtil;->x2:F

    sub-float v1, p2, v0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    invoke-interface {p0, v3}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    goto :goto_1

    :cond_7
    sub-float/2addr v0, p2

    cmpl-float p2, v0, v4

    if-lez p2, :cond_8

    invoke-interface {p0, v2}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    :cond_8
    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    return v3
.end method

.method private static synthetic lambda$scrollGestureExactly$1(Lcom/transsion/widgets/GestureUtil$ScorllToListener;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x8

    invoke-interface {p0, p2}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sput p2, Lcom/transsion/widgets/GestureUtil;->x1:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sput p2, Lcom/transsion/widgets/GestureUtil;->y1:F

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sput p2, Lcom/transsion/widgets/GestureUtil;->x2:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sput p2, Lcom/transsion/widgets/GestureUtil;->y2:F

    sget v1, Lcom/transsion/widgets/GestureUtil;->y1:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    sget v1, Lcom/transsion/widgets/GestureUtil;->x1:F

    sget v2, Lcom/transsion/widgets/GestureUtil;->x2:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    if-le p2, v1, :cond_2

    sget p2, Lcom/transsion/widgets/GestureUtil;->y1:F

    sget v1, Lcom/transsion/widgets/GestureUtil;->y2:F

    sub-float v3, p2, v1

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1

    const/4 p2, 0x3

    invoke-interface {p0, p2}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    goto :goto_0

    :cond_1
    sub-float/2addr v1, p2

    cmpl-float p2, v1, v2

    if-lez p2, :cond_4

    const/4 p2, 0x4

    invoke-interface {p0, p2}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    goto :goto_0

    :cond_2
    sget p2, Lcom/transsion/widgets/GestureUtil;->x1:F

    sget v1, Lcom/transsion/widgets/GestureUtil;->x2:F

    sub-float v3, p2, v1

    cmpl-float v3, v3, v2

    if-lez v3, :cond_3

    invoke-interface {p0, v0}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    goto :goto_0

    :cond_3
    sub-float/2addr v1, p2

    cmpl-float p2, v1, v2

    if-lez p2, :cond_4

    const/4 p2, 0x2

    invoke-interface {p0, p2}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    :cond_4
    :goto_0
    const/16 p2, 0x9

    invoke-interface {p0, p2}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    invoke-virtual {p1, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    return v0
.end method

.method private static synthetic lambda$scrollGesturesForAudio$2(Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sput v0, Lcom/transsion/widgets/GestureUtil;->x1:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sput v0, Lcom/transsion/widgets/GestureUtil;->y1:F

    invoke-static {p1, v1}, Lcom/transsion/widgets/GestureUtil;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sput v0, Lcom/transsion/widgets/GestureUtil;->x2:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sput v0, Lcom/transsion/widgets/GestureUtil;->y2:F

    sget v0, Lcom/transsion/widgets/GestureUtil;->x1:F

    sget v2, Lcom/transsion/widgets/GestureUtil;->x2:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v2, Lcom/transsion/widgets/GestureUtil;->y1:F

    sget v4, Lcom/transsion/widgets/GestureUtil;->y2:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {p1, v1}, Lcom/transsion/widgets/GestureUtil;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-static {p1, v3}, Lcom/transsion/widgets/GestureUtil;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public static scrollGesture(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/widgets/GestureUtil$1;

    invoke-direct {v2, p1}, Lcom/transsion/widgets/GestureUtil$1;-><init>(Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v1, Lvd4;

    invoke-direct {v1, p1, v0}, Lvd4;-><init>(Lcom/transsion/widgets/GestureUtil$ScorllToListener;Landroid/view/GestureDetector;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static scrollGestureExactly(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/widgets/GestureUtil$2;

    invoke-direct {v2, p1}, Lcom/transsion/widgets/GestureUtil$2;-><init>(Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v1, Lud4;

    invoke-direct {v1, p1, v0}, Lud4;-><init>(Lcom/transsion/widgets/GestureUtil$ScorllToListener;Landroid/view/GestureDetector;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static scrollGesturesForAudio(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/widgets/GestureUtil$3;

    invoke-direct {v2, p1}, Lcom/transsion/widgets/GestureUtil$3;-><init>(Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance p1, Lwd4;

    invoke-direct {p1, v0}, Lwd4;-><init>(Landroid/view/GestureDetector;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
