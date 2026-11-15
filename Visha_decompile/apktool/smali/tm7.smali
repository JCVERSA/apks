.class public Ltm7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Ltm7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object p0, p0, Ltm7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    sget v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->K:I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->H0()V

    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Ltm7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-static {v0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E0(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltm7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Ltm7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "AccountPrefs"

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sms_req_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_3

    iget-object v2, p0, Ltm7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {v2}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->K0()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Ltm7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v2, v2, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-object v2, v2, Ldo7;->c:Ljava/lang/String;

    const-string v4, "7"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq v1, v3, :cond_2

    :cond_1
    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_3

    :cond_2
    iget-object p0, p0, Ltm7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_sms_req_reminder_msg:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_sms_req_reminder_continue:I

    new-instance v2, Lgq7;

    invoke-direct {v2, p0}, Lgq7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_sms_req_reminder_cancel:I

    new-instance v2, Laq7;

    invoke-direct {v2, p0}, Laq7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Ltm7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Leq9;->a(Landroid/app/Activity;)Lfq9;

    move-result-object v1

    invoke-virtual {v1}, Lfq9;->v()Lxda;

    move-result-object v1

    new-instance v2, Lkr7;

    invoke-direct {v2, v0}, Lkr7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v1, v2}, Lxda;->f(Llf7;)Lxda;

    new-instance v2, Lor7;

    invoke-direct {v2, v0}, Lor7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v1, v2}, Lxda;->d(Lre7;)Lxda;

    :cond_4
    iget-object p0, p0, Ltm7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p0}, Ldo7;->h()V

    :cond_5
    :goto_1
    return-void
.end method
