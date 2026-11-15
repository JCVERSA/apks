.class public Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->b1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:J

.field public c:Z

.field public final synthetic d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ShortPlayerDetailFragment"

    const-string v1, "onDown"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->b:J

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->h0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->playPre()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->h0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->playNext()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return p3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "ShortPlayerDetailFragment"

    const-string v1, "onLongPress"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->f0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->c0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->c:Z

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 9

    const-string v0, "ShortPlayerDetailFragment"

    const-string v1, "onSingleTapUp"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    sub-long/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->c0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->d:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->c0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$b;->c:Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
