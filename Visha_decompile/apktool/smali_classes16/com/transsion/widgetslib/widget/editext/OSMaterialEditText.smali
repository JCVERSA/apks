.class public Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;,
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;,
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;,
        Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Ljava/lang/String;

.field public C:Landroid/widget/TextView;

.field public D:Ljava/lang/String;

.field public E:Landroid/widget/ImageView;

.field public F:Landroid/widget/ImageView;

.field public G:Landroid/view/View;

.field public H:Landroid/view/View;

.field public I:Landroid/view/View;

.field public J:Landroid/view/View;

.field public K:Landroid/view/View;

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Landroid/widget/TextView;

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:Z

.field public a0:Z

.field public b:Landroid/content/Context;

.field public b0:Z

.field public c:I

.field public c0:Z

.field public d:I

.field public d0:Ljava/lang/String;

.field public e:I

.field public e0:Z

.field public f:Z

.field public f0:Z

.field public g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

.field public g0:Lws7;

.field public h:Landroid/widget/ImageView;

.field public h0:Landroid/graphics/drawable/GradientDrawable;

.field public i:Landroid/widget/ImageView;

.field public i0:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public mIsHiOSLayout:Z

.field public mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field public mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

.field public mRightImageDrawable:Landroid/graphics/drawable/Drawable;

.field public n:I

.field public o:I

.field public p:Landroid/widget/TextView;

.field public q:Ljava/lang/String;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Landroid/widget/TextView;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
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

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->j:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->k:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->l:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->m:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->n:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->o:I

    .line 5
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->t:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->L:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->R:I

    .line 8
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    .line 9
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    .line 10
    sget v1, Lcom/transsion/widgetslib/R$color;->os_edittext_hios_bg_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->V:I

    .line 11
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, p3

    :goto_0
    if-ge v1, p2, :cond_14

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 14
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_layout_type:I

    if-ne v2, v3, :cond_0

    .line 15
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c:I

    goto/16 :goto_1

    .line 16
    :cond_0
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_show_delete:I

    if-ne v2, v3, :cond_1

    .line 17
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f:Z

    goto/16 :goto_1

    .line 18
    :cond_1
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_image:I

    if-ne v2, v3, :cond_2

    .line 19
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 20
    :cond_2
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_label:I

    if-ne v2, v3, :cond_3

    .line 21
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->q:Ljava/lang/String;

    goto/16 :goto_1

    .line 22
    :cond_3
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_text:I

    if-ne v2, v3, :cond_4

    .line 23
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->x:Ljava/lang/String;

    goto/16 :goto_1

    .line 24
    :cond_4
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_show_divide_line:I

    if-ne v2, v3, :cond_5

    .line 25
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->y:Z

    goto/16 :goto_1

    .line 26
    :cond_5
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_image:I

    if-ne v2, v3, :cond_6

    .line 27
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 28
    :cond_6
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_image_secord:I

    if-ne v2, v3, :cond_7

    .line 29
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 30
    :cond_7
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_text:I

    if-ne v2, v3, :cond_8

    .line 31
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->D:Ljava/lang/String;

    goto/16 :goto_1

    .line 32
    :cond_8
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_right_button_text:I

    if-ne v2, v3, :cond_9

    .line 33
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 34
    :cond_9
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_show_error:I

    if-ne v2, v3, :cond_a

    .line 35
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b0:Z

    goto/16 :goto_1

    .line 36
    :cond_a
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_show_help:I

    if-ne v2, v3, :cond_b

    .line 37
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c0:Z

    goto :goto_1

    .line 38
    :cond_b
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_show_error_text:I

    if-ne v2, v3, :cond_c

    .line 39
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->t:Ljava/lang/String;

    goto :goto_1

    .line 40
    :cond_c
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_show_help_text:I

    if-ne v2, v3, :cond_d

    .line 41
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->u:Ljava/lang/String;

    goto :goto_1

    .line 42
    :cond_d
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_bg_color:I

    if-ne v2, v3, :cond_e

    .line 43
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_seekbar_thumbinside_color:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->V:I

    .line 44
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->W:Z

    goto :goto_1

    .line 45
    :cond_e
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_hint:I

    if-ne v2, v3, :cond_f

    .line 46
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->v:Ljava/lang/String;

    goto :goto_1

    .line 47
    :cond_f
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_left_right_padding:I

    if-ne v2, v3, :cond_10

    .line 48
    iget v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->L:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->L:I

    goto :goto_1

    .line 49
    :cond_10
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_hios_background_multi_mode:I

    if-ne v2, v3, :cond_11

    .line 50
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->P:I

    goto :goto_1

    .line 51
    :cond_11
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_dialog_mode:I

    if-ne v2, v3, :cond_12

    .line 52
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f0:Z

    goto :goto_1

    .line 53
    :cond_12
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSMaterialEditText_os_et_hios:I

    if-ne v2, v3, :cond_13

    .line 54
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    :cond_13
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 55
    :cond_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f0:Z

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->W:Z

    if-nez p1, :cond_15

    .line 57
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$attr;->os_opacityfill_weakest:I

    sget p3, Lcom/transsion/widgetslib/R$color;->os_opacityfill_weakest_hios:I

    invoke-static {p1, p2, p3}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->V:I

    .line 58
    :cond_15
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->l()V

    return-void
.end method

.method public static synthetic a([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->o([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    return-void
.end method

.method public static synthetic b([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->p([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->n()V

    return-void
.end method

.method public static synthetic d([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->q([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->m(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->d0:Ljava/lang/String;

    return-object p0
.end method

.method public static varargs mergeBackgroundOnlyHiOS([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 2
    .param p0    # [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "OSMaterialEditText"

    const-string v0, "mergeBackgroundOnlyHiOS -> osMaterialEditTexts[0] is null !"

    invoke-static {p0, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v1, La97;

    invoke-direct {v1, p0}, La97;-><init>([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static varargs mergeOSMaterialEditTextStatic([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0
    .param p0    # [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->syncOSEditTextArrayPaddingStart([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->syncUnderlineMarginArray([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mergeBackgroundOnlyHiOS([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    return-void
.end method

.method public static synthetic o([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeBackgroundOnlyHiOS -> osMaterialEditTexts["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is null !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSMaterialEditText"

    invoke-static {v2, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    sget-object v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->TOP:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;)V

    goto :goto_1

    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    sget-object v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->BOTTOM:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->MIDDLE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic p([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncOSEditTextArrayPaddingStart -> osMaterialEditTexts["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is null !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSMaterialEditText"

    invoke-static {v2, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->syncOSEditTextPaddingStart(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic q([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncUnderlineMarginArray -> osMaterialEditTexts["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is null !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSMaterialEditText"

    invoke-static {v2, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->syncUnderlineMargin(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs syncOSEditTextArrayPaddingStart([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 2
    .param p0    # [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "OSMaterialEditText"

    const-string v0, "syncOSEditTextArrayPaddingStart -> osMaterialEditTexts[0] is null !"

    invoke-static {p0, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lc97;

    invoke-direct {v1, p0, v0}, Lc97;-><init>([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static varargs syncUnderlineMarginArray([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 2
    .param p0    # [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "OSMaterialEditText"

    const-string v0, "syncUnderlineMarginArray -> osMaterialEditTexts[0] is null !"

    invoke-static {p0, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lb97;

    invoke-direct {v1, p0, v0}, Lb97;-><init>([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->e0:Z

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->a0:Z

    invoke-virtual {p0, v2, v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateDeleteButton(ZZ)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setHelpText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->u:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setHelpText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->R:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/R$string;->os_edit_text_num_format:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->R:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i0:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    invoke-interface {v0, p1, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;->a(Landroid/text/Editable;Landroid/widget/TextView;)V

    :cond_6
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getDeleteButton()Landroid/widget/ImageView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getDialogMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f0:Z

    return p0
.end method

.method public getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public getEditTextLabel()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method public getEditTextPaddingStart()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->O:I

    return p0
.end method

.method public getErrorText()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method public getLeftImage()Landroid/widget/ImageView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->E:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLeftSecondImage()Landroid/widget/ImageView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->F:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLeftTextView()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method public getLeftlayout()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->G:Landroid/view/View;

    return-object p0
.end method

.method public getNumTextView()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightDivider()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->z:Landroid/view/View;

    return-object p0
.end method

.method public getRightImage()Landroid/widget/ImageView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getRightText()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightTextButton()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightlayout()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->H:Landroid/view/View;

    return-object p0
.end method

.method public getRootEditTextLayout()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->J:Landroid/view/View;

    return-object p0
.end method

.method public getRootLayout()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c:I

    return p0
.end method

.method public getUnderLineMarginLeft()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->M:I

    return p0
.end method

.method public getUnderLineMarginRight()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->N:I

    return p0
.end method

.method public getUnderLinePadding()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->L:I

    return p0
.end method

.method public getUnderlineView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->K:Landroid/view/View;

    return-object p0
.end method

.method public isShowDelete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f:Z

    return p0
.end method

.method public final k()V
    .locals 8

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->d:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v1, v0

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->S:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v0

    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f0:Z

    if-eqz v4, :cond_1

    new-instance v4, Lws7;

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->d:I

    sub-int/2addr v7, v0

    int-to-float v0, v7

    int-to-float v3, v3

    invoke-direct {v6, v1, v1, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_radius_xs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {v4, v5, v6, v0, v2}, Lws7;-><init>(Landroid/content/Context;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    iput-object v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g0:Lws7;

    goto :goto_0

    :cond_1
    new-instance v4, Lws7;

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->d:I

    sub-int/2addr v7, v0

    int-to-float v0, v7

    int-to-float v3, v3

    invoke-direct {v6, v1, v1, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_radius_m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {v4, v5, v6, v0, v2}, Lws7;-><init>(Landroid/content/Context;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    iput-object v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g0:Lws7;

    :cond_2
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_view_materal_edit_text_layout_hios:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/widgetslib/R$layout;->os_view_materal_edit_text_layout_base:I

    :goto_0
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dialog_input_tip_max:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->d0:Ljava/lang/String;

    sget v0, Lcom/transsion/widgetslib/R$id;->oet_edit_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_left_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->G:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_right_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->H:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_second_root_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_underline_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->K:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->J:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_error_hint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_help_hint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    invoke-static {}, Lolb;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_2
    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_limit_hint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_delete_all:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_left_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->C:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_left_edit_image_first:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->E:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_left_edit_image_second:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->F:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_image_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_divider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->z:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_right_text_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->A:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_right_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->S:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_border_default:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_border_default_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->T:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_border_focus:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_border_focus_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->U:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    invoke-static {v0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->P:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    new-instance v1, Ld97;

    invoke-direct {v1, p0}, Ld97;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Le97;

    invoke-direct {v0, p0}, Le97;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->v:Ljava/lang/String;

    invoke-static {v0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateType()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    sget v0, Lcom/transsion/widgetslib/R$id;->os_et_edit_text_label:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->q:Ljava/lang/String;

    invoke-static {v2}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b0:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c0:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->u:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setHelpText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    :cond_7
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f:Z

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setShowDelete(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f0:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_space050:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_edit_text_padding_dialog_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootLayoutPaddingOnlyHiOS(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-nez v2, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootPaddingRelative(IIII)V

    :cond_9
    return-void
.end method

.method public final synthetic m(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-static {p0}, Lolb;->T0(Landroid/widget/EditText;)V

    return-void
.end method

.method public final synthetic n()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->k()V

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->M:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->N:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->L:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->L:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setUnderlineMargin(II)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setSelfOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->a0:Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->u:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setHelpText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->u:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->e0:Z

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateDeleteButton(ZZ)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateTextPadding()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->d:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->e:I

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->k()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    :cond_0
    return-void
.end method

.method public removeColorTransparency(I)I
    .locals 0

    const p0, 0xffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public setBackgroundMultiModeOnlyHiOS(I)V
    .locals 12

    .line 2
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->P:I

    .line 4
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h0:Landroid/graphics/drawable/GradientDrawable;

    .line 5
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->V:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 6
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b0:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h0:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->V:I

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->removeColorTransparency(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    const/16 p1, 0x8

    .line 8
    new-array p1, p1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p1, v1

    aput v2, p1, v0

    const/4 v3, 0x2

    aput v2, p1, v3

    const/4 v4, 0x3

    aput v2, p1, v4

    const/4 v5, 0x4

    aput v2, p1, v5

    const/4 v6, 0x5

    aput v2, p1, v6

    const/4 v7, 0x6

    aput v2, p1, v7

    const/4 v8, 0x7

    aput v2, p1, v8

    .line 9
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_edit_corner:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 10
    iget-boolean v9, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f0:Z

    if-eqz v9, :cond_2

    .line 11
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_edit_corner_dialog_mode:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 12
    :cond_2
    iget v9, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->P:I

    sget-object v10, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->TOP:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eq v9, v11, :cond_3

    iget v9, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->P:I

    sget-object v11, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->NORMAL:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    .line 13
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_4

    .line 14
    :cond_3
    aput v2, p1, v4

    aput v2, p1, v3

    aput v2, p1, v0

    aput v2, p1, v1

    .line 15
    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->P:I

    sget-object v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->BOTTOM:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->P:I

    sget-object v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->NORMAL:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 17
    :cond_5
    aput v2, p1, v8

    aput v2, p1, v7

    aput v2, p1, v6

    aput v2, p1, v5

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h0:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 19
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h0:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->P:I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_7

    iget p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->P:I

    sget-object v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;->MIDDLE:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 22
    :cond_7
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->K:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public setBackgroundMultiModeOnlyHiOS(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$MultiModeEnum;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(I)V

    return-void
.end method

.method public setDialogMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f0:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f0:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->W:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_opacityfill_weakest:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_opacityfill_weakest_hios:I

    invoke-static {p1, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->V:I

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->P:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setBackgroundMultiModeOnlyHiOS(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->k()V

    :cond_2
    return-void
.end method

.method public setEditTextPaddingStart(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->O:I

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 4

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->t:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b0:Z

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->a0:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->r:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b0:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->a0:Z

    invoke-virtual {p0, p1, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    :goto_0
    return-object p0
.end method

.method public setErrorLine(Z)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->a0:Z

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    return-object p0
.end method

.method public setHelpText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c0:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c0:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object p0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 6
    .param p2    # Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->R:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->R:I

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->Q:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->t:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->u:Ljava/lang/String;

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    aput-object v3, p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c0:Z

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i0:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;

    return-object p0
.end method

.method public setRootLayoutPaddingOnlyHiOS(I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootLayoutPaddingOnlyHiOS(II)V

    return-void
.end method

.method public setRootLayoutPaddingOnlyHiOS(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v1, p1, p0, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setRootPaddingRelative(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setShowDelete(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h:Landroid/widget/ImageView;

    new-instance v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$a;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateTextPadding()V

    return-void
.end method

.method public setTipInputMax(I)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object p0

    return-object p0
.end method

.method public setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->d0:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c:I

    .line 2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateType()V

    return-void
.end method

.method public setType(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$TypeLayoutEnum;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setType(I)V

    return-void
.end method

.method public setUnderlineMargin(II)V
    .locals 2

    iput p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->M:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->N:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->K:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->M:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->N:I

    invoke-virtual {p1, p2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->K:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public syncOSEditTextPaddingStart(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 1
    .param p1    # Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setType(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->O:I

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setEditTextPaddingStart(I)V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateTextPadding()V

    return-void
.end method

.method public syncUnderlineMargin(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 1
    .param p1    # Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->M:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->N:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setUnderlineMargin(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->M:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->N:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setUnderlineMargin(II)V

    :goto_0
    return-void
.end method

.method public updateDeleteButton(ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->a0:Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Lf97;

    invoke-direct {p1, p0}, Lf97;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Lf97;

    invoke-direct {p1, p0}, Lf97;-><init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public updateTextPadding()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->o:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->G:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->O:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->G:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->O:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->H:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->M:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->N:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setUnderlineMargin(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_space300:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space050:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setUnderlineMargin(II)V

    :goto_1
    return-void
.end method

.method public updateType()V
    .locals 5

    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->k:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->l:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->m:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->n:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->o:I

    if-ne v0, v1, :cond_d

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->E:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->F:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->m:I

    if-eq v0, v1, :cond_d

    invoke-static {}, Lolb;->x0()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootPaddingRelative(IIII)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->E:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->E:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mLeftSecondDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->F:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->F:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->c:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->l:I

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-static {}, Lolb;->x0()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootPaddingRelative(IIII)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mRightImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_text_field_big_icon_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->y:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->w:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->x:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public updateUnderlineView(ZZ)V
    .locals 1

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g0:Lws7;

    invoke-virtual {p1, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->K:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->S:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mIsHiOSLayout:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->b0:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->I:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->K:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->U:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->K:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->T:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
