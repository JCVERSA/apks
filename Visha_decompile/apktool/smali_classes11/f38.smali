.class public Lf38;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lf38;


# instance fields
.field public a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lf38;)V
    .locals 0

    invoke-virtual {p0}, Lf38;->e()V

    return-void
.end method

.method public static c()Lf38;
    .locals 2

    sget-object v0, Lf38;->b:Lf38;

    if-nez v0, :cond_1

    const-class v0, Lf38;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf38;->b:Lf38;

    if-nez v1, :cond_0

    new-instance v1, Lf38;

    invoke-direct {v1}, Lf38;-><init>()V

    sput-object v1, Lf38;->b:Lf38;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lf38;->b:Lf38;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;
    .locals 0

    iget-object p0, p0, Lf38;->a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    return-object p0
.end method

.method public d(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-wide/16 v2, 0xe10

    div-long v4, p1, v2

    cmp-long p0, v4, v0

    const-string v0, " min"

    const-wide/16 v6, 0x3c

    if-lez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " h "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr p1, v2

    div-long/2addr p1, v6

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    rem-long/2addr p1, v2

    div-long/2addr p1, v6

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic e()V
    .locals 0

    iget-object p0, p0, Lf38;->a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;Landroid/content/Context;)V
    .locals 10

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ott_play_fullscreen_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    invoke-direct {v0, p2}, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf38;->a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    sget v0, Lcom/transsion/onlinevideo/R$layout;->player_fullscreen_popup_view:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_bubble:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/BubbleTextView;

    iget-object v3, p0, Lf38;->a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v3, p0, Lf38;->a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v3, p0, Lf38;->a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p2, v2, v2}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lf38;->a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    invoke-virtual {v3, p2}, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->setBubbleView(Landroid/view/View;)V

    iget-object v3, p0, Lf38;->a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v3, p0, Lf38;->a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v3, 0x2

    new-array v5, v3, [I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v6, v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    const/high16 v8, 0x41000000    # 8.0f

    if-ne v7, v4, :cond_2

    invoke-static {v8}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->h(F)I

    move-result v7

    goto :goto_0

    :cond_2
    invoke-static {}, Lf39;->d()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {v8}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->h(F)I

    move-result v8

    sub-int/2addr v7, v8

    :goto_0
    aput v7, v5, v2

    aget v7, v5, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->h(F)I

    move-result v8

    sub-int/2addr p2, v8

    add-int/2addr v7, p2

    aput v7, v5, v4

    aget p2, v5, v2

    sub-int/2addr v6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, v3

    add-int/2addr v6, p2

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->h(F)I

    move-result p2

    sub-int/2addr v6, p2

    invoke-virtual {v0, v6}, Lcom/transsion/widgets/BubbleTextView;->setTriangleOffset(I)V

    iget-object p2, p0, Lf38;->a:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    aget v0, v5, v2

    aget v2, v5, v4

    const v3, 0x800033

    invoke-virtual {p2, p1, v3, v0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Le38;

    invoke-direct {p2, p0}, Le38;-><init>(Lf38;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method
