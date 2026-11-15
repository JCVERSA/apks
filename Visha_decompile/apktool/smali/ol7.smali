.class public Lol7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lol7$i;,
        Lol7$h;
    }
.end annotation


# instance fields
.field public a:Lcom/transsion/widgetslib/dialog/d;

.field public b:Lol7$i;

.field public c:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

.field public d:Landroid/app/Activity;

.field public e:Landroid/widget/Button;

.field public f:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

.field public g:Lml7;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget v0, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    iget-object v1, p0, Lol7;->c:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lol7;->f:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lol7;->g:Lml7;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lml7;->c:Z

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    iget-object v3, p0, Lol7;->f:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lol7;->e:Landroid/widget/Button;

    iget-object v3, p0, Lol7;->c:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v3}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object p0, p0, Lol7;->g:Lml7;

    if-eqz p0, :cond_4

    iget-boolean p0, p0, Lml7;->c:Z

    goto :goto_4

    :cond_4
    move p0, v2

    :goto_4
    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public b(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lol7;->g:Lml7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lml7;->a()V

    :cond_0
    new-instance v0, Lml7;

    new-instance v1, Lol7$g;

    invoke-direct {v1, p0}, Lol7$g;-><init>(Lol7;)V

    invoke-direct {v0, v1}, Lml7;-><init>(Lml7$b;)V

    iput-object v0, p0, Lol7;->g:Lml7;

    iput-wide p1, v0, Lml7;->b:J

    invoke-virtual {v0}, Lml7;->c()V

    :cond_1
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 4

    iput-object p1, p0, Lol7;->d:Landroid/app/Activity;

    iget-object v0, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v2, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/transsion/xuanniao/account/R$layout;->xn_verify_pwd_popup:I

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_modify_id_note:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lol7$a;

    invoke-direct {v3, p0}, Lol7$a;-><init>(Lol7;)V

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    new-instance v2, Lol7$b;

    invoke-direct {v2, p0}, Lol7$b;-><init>(Lol7;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    new-instance v2, Lol7$c;

    invoke-direct {v2, p0}, Lol7$c;-><init>(Lol7;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object v0, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lol7;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iput-object v0, p0, Lol7;->c:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iget-object v0, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->pwdErrorView:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iput-object v0, p0, Lol7;->f:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iget-object v0, p0, Lol7;->c:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->setPwdLogoVisible(I)V

    iget-object v0, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->forgetPwd:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lol7$d;

    invoke-direct {v2, p0}, Lol7$d;-><init>(Lol7;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lol7;->e:Landroid/widget/Button;

    new-instance v2, Lol7$e;

    invoke-direct {v2, p0}, Lol7$e;-><init>(Lol7;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lol7;->c:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    new-instance v2, Lol7$h;

    invoke-direct {v2, p0}, Lol7$h;-><init>(Lol7;)V

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AccountPrefs"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "key_verify_pwd_limit"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lol7;->b(J)V

    return-void
.end method

.method public d(ZJ)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p1, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$id;->forgetPwd:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lol7;->f:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lol7;->d:Landroid/app/Activity;

    check-cast v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_limit:I

    invoke-static {p2, p3}, Lfq7;->b(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p1, :cond_2

    sget p2, Lcom/transsion/xuanniao/account/R$id;->forgetPwd:I

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lol7;->f:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_3

    sget p2, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    const-string p3, "-1"

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lol7;->f:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lol7;->a()V

    return-void
.end method

.method public e()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lol7;->d:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v0, p0, Lol7;->c:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC591VlH9xM+TZYuWM4WZnxKYryc6xrGWco+jDFRfMNyLmET3bcEPnaCkZNcuVxjFvofiXfN4yNXFFY7iSysLzZ5GdnvAwYne8ONRxJuX2ixvMYduBhaPj2AAfEHZ6H3yo2kV6q8CX3CGzmLkz8pDPia9wmafjXSxObaPFgOEF0GwIDAQAB"

    invoke-static {v0, v1}, Lnr7;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lol7;->d:Landroid/app/Activity;

    new-instance v2, Lol7$f;

    iget-object v3, p0, Lol7;->d:Landroid/app/Activity;

    const-class v4, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;

    invoke-direct {v2, p0, v3, v4}, Lol7$f;-><init>(Lol7;Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "password"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "verifyId"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lao7$a;->a:Lao7;

    invoke-virtual {v4}, Lao7;->a()Lmk7;

    move-result-object v4

    iput-object v0, v4, Lmk7;->a:Ljava/lang/String;

    iput-object v4, v2, LOppOOp0/OppO0O0;->f:Lmk7;

    invoke-static {v1, v4, v3}, Lcom/transsion/xuanniao/account/model/data/CommReq;->generateReq(Landroid/content/Context;Lmk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "/sdk/password/verify-crypt"

    sget-object v4, Lcr7$b;->a:Lcr7;

    invoke-virtual {v4, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Lzn7;

    invoke-direct {v4}, Lzn7;-><init>()V

    invoke-static {v3}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3, v0, v2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    instance-of v0, v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v4, v1}, Lcr7;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lol7;->d:Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p0, p0, Lol7;->d:Landroid/app/Activity;

    move-object v0, p0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
