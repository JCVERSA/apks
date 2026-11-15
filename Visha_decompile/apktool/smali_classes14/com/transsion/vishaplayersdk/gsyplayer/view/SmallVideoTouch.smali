.class public Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private _xDelta:I

.field private _yDelta:I

.field private mDownX:I

.field private mDownY:I

.field private mGsyBaseVideoPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

.field private mMarginLeft:I

.field private mMarginTop:I


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mMarginLeft:I

    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mMarginTop:I

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mGsyBaseVideoPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    const/4 v2, 0x1

    if-eq p2, v2, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mGsyBaseVideoPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->_xDelta:I

    sub-int/2addr p1, v2

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->_yDelta:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mMarginLeft:I

    if-lt p1, v2, :cond_1

    iput v2, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_1
    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mMarginTop:I

    if-lt v0, p1, :cond_2

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_2
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-gtz p1, :cond_3

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_3
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-gtz p1, :cond_4

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_4
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mGsyBaseVideoPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_5
    iget p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mDownY:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v0, 0x5

    if-ge p2, v0, :cond_6

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mDownX:I

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v0, :cond_6

    return v1

    :cond_6
    return v2

    :cond_7
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mDownX:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mDownY:I

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->mGsyBaseVideoPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->_xDelta:I

    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/view/SmallVideoTouch;->_yDelta:I

    :goto_0
    return v1
.end method
