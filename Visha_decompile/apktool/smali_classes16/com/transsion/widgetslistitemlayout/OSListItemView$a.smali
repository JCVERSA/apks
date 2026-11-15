.class public Lcom/transsion/widgetslistitemlayout/OSListItemView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/OSListItemView;->updateGroupTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/widgetslistitemlayout/OSListItemView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    iput p2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v1

    const/16 v3, 0x8

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v4, :cond_2

    sget v1, Lcom/transsion/widgetslistitemlayout/R$id;->lil_right_checkbox:I

    iget-object v5, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v5}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setId(I)V

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    :goto_0
    iget-object v5, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v5}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v6}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v7}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget-object v7, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v7}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_dimen_icon_common_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v9, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Lolb;->h(Landroid/content/Context;I)I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-float v12, v5, v6

    int-to-float v9, v9

    add-float/2addr v12, v9

    int-to-float v9, v7

    add-float/2addr v12, v9

    iget v9, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->b:I

    int-to-float v9, v9

    add-float/2addr v12, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "titleTextWidth"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " subTitleTextWidth:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "totalWidth:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " getWidth():"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "initGroupTitleArrow"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v5}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x11

    const/4 v9, 0x6

    const/16 v13, 0xf

    const/4 v14, 0x0

    const/16 v15, 0x15

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v12, v5

    const/16 v7, 0x14

    if-ltz v5, :cond_6

    iget-object v5, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v5}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v7, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v7}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-eq v1, v4, :cond_4

    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v5, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v7, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v6, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v6}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v11, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v11}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v6, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v11, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v11}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v6, v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v11, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v11}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v6}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v6}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v11, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v11}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v6}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v11, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    :goto_1
    iget-object v6, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v6}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    iget-object v6, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v6}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    if-eq v1, v4, :cond_5

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_5
    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v7, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v7, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    move v0, v2

    goto/16 :goto_7

    :cond_6
    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v3, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v3}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v3, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v3}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_7
    iget-object v5, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v12, v5

    const/4 v12, 0x3

    if-ltz v5, :cond_a

    iget-object v5, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v5}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v5, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v5, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    if-eq v1, v4, :cond_9

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v4, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v4}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v1, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v4}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v4}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v4}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    :goto_3
    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_4
    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v5, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v7

    iget-object v4, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->s(Lcom/transsion/widgetslistitemlayout/OSListItemView;Landroid/widget/TextView;I)I

    move-result v1

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v0, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_a
    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v3, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v3}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eq v1, v4, :cond_b

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6

    :cond_b
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_6
    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_title_min_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v0, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;->c:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_5

    :goto_7
    return v0
.end method
