.class public Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private bubbleView:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->context:Landroid/content/Context;

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getMeasureHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getMeasuredWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public setBubbleView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setParam(II)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/16 v1, 0x30

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->show(Landroid/view/View;IF)V

    return-void
.end method

.method public show(Landroid/view/View;I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->show(Landroid/view/View;IF)V

    return-void
.end method

.method public show(Landroid/view/View;IF)V
    .locals 7

    .line 3
    sget-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->LEFT:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    .line 4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x50

    const/16 v2, 0x30

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->TOP:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->BOTTOM:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;->RIGHT:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;

    .line 8
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->bubbleView:Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;

    invoke-virtual {v5, v0, p3}, Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout;->setBubbleParams(Lcom/transsion/widgets/bubblepopwindow/BubbleRelativeLayout$BubbleLegOrientation;F)V

    const/4 p3, 0x2

    .line 9
    new-array v0, p3, [I

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iget-object p2, p0, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->context:Landroid/content/Context;

    instance-of p3, p2, Landroid/app/Activity;

    if-eqz p3, :cond_9

    .line 12
    check-cast p2, Landroid/app/Activity;

    if-eqz p2, :cond_9

    .line 13
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_9

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_1

    .line 15
    :cond_5
    aget p2, v0, v6

    aget p3, v0, v5

    invoke-virtual {p0}, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->getMeasureHeight()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p0, p1, v6, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 16
    :cond_6
    aget p2, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    aget v0, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, p3

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v6, p2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 17
    :cond_7
    aget p2, v0, v6

    invoke-virtual {p0}, Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p2, v1

    aget v0, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, p3

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v6, p2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 18
    :cond_8
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_9
    :goto_1
    return-void
.end method
