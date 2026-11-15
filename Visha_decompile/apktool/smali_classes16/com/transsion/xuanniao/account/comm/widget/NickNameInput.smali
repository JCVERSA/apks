.class public Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$b;,
        Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$c;
    }
.end annotation


# instance fields
.field public OppO00p:Landroid/widget/EditText;

.field public OppO0O0:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

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
    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_nickname_input:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    sget-object v0, Lcom/transsion/xuanniao/account/R$styleable;->InputView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO00p(Landroid/content/res/TypedArray;)V

    .line 7
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO00p()V

    return-void
.end method


# virtual methods
.method public final OppO00p()V
    .locals 2

    .line 9
    sget v0, Lcom/transsion/xuanniao/account/R$id;->xn_delete_all:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO0O0:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$a;-><init>(Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget v0, Lcom/transsion/xuanniao/account/R$id;->edit:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO00p:Landroid/widget/EditText;

    .line 12
    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$b;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$b;-><init>(Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 13
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO00p:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$c;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$c;-><init>(Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

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

.method public getEdit()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO00p:Landroid/widget/EditText;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO00p:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
