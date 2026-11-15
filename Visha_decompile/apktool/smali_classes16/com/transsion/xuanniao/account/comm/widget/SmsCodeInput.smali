.class public Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$c;,
        Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;,
        Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$d;,
        Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$b;
    }
.end annotation


# instance fields
.field public OppO:Landroid/graphics/Paint;

.field public OppO00p:J

.field public OppO0O0:J

.field public OppO0OO:Landroid/widget/EditText;

.field public OppO0Op:Landroid/widget/TextView;

.field public OppO0p:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;

.field public OppO0p0:Landroid/os/CountDownTimer;

.field public OppO0pO:Z

.field public OppO0pp:Z

.field public OppOO0:I

.field public OppOO0O:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/32 v0, 0x186a0

    .line 2
    iput-wide v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p:J

    const-wide/16 v0, 0x3e8

    .line 3
    iput-wide v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0O0:J

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pp:Z

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/32 v0, 0x186a0

    .line 8
    iput-wide v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p:J

    const-wide/16 v0, 0x3e8

    .line 9
    iput-wide v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0O0:J

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pp:Z

    .line 12
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 14
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 15
    sget v2, Lcom/transsion/xuanniao/account/R$layout;->xn_view_sms_input:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    sget-object v0, Lcom/transsion/xuanniao/account/R$styleable;->InputView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p(Landroid/content/res/TypedArray;)V

    .line 17
    invoke-static {p1}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->getCount(Landroid/content/Context;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p:J

    const/high16 p1, 0x42f00000    # 120.0f

    .line 18
    invoke-static {p1}, Lc39;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppOO0:I

    .line 19
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO:Landroid/graphics/Paint;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lc39;->h(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0O0()V

    return-void
.end method

.method public static synthetic OppO00p(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    return p1
.end method


# virtual methods
.method public OppO00p()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0p0:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0p0:Landroid/os/CountDownTimer;

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->getCount(Landroid/content/Context;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p:J

    return-void
.end method

.method public OppO00p(J)V
    .locals 4

    .line 10
    iget-wide v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p:J

    add-long/2addr v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 11
    iget-wide v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p:J

    add-long/2addr p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setMillisInFuture(J)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setGetCodeEnable(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO()V

    :cond_0
    return-void
.end method

.method public final OppO00p(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 2
    sget v0, Lcom/transsion/xuanniao/account/R$styleable;->InputView_hint_resource:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget v1, Lcom/transsion/xuanniao/account/R$styleable;->InputView_show_line:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 4
    sget v2, Lcom/transsion/xuanniao/account/R$id;->smsLine:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 5
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    sget v1, Lcom/transsion/xuanniao/account/R$id;->edit:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final OppO0O0()V
    .locals 2

    sget v0, Lcom/transsion/xuanniao/account/R$id;->smsEdit:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$d;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$d;-><init>(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->getCode:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0Op:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$b;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$b;-><init>(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public OppO0OO()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pp:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0p0:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$a;

    iget-wide v3, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p:J

    iget-wide v5, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0O0:J

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$a;-><init>(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;JJ)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0p0:Landroid/os/CountDownTimer;

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0p0:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public getCountDownInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0O0:J

    return-wide v0
.end method

.method public getEdit()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO:Landroid/widget/EditText;

    return-object p0
.end method

.method public getEditFocus()Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppOO0O:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$c;

    return-object p0
.end method

.method public getMillisInFuture()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAppearance(Landroid/widget/TextView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setCountDownInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0O0:J

    return-void
.end method

.method public setEditFocus(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppOO0O:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$c;

    return-void
.end method

.method public setGetCodeEnable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0Op:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pp:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_get_code:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_resend:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppOO0:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0Op:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/xuanniao/account/R$style;->font_get_code_small:I

    goto :goto_2

    :cond_2
    sget v1, Lcom/transsion/xuanniao/account/R$style;->font_get_code_medium:I

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setAppearance(Landroid/widget/TextView;I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0Op:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    iget-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0Op:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0Op:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    sget v0, Lcom/transsion/xuanniao/account/R$style;->font_get_code_disable_small:I

    goto :goto_3

    :cond_4
    sget v0, Lcom/transsion/xuanniao/account/R$style;->font_get_code_disable_medium:I

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setAppearance(Landroid/widget/TextView;I)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0Op:Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$style;->font_get_code_disable_medium:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setAppearance(Landroid/widget/TextView;I)V

    :goto_4
    return-void
.end method

.method public setMillisInFuture(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p:J

    return-void
.end method

.method public setSmsCodeListener(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0p:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
