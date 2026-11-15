.class public Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public b:Lcom/transsion/widgetslib/view/OSBigButton;

.field public c:Lcom/transsion/widgetslib/view/OSBigButton;

.field public d:Landroid/widget/LinearLayout;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->g()V

    .line 5
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->MediumButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_8

    .line 7
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 8
    sget v3, Lcom/transsion/widgetslib/R$styleable;->MediumButton_first_text:I

    if-ne v2, v3, :cond_0

    .line 9
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 10
    :cond_0
    sget v3, Lcom/transsion/widgetslib/R$styleable;->MediumButton_second_text:I

    if-ne v2, v3, :cond_1

    .line 11
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 12
    :cond_1
    sget v3, Lcom/transsion/widgetslib/R$styleable;->MediumButton_style_mod:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_5

    .line 13
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v4, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    goto/16 :goto_1

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_button_on_color_outline_selector:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 15
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_outline_white:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 16
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 17
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_red_color_selector:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 19
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 20
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 21
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 22
    :cond_4
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_selector:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 23
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 24
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 25
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 26
    :cond_5
    sget v3, Lcom/transsion/widgetslib/R$styleable;->MediumButton_first_enable:I

    if-ne v2, v3, :cond_6

    .line 27
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 28
    :cond_6
    sget v3, Lcom/transsion/widgetslib/R$styleable;->MediumButton_second_enable:I

    if-ne v2, v3, :cond_7

    .line 29
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 30
    :cond_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->j(II)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->i(II)V

    return-void
.end method


# virtual methods
.method public final c(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

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
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final e(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_btn_medium_width_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final f(Lcom/transsion/widgetslib/view/OSBigButton;Z)I
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result p0

    add-int/lit8 p0, p0, -0x4

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final g()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_view_auto_adjust_double_botton_layout_base:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v0, Lcom/transsion/widgetslib/R$id;->os_auto_aj_left_btn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSBigButton;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_auto_aj_right_btn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSBigButton;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_auto_aj_linear_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    new-instance v0, Lh97;

    invoke-direct {v0, p0}, Lh97;-><init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinButtonHeightDp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxButtonHeightDp(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinButtonHeightDp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxButtonHeightDp(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->m(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    new-instance v1, Li97;

    invoke-direct {v1, p0}, Li97;-><init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->registerOnMeasureListener(Lcom/transsion/widgetslib/view/OSBigButton$a;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    new-instance v1, Lj97;

    invoke-direct {v1, p0}, Lj97;-><init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->registerOnMeasureListener(Lcom/transsion/widgetslib/view/OSBigButton$a;)V

    return-void
.end method

.method public getFirstButton()Lcom/transsion/widgetslib/view/OSBigButton;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    return-object p0
.end method

.method public getSecondButton()Lcom/transsion/widgetslib/view/OSBigButton;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    return-object p0
.end method

.method public final h(Lcom/transsion/widgetslib/view/OSBigButton;I)Z
    .locals 6

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result p0

    int-to-float v2, p0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxLetterSpacing()F

    move-result v3

    const/4 v4, 0x1

    move-object v0, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFII)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic i(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->judgeButtonLayout()V

    return-void
.end method

.method public final synthetic j(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->judgeButtonLayout()V

    return-void
.end method

.method public judgeButtonLayout()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->e(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->h(Lcom/transsion/widgetslib/view/OSBigButton;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->h(Lcom/transsion/widgetslib/view/OSBigButton;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->e:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->e:Z

    new-instance v0, Lh97;

    invoke-direct {v0, p0}, Lh97;-><init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->e:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->e:Z

    new-instance v0, Lg97;

    invoke-direct {v0, p0}, Lg97;-><init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->e:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->k()V

    :cond_4
    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->n(Lcom/transsion/widgetslib/view/OSBigButton;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->n(Lcom/transsion/widgetslib/view/OSBigButton;)V

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxTextLine(I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMaxTextLine(I)V

    return-void
.end method

.method public final m(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->f(Lcom/transsion/widgetslib/view/OSBigButton;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinTextSizeSp(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->f(Lcom/transsion/widgetslib/view/OSBigButton;Z)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinTextSizeSp(I)V

    return-void
.end method

.method public final n(Lcom/transsion/widgetslib/view/OSBigButton;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-gtz v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxLetterSpacing()F

    move-result v3

    const/4 v4, 0x2

    move-object v0, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFII)Z

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxTextSizeSp()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v7, 0x1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    int-to-float v2, v8

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMaxLetterSpacing()F

    move-result v3

    const/4 v4, 0x2

    move-object v0, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OSBigButton;->isTextFullyVisibleInButton(Ljava/lang/CharSequence;FFII)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v7}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->f(Lcom/transsion/widgetslib/view/OSBigButton;Z)I

    move-result p0

    move v1, p0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OSBigButton;->getMinTextSizeSp()I

    move-result p0

    if-eq p0, v1, :cond_3

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinTextSizeSp(I)V

    :cond_3
    return-void
.end method

.method public updateLayoutToHorizontal()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->e:Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->l(I)V

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->e:Z

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->m(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_btn_medium_width_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

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

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateLayoutToVertical()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->e:Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->d(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->l(I)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->e:Z

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->m(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space125:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

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

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->b:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->c:Lcom/transsion/widgetslib/view/OSBigButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
