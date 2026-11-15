.class public Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$b;,
        Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;
    }
.end annotation


# instance fields
.field public OppO00p:Landroidx/appcompat/widget/AppCompatImageView;

.field public OppO0O0:Z

.field public OppO0OO:Landroid/widget/EditText;

.field public OppO0Op:Landroidx/appcompat/widget/AppCompatImageView;

.field public OppO0p:Z

.field public OppO0p0:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0p:Z

    .line 4
    iput-boolean p3, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0O0:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 6
    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 7
    sget v0, Lcom/transsion/xuanniao/account/R$layout;->xn_password_input_layout:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    sget-object p3, Lcom/transsion/xuanniao/account/R$styleable;->InputView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO00p(Landroid/content/res/TypedArray;)V

    .line 9
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO00p()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final OppO00p()V
    .locals 4

    .line 9
    sget v0, Lcom/transsion/xuanniao/account/R$id;->eyeView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO00p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    sget v0, Lcom/transsion/xuanniao/account/R$id;->password_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    .line 11
    sget v0, Lcom/transsion/xuanniao/account/R$id;->pwdLogo:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0Op:Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO00p:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lux7;

    invoke-direct {v1, p0}, Lux7;-><init>(Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;-><init>(Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 15
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$a;-><init>(Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;)V

    new-instance p0, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final OppO00p(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/xuanniao/account/R$styleable;->InputView_hint_resource:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Lcom/transsion/xuanniao/account/R$styleable;->InputView_show_line:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 3
    sget v2, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 4
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    sget v1, Lcom/transsion/xuanniao/account/R$id;->password_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0O0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0O0:Z

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO00p:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/transsion/xuanniao/account/R$drawable;->xn_password_visible:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    const v0, 0x80090

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0O0:Z

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO00p:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/transsion/xuanniao/account/R$drawable;->xn_password_invisible:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    const v0, 0x80081

    :goto_0
    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO00p:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color_s:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color:I

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public getEdit()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    return-object p0
.end method

.method public getFocusChange()Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0p0:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$b;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setFocusChange(Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0p0:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$b;

    return-void
.end method

.method public setNeedCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0p:Z

    return-void
.end method

.method public setOpenEye(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0O0:Z

    return-void
.end method

.method public setPwdLogoVisible(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0Op:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
