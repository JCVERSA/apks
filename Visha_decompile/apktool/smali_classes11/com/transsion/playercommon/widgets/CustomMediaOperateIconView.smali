.class public Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/LinearLayout;

.field public c:I

.field public d:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    .line 2
    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->c:I

    .line 3
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x10

    .line 5
    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->c:I

    .line 6
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x10

    .line 8
    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->c:I

    .line 9
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$layout;->item_media_icon_layout:I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/playercommon/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/CustomIconItemData;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/CustomIconItemData;->isIconVisible()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/CustomIconItemData;->getIconResId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/CustomIconItemData;->isTextVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/CustomIconItemData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->d:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;->getItemClickListener(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public addItem(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->a(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->c:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 4
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public addItem(Lcom/transsion/playercommon/data/CustomIconItemData;I)Landroid/view/View;
    .locals 3

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->a(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->c:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 8
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public final b()V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->c:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItemTextView(I)Landroid/widget/TextView;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->getItemView(I)Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$id;->text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemViewIndex(Landroid/view/View;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public removeItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public setOnItemClick(Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->d:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

    return-void
.end method

.method public updateItem(ILcom/transsion/playercommon/data/CustomIconItemData;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->a(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public updateItemIcon(Landroid/view/View;I)V
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$id;->icon:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public updateItemText(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$id;->text:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
