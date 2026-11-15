.class public Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;
.super Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;
.source "SourceFile"


# instance fields
.field public j:Lcom/transsion/xuanniao/account/model/data/AccountRes;

.field public k:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public B0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;->j:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public D0()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_logged_in"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;->j:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->D0()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;->F0()V

    return-void
.end method

.method public E0()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_restore_factory_settings:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final F0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;->k:Lcom/transsion/widgetslib/dialog/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_clear_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_clear_note:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_clear_all:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity$a;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity$a;-><init>(Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;->k:Lcom/transsion/widgetslib/dialog/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity$b;-><init>(Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;->k:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "check pwd success"

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/pwd/view/SettingVerifyPwdActivity;->F0()V

    return-void
.end method
