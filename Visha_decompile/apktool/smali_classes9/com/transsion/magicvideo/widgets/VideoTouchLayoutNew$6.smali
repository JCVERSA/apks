.class Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->showNewPlayerFeaturesBubble(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->t0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->t0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-boolean v1, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->n:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->v0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    new-instance v1, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->E0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$layout;->player_new_feature_popup_view:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->D0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->u0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_bubble:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/BubbleTextView;

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->F0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Lcom/transsion/widgets/BubbleTextView;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->v0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->v0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->v0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->u0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/transsion/magicvideo/R$id;->ll_popwnd:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6$a;

    invoke-direct {v3, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6$a;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->u0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->v0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->u0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->setBubbleView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->v0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->u0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->v0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->u0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, 0x2

    new-array v3, v0, [I

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->val$parent:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, v3, v1

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    const/high16 v6, 0x41b00000    # 22.0f

    if-nez v5, :cond_2

    invoke-static {}, Lf39;->d()I

    move-result v5

    iget-object v7, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v7}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->u0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v6}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->h(F)I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v3, v1

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->h(F)I

    move-result v5

    aput v5, v3, v1

    :goto_0
    aget v5, v3, v2

    iget-object v6, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v6}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->u0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->h(F)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v3, v2

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v5}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->w0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/BubbleTextView;

    move-result-object v5

    aget v6, v3, v1

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->val$parent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v0

    add-int/2addr v4, v6

    invoke-virtual {v5, v4}, Lcom/transsion/widgets/BubbleTextView;->setTriangleOffset(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->this$0:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->v0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;->val$parent:Landroid/view/View;

    aget v1, v3, v1

    aget v2, v3, v2

    const v3, 0x800033

    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_5
    :goto_1
    return-void
.end method
