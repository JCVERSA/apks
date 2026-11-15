.class public Lcom/transsion/widgets/popup/BasePopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    }
.end annotation


# instance fields
.field private mAnimationStyle:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mElevation:I

.field private mGravity:I

.field private mHeight:I

.field private mLayoutId:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOutsideTouchable:Z

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mTarget:Landroid/view/View;

.field private mTouchable:Z

.field private mView:Landroid/view/View;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsb0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/widgets/popup/BasePopupWindow;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/popup/BasePopupWindow;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mAnimationStyle:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/transsion/widgets/popup/BasePopupWindow$Builder;
    .locals 1

    new-instance v0, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/popup/BasePopupWindow$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgets/popup/BasePopupWindow;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mElevation:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/widgets/popup/BasePopupWindow;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mGravity:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/widgets/popup/BasePopupWindow;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mHeight:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/widgets/popup/BasePopupWindow;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mLayoutId:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/widgets/popup/BasePopupWindow;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/widgets/popup/BasePopupWindow;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/widgets/popup/BasePopupWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/widgets/popup/BasePopupWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTouchable:Z

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/widgets/popup/BasePopupWindow;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mView:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/widgets/popup/BasePopupWindow;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mWidth:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mView:Landroid/view/View;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mLayoutId:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mWidth:I

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_2
    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mHeight:I

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOutsideTouchable:Z

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTouchable:Z

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mElevation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v0, 0x2

    new-array v3, v0, [I

    iget-object v4, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v5, v3, v4

    aget v2, v3, v2

    iget-object v3, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v6, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mGravity:I

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mWidth:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    iget v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    :pswitch_1
    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mWidth:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    iget v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    sub-int/2addr v7, v3

    iget v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    add-int/2addr v7, v2

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    invoke-virtual {v0, v1, v7, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_1

    :pswitch_3
    sub-int/2addr v7, v3

    div-int/2addr v7, v0

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    iget v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    add-int/2addr v7, v2

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    invoke-virtual {v0, v1, v7, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    iget v2, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_1

    :pswitch_5
    sub-int/2addr v7, v3

    div-int/2addr v7, v0

    add-int/2addr v5, v7

    iget v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    add-int/2addr v5, v1

    sub-int/2addr v8, v6

    div-int/2addr v8, v0

    add-int/2addr v2, v8

    iget v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    invoke-virtual {v0, p0, v4, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    sub-int/2addr v7, v3

    add-int/2addr v5, v7

    iget v3, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    add-int/2addr v5, v3

    sub-int/2addr v8, v6

    add-int/2addr v2, v8

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    add-int/2addr v2, p0

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    iget v3, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    add-int/2addr v5, v3

    sub-int/2addr v7, v6

    add-int/2addr v2, v7

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    add-int/2addr v2, p0

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    sub-int/2addr v7, v3

    add-int/2addr v5, v7

    iget v3, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    add-int/2addr v5, v3

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    add-int/2addr v2, p0

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    iget v3, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    add-int/2addr v5, v3

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    add-int/2addr v2, p0

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    add-int/2addr v5, v7

    sub-int/2addr v5, v3

    iget v3, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    add-int/2addr v5, v3

    sub-int/2addr v2, v6

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    add-int/2addr v2, p0

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    :pswitch_b
    sub-int/2addr v7, v3

    div-int/2addr v7, v0

    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    add-int/2addr v5, v7

    iget v3, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    add-int/2addr v5, v3

    sub-int/2addr v2, v6

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    add-int/2addr v2, p0

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mTarget:Landroid/view/View;

    iget v3, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetX:I

    add-int/2addr v5, v3

    sub-int/2addr v2, v6

    iget p0, p0, Lcom/transsion/widgets/popup/BasePopupWindow;->mOffsetY:I

    add-int/2addr v2, p0

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
