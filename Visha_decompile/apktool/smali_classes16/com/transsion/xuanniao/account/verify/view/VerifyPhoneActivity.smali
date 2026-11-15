.class public Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lwm7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;,
        Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$b;
    }
.end annotation


# instance fields
.field public e:I

.field public f:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

.field public g:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

.field public h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

.field public i:Lup7;

.field public j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->e:I

    return-void
.end method

.method public static B0(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_phone_not_exist:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->accountInput:I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static C0(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;ILjava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static D0(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iget-boolean v1, v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setGetCodeEnable(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmq7;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x4

    if-lt p0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setGetCodeEnable(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public a()V
    .locals 3

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_sent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setGetCodeEnable(Z)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "AccountPrefs"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "key_verify_phone"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_operation:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_limit_month:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public c(ZJ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_count:I

    invoke-static {p2, p3}, Lfq7;->b(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_code_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->smsCodeInput:I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_operation:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_limit_day:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    sget v0, Lcom/transsion/xuanniao/account/R$drawable;->xn_reduction:I

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setImageResource(I)V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_captcha_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->captchaInput:I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public i(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public j()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    invoke-virtual {v2}, Lup7;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verification_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    iget-object v1, v1, Lup7;->d:Ljava/lang/String;

    const-string v2, "ticket"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    invoke-virtual {p0}, Lup7;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->e:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    const-string p2, "key_cc"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lup7;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    invoke-virtual {p2}, Lup7;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    const-string p1, "key_name_en"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lup7;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_verify_phone:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->t1()V

    new-instance p1, Lup7;

    invoke-direct {p1}, Lup7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->errorView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    new-instance v0, Lon7;

    invoke-direct {v0}, Lon7;-><init>()V

    invoke-virtual {p1}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v1

    new-instance v2, Lip7;

    invoke-virtual {p1}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/CountryData;

    invoke-direct {v2, p1, v3, v4}, Lip7;-><init>(Lup7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lon7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_forget_pwd_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance p1, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;

    invoke-direct {p1, p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;-><init>(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->notExistSuffix:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->next:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->phoneInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->captchaCodeInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->smsCodeInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    new-instance v0, Lcq7;

    invoke-direct {v0, p0}, Lcq7;-><init>(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setInputListener(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$d;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    new-instance v0, Liq7;

    invoke-direct {v0, p0}, Liq7;-><init>(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setCaptchaListener(Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$c;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    new-instance v0, Loq7;

    invoke-direct {v0, p0}, Loq7;-><init>(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setSmsCodeListener(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;)V

    new-instance p1, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$b;

    invoke-direct {p1, p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$b;-><init>(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    invoke-virtual {v1}, Lup7;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AccountPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "key_captcha_limit_reset_pwd"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    invoke-virtual {p1, v5, v6}, Lup7;->b(J)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_verify_phone"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p(J)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    invoke-virtual {p0}, Lup7;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lup7;->g:Lml7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lml7;->a()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    :cond_1
    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    const-string v1, "imageCaptcha"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    const-string v0, "verification"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->placeholder:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->z0()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imageCaptcha"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    const-string v0, "verification"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSmsCodeReceived(Lcom/transsion/xuanniao/account/model/data/SmsCodeEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "onSmsCodeReceived VerifyPhoneActivity"

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/SmsCodeEvent;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setText(Ljava/lang/String;)V

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    const-string p1, "VerifyPhoneActivity"

    invoke-virtual {p0, p1}, Lxj;->q(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onStart()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public q(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/xuanniao/account/R$id;->notExistPrefix:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->notExistSuffix:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/xuanniao/account/R$id;->notExistPrefix:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->notExistSuffix:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public w0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public z()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_not_exist:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->accountInput:I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
