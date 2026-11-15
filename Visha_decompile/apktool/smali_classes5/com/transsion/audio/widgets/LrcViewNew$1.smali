.class Lcom/transsion/audio/widgets/LrcViewNew$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/LrcViewNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isTouchForStopFling:Z

.field final synthetic this$0:Lcom/transsion/audio/widgets/LrcViewNew;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/LrcViewNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->isTouchForStopFling:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->g(Lcom/transsion/audio/widgets/LrcViewNew;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->isTouchForStopFling:Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->o(Lcom/transsion/audio/widgets/LrcViewNew;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->isTouchForStopFling:Z

    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->n(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;

    move-result-object p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->r(Lcom/transsion/audio/widgets/LrcViewNew;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->e(Lcom/transsion/audio/widgets/LrcViewNew;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->m(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->n(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;

    move-result-object p0

    if-eqz p0, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->m(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->h(Lcom/transsion/audio/widgets/LrcViewNew;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/audio/widgets/LrcViewNew;->p(Lcom/transsion/audio/widgets/LrcViewNew;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->e(Lcom/transsion/audio/widgets/LrcViewNew;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->o(Lcom/transsion/audio/widgets/LrcViewNew;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->l(Lcom/transsion/audio/widgets/LrcViewNew;)F

    move-result p1

    float-to-int v2, p1

    float-to-int v4, p4

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->k(Lcom/transsion/audio/widgets/LrcViewNew;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/transsion/audio/widgets/LrcViewNew;->w(Lcom/transsion/audio/widgets/LrcViewNew;I)F

    move-result p1

    float-to-int p1, p1

    add-int/lit16 v7, p1, -0x12c

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->w(Lcom/transsion/audio/widgets/LrcViewNew;I)F

    move-result p0

    float-to-int p0, p0

    add-int/lit16 v8, p0, 0x12c

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return p2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->m(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->h(Lcom/transsion/audio/widgets/LrcViewNew;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1, p2}, Lcom/transsion/audio/widgets/LrcViewNew;->q(Lcom/transsion/audio/widgets/LrcViewNew;Z)V

    goto :goto_1

    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p3, 0x40000000    # 2.0f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_3

    const-string p1, "vd_audio_lyrics_drag_view"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->l(Lcom/transsion/audio/widgets/LrcViewNew;)F

    move-result p3

    neg-float p4, p4

    add-float/2addr p3, p4

    invoke-static {p1, p3}, Lcom/transsion/audio/widgets/LrcViewNew;->t(Lcom/transsion/audio/widgets/LrcViewNew;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->f(Lcom/transsion/audio/widgets/LrcViewNew;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    const/16 p1, 0x12c

    :goto_0
    iget-object p3, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p3}, Lcom/transsion/audio/widgets/LrcViewNew;->l(Lcom/transsion/audio/widgets/LrcViewNew;)F

    move-result p4

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->w(Lcom/transsion/audio/widgets/LrcViewNew;I)F

    move-result v0

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-static {p3, p4}, Lcom/transsion/audio/widgets/LrcViewNew;->t(Lcom/transsion/audio/widgets/LrcViewNew;F)V

    iget-object p3, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p3}, Lcom/transsion/audio/widgets/LrcViewNew;->l(Lcom/transsion/audio/widgets/LrcViewNew;)F

    move-result p4

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->k(Lcom/transsion/audio/widgets/LrcViewNew;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v0, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->w(Lcom/transsion/audio/widgets/LrcViewNew;I)F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {p4, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p3, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->t(Lcom/transsion/audio/widgets/LrcViewNew;F)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->l(Lcom/transsion/audio/widgets/LrcViewNew;)F

    move-result p1

    iget-object p3, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p3, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->w(Lcom/transsion/audio/widgets/LrcViewNew;I)F

    move-result p3

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return p2

    :cond_6
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->m(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->h(Lcom/transsion/audio/widgets/LrcViewNew;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->v(Lcom/transsion/audio/widgets/LrcViewNew;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->u(Lcom/transsion/audio/widgets/LrcViewNew;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v1}, Lcom/transsion/audio/widgets/LrcViewNew;->k(Lcom/transsion/audio/widgets/LrcViewNew;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget v1, v1, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v3}, Lcom/transsion/audio/widgets/LrcViewNew;->m(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v3}, Lcom/transsion/audio/widgets/LrcViewNew;->m(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v4}, Lcom/transsion/audio/widgets/LrcViewNew;->j(Lcom/transsion/audio/widgets/LrcViewNew;)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v1, v5

    invoke-interface {v3, v4, v1, v2}, Lcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;->onPlayClick(Lcom/transsion/audio/widgets/LrcViewNew;J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->q(Lcom/transsion/audio/widgets/LrcViewNew;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1}, Lcom/transsion/audio/widgets/LrcViewNew;->e(Lcom/transsion/audio/widgets/LrcViewNew;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/LrcViewNew;->s(Lcom/transsion/audio/widgets/LrcViewNew;I)V

    const-string p1, "vd_audio_lyrics_drag_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->n(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->n(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;->onTap(Lcom/transsion/audio/widgets/LrcViewNew;FF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->n(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->isTouchForStopFling:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->n(Lcom/transsion/audio/widgets/LrcViewNew;)Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/LrcViewNew$1;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;->onTap(Lcom/transsion/audio/widgets/LrcViewNew;FF)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
