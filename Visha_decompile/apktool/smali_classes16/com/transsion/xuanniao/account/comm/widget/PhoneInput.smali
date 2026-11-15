.class public Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$b;,
        Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$d;,
        Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$e;,
        Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$a;,
        Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;
    }
.end annotation


# instance fields
.field public OppO00p:Landroid/widget/EditText;

.field public OppO0O0:Landroid/widget/TextView;

.field public OppO0OO:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$d;

.field public OppO0Op:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$b;

.field public OppO0p0:Landroid/text/BidiFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 5
    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_phone_input:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    sget-object v0, Lcom/transsion/xuanniao/account/R$styleable;->InputView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p(Landroid/content/res/TypedArray;)V

    .line 7
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p()V

    return-void
.end method


# virtual methods
.method public final OppO00p()V
    .locals 2

    .line 11
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0p0:Landroid/text/BidiFormatter;

    .line 12
    sget v0, Lcom/transsion/xuanniao/account/R$id;->edit:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    .line 13
    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$e;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$e;-><init>(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    sget v0, Lcom/transsion/xuanniao/account/R$id;->cc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0O0:Landroid/widget/TextView;

    .line 15
    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$a;-><init>(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;-><init>(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final OppO00p(Landroid/content/res/TypedArray;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    sget v1, Lcom/transsion/xuanniao/account/R$styleable;->InputView_hint_resource:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    sget v2, Lcom/transsion/xuanniao/account/R$styleable;->InputView_show_line:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 3
    sget v4, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 4
    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    sget v2, Lcom/transsion/xuanniao/account/R$id;->edit:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    sget v1, Lcom/transsion/xuanniao/account/R$styleable;->InputView_max_length:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    if-ltz v1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v1, v3, [Landroid/text/InputFilter;

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public getCc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0O0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEdit()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCc(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0O0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0p0:Landroid/text/BidiFormatter;

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, p1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0O0:Landroid/widget/TextView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Lc39;->a(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Lc39;->a(F)I

    move-result v0

    invoke-virtual {p0, p1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0O0:Landroid/widget/TextView;

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {p1}, Lc39;->a(F)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lc39;->a(F)I

    move-result v0

    invoke-virtual {p0, p1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0O0:Landroid/widget/TextView;

    invoke-static {v1}, Lc39;->a(F)I

    move-result p1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lc39;->a(F)I

    move-result v0

    invoke-virtual {p0, p1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0O0:Landroid/widget/TextView;

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lc39;->a(F)I

    move-result p1

    invoke-static {v1}, Lc39;->a(F)I

    move-result v0

    invoke-virtual {p0, p1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setEditFocus(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0Op:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$b;

    return-void
.end method

.method public setInputListener(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0OO:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$d;

    return-void
.end method

.method public setPhoneAndCC(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setText(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
