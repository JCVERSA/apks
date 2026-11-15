.class public Lcom/transsion/xuanniao/account/comm/widget/AccountInput;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/comm/widget/AccountInput$b;,
        Lcom/transsion/xuanniao/account/comm/widget/AccountInput$d;,
        Lcom/transsion/xuanniao/account/comm/widget/AccountInput$a;,
        Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;,
        Lcom/transsion/xuanniao/account/comm/widget/AccountInput$e;
    }
.end annotation


# instance fields
.field public OppO:Z

.field public OppO00p:Landroid/widget/EditText;

.field public OppO0O0:Landroid/widget/RelativeLayout;

.field public OppO0OO:Landroid/widget/TextView;

.field public OppO0Op:Lcom/transsion/xuanniao/account/comm/widget/AccountInput$d;

.field public OppO0p:Landroid/widget/ImageView;

.field public OppO0p0:Z

.field public OppO0pO:Landroid/widget/PopupWindow;

.field public OppO0pp:Lln7;

.field public OppOO0:Lcom/transsion/xuanniao/account/comm/widget/AccountInput$b;

.field public OppOO0O:Landroid/text/BidiFormatter;

.field public OppOO0p:Z

.field public OppOOO0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppOO0p:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppOO0p:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 7
    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_account_input:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    sget-object v0, Lcom/transsion/xuanniao/account/R$styleable;->InputView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p(Landroid/content/res/TypedArray;)V

    .line 9
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0O0()V

    .line 10
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppOO0O:Landroid/text/BidiFormatter;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/xuanniao/account/comm/widget/AccountInput;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->b(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method


# virtual methods
.method public OppO00p()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final OppO00p(I)V
    .locals 4

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0O0(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0p:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0O0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    new-instance p1, Landroid/text/InputFilter$LengthFilter;

    const/16 v1, 0xf

    invoke-direct {p1, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v0, v0, [Landroid/text/InputFilter;

    aput-object p1, v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0p:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0O0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0p:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/xuanniao/account/R$drawable;->xn_icon_email:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-gt p1, v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO()V

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v3, v0, [Landroid/text/InputFilter;

    aput-object v1, v3, v2

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setLogoColor(Z)V

    goto :goto_0

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0p:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0O0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0p:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/xuanniao/account/R$drawable;->xn_icon_account:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 28
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 29
    :cond_4
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v3, v0, [Landroid/text/InputFilter;

    aput-object v1, v3, v2

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setLogoColor(Z)V

    :goto_0
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

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    sget v1, Lcom/transsion/xuanniao/account/R$id;->edit:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final OppO00p(Ljava/lang/String;)Z
    .locals 2

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 32
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0p0:Z

    if-eqz p0, :cond_1

    .line 33
    const-string p0, "@"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 34
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    const-string p0, "[0-9]+"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public final OppO0O0()V
    .locals 2

    .line 1
    sget v0, Lcom/transsion/xuanniao/account/R$id;->edit:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    .line 2
    sget v0, Lcom/transsion/xuanniao/account/R$id;->accountLeftL:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0O0:Landroid/widget/RelativeLayout;

    .line 3
    sget v0, Lcom/transsion/xuanniao/account/R$id;->cc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/transsion/xuanniao/account/R$id;->logo:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0p:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$a;-><init>(Lcom/transsion/xuanniao/account/comm/widget/AccountInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$c;-><init>(Lcom/transsion/xuanniao/account/comm/widget/AccountInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 7
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$e;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$e;-><init>(Lcom/transsion/xuanniao/account/comm/widget/AccountInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public OppO0O0(Ljava/lang/String;)Z
    .locals 1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    const-string p0, "[0-9]+"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public OppO0OO()V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/xuanniao/account/R$layout;->xn_email_association:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/xuanniao/account/R$style;->OsListPopupWindowStyle:I

    invoke-direct {v2, v4, v3, v1, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    invoke-static {}, Lc39;->f()I

    move-result v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lc39;->a(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->listView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lln7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lln7;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pp:Lln7;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lc5;

    invoke-direct {v1, p0}, Lc5;-><init>(Lcom/transsion/xuanniao/account/comm/widget/AccountInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroid/widget/ListView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    :cond_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pp:Lln7;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lln7;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    sget v0, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$OppO00p;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput$OppO00p;-><init>(Lcom/transsion/xuanniao/account/comm/widget/AccountInput;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final synthetic b(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO:Z

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pp:Lln7;

    invoke-virtual {p1, p3}, Lln7;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getCc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEdit()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0O0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public setCanShowPopView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppOO0p:Z

    return-void
.end method

.method public setCc(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppOO0O:Landroid/text/BidiFormatter;

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
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO:Landroid/widget/TextView;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lc39;->a(F)I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lc39;->a(F)I

    move-result v0

    invoke-virtual {p0, p1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO:Landroid/widget/TextView;

    const/high16 p1, 0x40c00000    # 6.0f

    invoke-static {p1}, Lc39;->a(F)I

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lc39;->a(F)I

    move-result v0

    invoke-virtual {p0, p1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO:Landroid/widget/TextView;

    invoke-static {v1}, Lc39;->a(F)I

    move-result p1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lc39;->a(F)I

    move-result v0

    invoke-virtual {p0, p1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO:Landroid/widget/TextView;

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

.method public setEditFocus(Lcom/transsion/xuanniao/account/comm/widget/AccountInput$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppOO0:Lcom/transsion/xuanniao/account/comm/widget/AccountInput$b;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInputListener(Lcom/transsion/xuanniao/account/comm/widget/AccountInput$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0Op:Lcom/transsion/xuanniao/account/comm/widget/AccountInput$d;

    return-void
.end method

.method public setLogoColor(Z)V
    .locals 4

    sget v0, Lcom/transsion/xuanniao/account/R$id;->logo:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    sget v2, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color_s:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color:I

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/xuanniao/account/R$style;->font_black_14:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/transsion/xuanniao/account/R$style;->font_black_14_t40:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setOnlyPhoneNum()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_phone_num:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    const-string v0, "0123456789"

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setSupportUserName(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0p0:Z

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v1, v1, [Landroid/text/InputFilter;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0O0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v1, v1, [Landroid/text/InputFilter;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v1, v1, [Landroid/text/InputFilter;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
