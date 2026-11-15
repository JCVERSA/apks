.class public Lcom/transsion/xuanniao/account/comm/widget/EmailInput;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/comm/widget/EmailInput$c;,
        Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;,
        Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;,
        Lcom/transsion/xuanniao/account/comm/widget/EmailInput$e;
    }
.end annotation


# instance fields
.field public OppO00p:Landroid/widget/EditText;

.field public OppO0O0:Landroid/widget/PopupWindow;

.field public OppO0OO:Lln7;

.field public OppO0Op:Z

.field public OppO0p:Lcom/transsion/xuanniao/account/comm/widget/EmailInput$c;

.field public OppO0p0:Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;

.field public OppO0pO:I


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
    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_email_input:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    sget-object v0, Lcom/transsion/xuanniao/account/R$styleable;->InputView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p(Landroid/content/res/TypedArray;)V

    .line 7
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->b(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method


# virtual methods
.method public OppO00p()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
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

.method public final OppO0O0()V
    .locals 2

    sget v0, Lcom/transsion/xuanniao/account/R$id;->edit:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;-><init>(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$e;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$e;-><init>(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public OppO0OO()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public OppO0Op()V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0Op:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0Op:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/transsion/xuanniao/account/R$layout;->xn_email_association:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/transsion/xuanniao/account/R$style;->OsListPopupWindowStyle:I

    invoke-direct {v3, v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    invoke-static {}, Lc39;->f()I

    move-result v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lc39;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->listView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lln7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lln7;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0OO:Lln7;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lw83;

    invoke-direct {v1, p0}, Lw83;-><init>(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$a;

    invoke-direct {v3, p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$a;-><init>(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroid/widget/ListView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    :cond_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0OO:Lln7;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lln7;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0p0:Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;->q(Z)V

    :cond_4
    sget v0, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$OppO0O0;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$OppO0O0;-><init>(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public final synthetic b(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0Op:Z

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0OO:Lln7;

    invoke-virtual {p1, p3}, Lln7;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getAssociationListener()Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0p0:Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;

    return-object p0
.end method

.method public getEdit()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p:Landroid/widget/EditText;

    return-object p0
.end method

.method public getEmailAssociation()Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAssociationListener(Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0p0:Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;

    return-void
.end method

.method public setEditFocusListener(Lcom/transsion/xuanniao/account/comm/widget/EmailInput$c;)V
    .locals 0

    return-void
.end method

.method public setEmailAssociation(Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0O0:Landroid/widget/PopupWindow;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p()V

    return-void
.end method
