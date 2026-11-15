.class public Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

.field public c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

.field public d:Landroid/widget/LinearLayout;

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public final i:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->f:Z

    .line 6
    iput p3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->g:I

    .line 7
    iput p3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->h:I

    .line 8
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->i:Landroid/text/TextPaint;

    .line 9
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->i()V

    .line 10
    sget-object v1, Lcom/transsion/widgetsliquid/R$styleable;->MediumButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    move v2, p3

    :goto_0
    if-ge v2, v1, :cond_8

    .line 12
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 13
    sget v4, Lcom/transsion/widgetsliquid/R$styleable;->MediumButton_first_text:I

    if-ne v3, v4, :cond_0

    .line 14
    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 15
    :cond_0
    sget v4, Lcom/transsion/widgetsliquid/R$styleable;->MediumButton_second_text:I

    if-ne v3, v4, :cond_1

    .line 16
    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 17
    :cond_1
    sget v4, Lcom/transsion/widgetsliquid/R$styleable;->MediumButton_style_mod:I

    if-ne v3, v4, :cond_5

    .line 18
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eq v3, v0, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto/16 :goto_1

    .line 19
    :cond_2
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v3

    sget v4, Lcom/transsion/widgetsliquid/R$color;->os_button_on_color_outline_selector:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 20
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    sget v5, Lcom/transsion/widgetsliquid/R$drawable;->os_btn_big_outline_white:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 21
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v3

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 22
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 23
    :cond_3
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v3

    sget v4, Lcom/transsion/widgetsliquid/R$color;->os_platform_red_color_selector:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 24
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    sget v5, Lcom/transsion/widgetsliquid/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v3

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 26
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 27
    :cond_4
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v3

    sget v4, Lcom/transsion/widgetsliquid/R$color;->os_platform_basic_color_selector:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 28
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    sget v5, Lcom/transsion/widgetsliquid/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v3}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v3

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 30
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 31
    :cond_5
    sget v4, Lcom/transsion/widgetsliquid/R$styleable;->MediumButton_first_enable:I

    if-ne v3, v4, :cond_6

    .line 32
    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->setEnabled(Z)V

    goto :goto_1

    .line 33
    :cond_6
    sget v4, Lcom/transsion/widgetsliquid/R$styleable;->MediumButton_second_enable:I

    if-ne v3, v4, :cond_7

    .line 34
    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->setEnabled(Z)V

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 35
    :cond_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->m(II)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->l(II)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/transsion/widgetslib/view/OSBigButton;IZ)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxTextSizeSp(I)V

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinTextSizeSp(I)V

    int-to-float p0, p2

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/view/OSBigButton;->setTextSize(F)V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxLetterSpacing()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e(Lcom/transsion/widgetslib/view/OSBigButton;I)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v1

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->h:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e(Lcom/transsion/widgetslib/view/OSBigButton;I)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final e(Lcom/transsion/widgetslib/view/OSBigButton;I)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->k(Lcom/transsion/widgetslib/view/OSBigButton;III)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    add-int/lit8 v3, p2, -0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->k(Lcom/transsion/widgetslib/view/OSBigButton;III)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x4

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v3

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v0

    if-ne v0, p2, :cond_3

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinTextSizeSp()I

    move-result v0

    if-ne v0, p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c(Lcom/transsion/widgetslib/view/OSBigButton;IZ)V

    return v4

    :cond_4
    :goto_1
    return v1
.end method

.method public final f(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v0, :cond_5

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    if-ge v1, v0, :cond_3

    goto :goto_0

    :cond_2
    if-ge v0, v1, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getFirstButton()Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    return-object p0
.end method

.method public getSecondButton()Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    return-object p0
.end method

.method public final h(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetsliquid/R$dimen;->os_btn_medium_width_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$layout;->os_liq_view_auto_adjust_double_botton_layout_base:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v0, Lcom/transsion/widgetsliquid/R$id;->os_auto_aj_left_btn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    sget v0, Lcom/transsion/widgetsliquid/R$id;->os_auto_aj_right_btn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    sget v0, Lcom/transsion/widgetsliquid/R$id;->os_auto_aj_linear_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    new-instance v0, Ln57;

    invoke-direct {v0, p0}, Ln57;-><init>(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinButtonHeightDp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxButtonHeightDp(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinButtonHeightDp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxButtonHeightDp(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->g:I

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->h:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->p(Z)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    new-instance v1, Lo57;

    invoke-direct {v1, p0}, Lo57;-><init>(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->registerOnMeasureListener(Lcom/transsion/widgetslib/view/OSBigButton$a;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    new-instance v1, Lp57;

    invoke-direct {v1, p0}, Lp57;-><init>(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->registerOnMeasureListener(Lcom/transsion/widgetslib/view/OSBigButton$a;)V

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->setButtonMixLevel(II)V

    return-void
.end method

.method public final j(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;I)Z
    .locals 6

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result p0

    int-to-float v2, p0

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxLetterSpacing()F

    move-result v3

    const/4 v4, 0x1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFII)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public judgeButtonLayout()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->h(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->f(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->j(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->j(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    new-instance v0, Ln57;

    invoke-direct {v0, p0}, Ln57;-><init>(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    new-instance v0, Lm57;

    invoke-direct {v0, p0}, Lm57;-><init>(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->n()V

    :cond_5
    return-void
.end method

.method public final k(Lcom/transsion/widgetslib/view/OSBigButton;III)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    const/4 v0, 0x1

    if-gtz p4, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->i:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    int-to-float p0, p2

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p0, p2

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {v2, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxLetterSpacing()F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, ""

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v2, 0x0

    invoke-static {p0, v2, p2, v1, p4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result p4

    invoke-virtual {p0, p2, p4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-ge p1, p3, :cond_3

    return v2

    :cond_3
    sub-int/2addr p3, v0

    invoke-virtual {p0, p3}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result p0

    if-lez p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public final synthetic l(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->judgeButtonLayout()V

    return-void
.end method

.method public final synthetic m(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->judgeButtonLayout()V

    return-void
.end method

.method public final n()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final o(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxTextLine(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxTextLine(I)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    if-eqz v2, :cond_0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    if-lez v1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public final p(Z)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p1

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->g:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c(Lcom/transsion/widgetslib/view/OSBigButton;IZ)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p1

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->h:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c(Lcom/transsion/widgetslib/view/OSBigButton;IZ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p1

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->g:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c(Lcom/transsion/widgetslib/view/OSBigButton;IZ)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->getOsBigButton()Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object p1

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->h:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c(Lcom/transsion/widgetslib/view/OSBigButton;IZ)V

    return-void
.end method

.method public setAutoAdjustLayoutEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->f:Z

    return-void
.end method

.method public setButtonMixLevel(II)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    :cond_0
    return-void
.end method

.method public setMixLevel(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    :cond_0
    return-void
.end method

.method public updateLayoutToHorizontal()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->g(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->o(I)V

    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->p(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsliquid/R$dimen;->os_btn_medium_width_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateLayoutToVertical()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->g(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->o(I)V

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->e:Z

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->p(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$dimen;->os_space125:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v5, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;->c:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
