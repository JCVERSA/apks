.class public Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$a;
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/TextView;

.field public g:Ljava/lang/String;

.field public h:Landroid/widget/TextView;

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Landroid/widget/TextView;

.field public o:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$a;

.field public p:I

.field public q:I

.field public r:Landroid/graphics/drawable/GradientDrawable;

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Z

.field public u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 4
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->j:Z

    .line 5
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    .line 6
    sget v0, Lcom/transsion/widgetslib/R$color;->os_edittext_hios_bg_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->u:I

    .line 7
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    .line 9
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 10
    sget v4, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_field_label:I

    if-ne v3, v4, :cond_0

    .line 11
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->g:Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_0
    sget v4, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_show_error:I

    if-ne v3, v4, :cond_1

    .line 13
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->i:Z

    goto :goto_1

    .line 14
    :cond_1
    sget v4, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_field_radius:I

    if-ne v3, v4, :cond_2

    const/4 v4, 0x6

    .line 15
    invoke-static {p1, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->l:I

    goto :goto_1

    .line 16
    :cond_2
    sget v4, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_bg_color:I

    if-ne v3, v4, :cond_3

    .line 17
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$color;->os_seekbar_thumbinside_color:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->u:I

    goto :goto_1

    .line 18
    :cond_3
    sget v4, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_show_background_round:I

    if-ne v3, v4, :cond_4

    .line 19
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->t:Z

    goto :goto_1

    .line 20
    :cond_4
    sget v4, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditField_os_ef_hios:I

    if-ne v3, v4, :cond_5

    .line 21
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->j:Z

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_view_materal_edit_field_layout_base:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dialog_input_tip_max:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->k:Ljava/lang/String;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_field:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->c:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_text_error_hint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->h:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->i:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_second_root_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->d:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_field_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->p:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_fill_weakest:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_fill_weakest_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->q:I

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->r:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->r:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/widgetslib/R$id;->os_ef_edit_text_label:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->j:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_magin_xos:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->setRootPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->t:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->showBackgroundRoundCorner()V

    :cond_3
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->m:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/R$string;->os_edit_text_num_format:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_secondary_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_quaternary_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/R$string;->os_edit_text_num_format:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->n:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->updateUnderlineView(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->o:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$a;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->n:Landroid/widget/TextView;

    invoke-interface {v0, p1, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$a;->a(Landroid/text/Editable;Landroid/widget/TextView;)V

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getBackgroundRoundCornerColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->u:I

    return p0
.end method

.method public getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->c:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public getEditTextLabel()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method public getNumText()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->c:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->c:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->c:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setBackgroundRoundCornerColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->u:I

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->updateUnderlineView(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->h:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->updateUnderlineView(Z)V

    :goto_1
    return-object p0
.end method

.method public setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditField$a;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .locals 4

    const/4 v0, 0x0

    sget v1, Lcom/transsion/widgetslib/R$id;->os_ef_num_text:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->n:Landroid/widget/TextView;

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->m:I

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->m:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->c:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$string;->os_edit_text_num_format:I

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->c:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->o:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField$a;

    return-object p0
.end method

.method public setRootPaddingRelative(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->d:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setTipInputMax(I)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    move-result-object p0

    return-object p0
.end method

.method public setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->k:Ljava/lang/String;

    return-object p0
.end method

.method public showBackgroundRoundCorner()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner14:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->s:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->d:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateUnderlineView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->r:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x2

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->p:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->r:Landroid/graphics/drawable/GradientDrawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_0
    return-void
.end method
