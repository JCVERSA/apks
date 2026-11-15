.class public Lcom/transsion/widgetslib/view/OSLoadingButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public b:Lcom/transsion/widgetslib/view/OSBigButton;

.field public c:Lcom/transsion/widgetslib/view/OSLoadingView;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/OSLoadingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/OSLoadingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->d:Z

    .line 5
    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingButton;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/view/OSLoadingButton;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingButton;->e(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/OSLoadingButton;)Lcom/transsion/widgetslib/view/OSBigButton;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/view/OSLoadingButton;)Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p0
.end method


# virtual methods
.method public final d(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$layout;->os_loading_button_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$id;->os_loading_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSBigButton;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_loading_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    new-instance v0, Lr87;

    invoke-direct {v0, p0}, Lr87;-><init>(Lcom/transsion/widgetslib/view/OSLoadingButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic e(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->g:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v0, v0

    sub-float v4, v0, v1

    int-to-float v2, v2

    sub-float/2addr v4, v2

    int-to-float v3, v3

    sub-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    add-float/2addr v1, v4

    iget-object v2, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x12

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/widgetslib/R$dimen;->os_space150:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {}, Lolb;->l0()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    sub-float/2addr v0, v1

    int-to-float v1, v5

    sub-float/2addr v0, v1

    int-to-float v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    int-to-float v0, v3

    sub-float/2addr v4, v0

    int-to-float v0, v5

    sub-float/2addr v4, v0

    float-to-int v0, v4

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getButton()Lcom/transsion/widgetslib/view/OSBigButton;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    return-object p0
.end method

.method public getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->d:Z

    return p0
.end method

.method public setButtonHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinButtonHeightDp(I)V

    :cond_0
    return-void
.end method

.method public setButtonTextSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinTextSizeSp(I)V

    :cond_0
    return-void
.end method

.method public setLoading(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->d:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->d:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/transsion/widgetslib/view/OSLoadingButton$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/OSLoadingButton$a;-><init>(Lcom/transsion/widgetslib/view/OSLoadingButton;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->startLoadingAnimation()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, v1, v0, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingButton;->f()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
