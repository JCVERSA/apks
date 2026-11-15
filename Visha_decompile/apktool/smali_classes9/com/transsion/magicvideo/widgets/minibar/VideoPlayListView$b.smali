.class public Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->w(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public c:F

.field public final synthetic d:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->d:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->d:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->n(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->d:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->b:F

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v3, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->c:F

    sub-float/2addr p2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->d:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-static {v5}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->o(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->d:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {}, Lav3;->z()Z

    move-result p1

    if-eqz p1, :cond_4

    const/high16 p1, -0x3cb80000    # -200.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    const/high16 p1, 0x43480000    # 200.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_8

    if-nez v3, :cond_8

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->d:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->d:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->c:F

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->d:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->q(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;J)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;->d:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    :goto_2
    return v1
.end method
