.class Lcom/transsion/audio/widgets/MusicPlayListView$1;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/MusicPlayListView;->initCurrentRv(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/transsion/audio/widgets/MusicPlayListView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_a

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {v0}, Lcom/transsion/audio/widgets/MusicPlayListView;->n(Lcom/transsion/audio/widgets/MusicPlayListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->M1(Z)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->startX:F

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->startY:F

    sub-float/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {v7}, Lcom/transsion/audio/widgets/MusicPlayListView;->q(Lcom/transsion/audio/widgets/MusicPlayListView;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {v8}, Lcom/transsion/audio/widgets/MusicPlayListView;->n(Lcom/transsion/audio/widgets/MusicPlayListView;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {v8}, Lcom/transsion/audio/widgets/MusicPlayListView;->p(Lcom/transsion/audio/widgets/MusicPlayListView;)Z

    move-result v8

    if-nez v8, :cond_4

    const-wide/16 v8, 0x17c

    cmp-long v8, v5, v8

    if-ltz v8, :cond_4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v5, v8

    if-gez v8, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-int/2addr v7, v4

    int-to-float v4, v7

    cmpl-float v4, v8, v4

    if-lez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v4, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v7, v4, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz v7, :cond_4

    invoke-static {v4, v2}, Lcom/transsion/audio/widgets/MusicPlayListView;->s(Lcom/transsion/audio/widgets/MusicPlayListView;Z)V

    iget-object v4, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v4, v4, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    iget-object v4, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/transsion/audio/activities/AudioPlayerActivity;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {v4, v1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->M1(Z)V

    :cond_3
    iget-object v4, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v4, v4, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v4, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_4
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    int-to-long v7, p2

    const-wide/16 v9, 0x96

    add-long/2addr v7, v9

    cmp-long p2, v5, v7

    if-gtz p2, :cond_5

    move p2, v2

    goto :goto_0

    :cond_5
    move p2, v1

    :goto_0
    const/4 v4, -0x1

    if-nez p2, :cond_6

    iget-object v5, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {v5}, Lcom/transsion/audio/widgets/MusicPlayListView;->o(Lcom/transsion/audio/widgets/MusicPlayListView;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {v5}, Lcom/transsion/audio/widgets/MusicPlayListView;->n(Lcom/transsion/audio/widgets/MusicPlayListView;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v5, v5, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v5, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {v5, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->r(Lcom/transsion/audio/widgets/MusicPlayListView;Z)V

    :cond_6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {}, Lav3;->z()Z

    move-result p1

    if-eqz p1, :cond_8

    const/high16 p1, -0x3c380000    # -400.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    const/high16 p1, 0x43c80000    # 400.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_7

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_e

    if-nez p2, :cond_e

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->o(Lcom/transsion/audio/widgets/MusicPlayListView;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {p0, v2}, Lcom/transsion/audio/activities/AudioPlayerActivity;->M1(Z)V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p1, p1, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {p1, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->r(Lcom/transsion/audio/widgets/MusicPlayListView;Z)V

    :cond_b
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {p0, v2}, Lcom/transsion/audio/activities/AudioPlayerActivity;->M1(Z)V

    goto :goto_2

    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->startX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->startY:F

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/transsion/audio/widgets/MusicPlayListView;->t(Lcom/transsion/audio/widgets/MusicPlayListView;J)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {p1, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->s(Lcom/transsion/audio/widgets/MusicPlayListView;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p2, p1, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz p2, :cond_d

    invoke-static {p1, v2}, Lcom/transsion/audio/widgets/MusicPlayListView;->r(Lcom/transsion/audio/widgets/MusicPlayListView;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p1, p1, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_d
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$1;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->M1(Z)V

    :cond_e
    :goto_2
    return v1
.end method
