.class Lcom/transsion/widgets/GestureUtil$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/GestureUtil;->scrollGesturesForAudio(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/GestureUtil$3;->val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p4, p3

    sub-float/2addr p2, p1

    float-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v4, p4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/16 p3, 0x50

    const/4 v0, 0x1

    if-lt p1, p3, :cond_7

    const-wide v1, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    mul-double/2addr v1, v4

    const-wide v6, 0x3ff2d97c7f3321d2L    # 1.1780972450961724

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const/4 p1, 0x0

    cmpl-float p3, p4, p1

    const/4 p4, 0x3

    const/4 v3, 0x4

    if-lez p3, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v6, p3

    cmpg-double p3, v6, v1

    const/4 v1, 0x2

    if-gez p3, :cond_1

    :goto_0
    move p4, v1

    goto :goto_3

    :cond_1
    cmpg-double p3, v6, v4

    if-gez p3, :cond_2

    goto :goto_0

    :cond_2
    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    goto :goto_2

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v6, p3

    cmpg-double p3, v6, v1

    if-gez p3, :cond_4

    :goto_1
    move p4, v0

    goto :goto_3

    :cond_4
    cmpg-double p3, v6, v4

    if-gez p3, :cond_5

    goto :goto_1

    :cond_5
    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    :goto_2
    move p4, v3

    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/transsion/widgets/GestureUtil$3;->val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;

    invoke-interface {p0, p4}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    :cond_7
    return v0

    :cond_8
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/GestureUtil$3;->val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/GestureUtil$3;->val$listener:Lcom/transsion/widgets/GestureUtil$ScorllToListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/transsion/widgets/GestureUtil$ScorllToListener;->scrollTo(I)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
