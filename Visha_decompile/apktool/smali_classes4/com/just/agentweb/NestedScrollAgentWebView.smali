.class public Lcom/just/agentweb/NestedScrollAgentWebView;
.super Lcom/just/agentweb/AgentWebView;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;


# instance fields
.field private isHorMode:Z

.field private mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mNestedYOffset:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/just/agentweb/AgentWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 2
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->isHorMode:Z

    .line 5
    invoke-direct {p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/AgentWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 7
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    .line 8
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->isHorMode:Z

    .line 10
    invoke-direct {p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/just/agentweb/NestedScrollAgentWebView;->setNestedScrollingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method public getLastMotionX()I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionX:I

    return p0
.end method

.method public getLastMotionY()I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    return p0
.end method

.method public hasNestedScrollingParent()Z
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result p0

    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput v2, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x2

    if-eqz v1, :cond_7

    const/4 v7, 0x1

    if-eq v1, v7, :cond_6

    if-eq v1, v5, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_6

    const/4 v0, 0x5

    if-eq v1, v0, :cond_6

    goto/16 :goto_1

    :cond_1
    iget p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    sub-int/2addr p1, v3

    iget v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionX:I

    sub-int/2addr v1, v4

    iget-boolean v4, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->isHorMode:Z

    if-nez v4, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v4, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    iget-object v4, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    invoke-virtual {p0, v2, p1, v1, v4}, Lcom/just/agentweb/NestedScrollAgentWebView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollConsumed:[I

    aget v1, v1, v7

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v1, v1, v7

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    iget-object v4, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v4, v4, v7

    add-int/2addr v1, v4

    iput v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    :cond_3
    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v1, v1, v7

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int v3, v1, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v10, v2, v1

    sub-int v12, p1, v10

    const/4 v11, 0x0

    iget-object v13, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    const/4 v9, 0x0

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/just/agentweb/NestedScrollAgentWebView;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v1, v1, v7

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    int-to-float p1, v1

    invoke-virtual {v0, v6, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    iget-object v1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mScrollOffset:[I

    aget v1, v1, v7

    add-int/2addr p1, v1

    iput p1, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mNestedYOffset:I

    :cond_4
    invoke-super {p0, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    :cond_5
    :goto_0
    iput-boolean v7, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->isHorMode:Z

    invoke-super {p0, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/just/agentweb/NestedScrollAgentWebView;->stopNestedScroll()V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    :cond_7
    iput v3, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionY:I

    iput v4, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mLastMotionX:I

    invoke-virtual {p0, v5}, Lcom/just/agentweb/NestedScrollAgentWebView;->startNestedScroll(I)Z

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean v2, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->isHorMode:Z

    move v2, p1

    :goto_1
    return v2
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public stopNestedScroll()V
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/NestedScrollAgentWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
