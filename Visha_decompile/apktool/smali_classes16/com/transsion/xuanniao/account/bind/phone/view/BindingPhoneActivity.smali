.class public Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lgn7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$a;,
        Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public e:I

.field public f:Lpl7;

.field public g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

.field public h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

.field public i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

.field public j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->e:I

    return-void
.end method

.method public static B0(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iget-boolean v1, v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    iget-object v1, v1, Lpl7;->h:Lml7;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lml7;->c:Z

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmq7;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x4

    if-lt p0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setGetCodeEnable(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setGetCodeEnable(Z)V

    :goto_2
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

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setGetCodeEnable(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "AccountPrefs"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "key_binding_phone_count"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_limit_month:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_operation_note:I

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

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_count:I

    invoke-static {p2, p3}, Lfq7;->b(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_code_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->smsCodeInput:I

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_limit_day:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_operation_note:I

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

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    sget v0, Lcom/transsion/xuanniao/account/R$drawable;->xn_reduction:I

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setImageResource(I)V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_captcha_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->captchaInput:I

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public i(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {v1}, Lpl7;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {p0}, Lpl7;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->e:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    const-string p2, "key_cc"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lpl7;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {p2}, Lpl7;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    const-string p1, "key_name_en"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpl7;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "phone"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lxj;->r(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_binding_phone:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Lpl7;

    invoke-direct {p1}, Lpl7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "accountId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    iput-object p1, v0, Lpl7;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lpl7;->c()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    new-instance v0, Lon7;

    invoke-direct {v0}, Lon7;-><init>()V

    invoke-virtual {p1}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v1

    new-instance v2, Lhl7;

    invoke-virtual {p1}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/CountryData;

    invoke-direct {v2, p1, v3, v4}, Lhl7;-><init>(Lpl7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lon7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_bind_phone:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->tips:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_binding_for:I

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_phone_middle:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    iget-object v2, v2, Lpl7;->f:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->phoneInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->captchaCodeInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->smsCodeInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->errorView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->bindBtn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$a;-><init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;

    invoke-direct {p1, p0}, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;-><init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {v1}, Lpl7;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    new-instance v0, Lgl7;

    invoke-direct {v0, p0}, Lgl7;-><init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setInputListener(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$d;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    new-instance v0, Llm7;

    invoke-direct {v0, p0}, Llm7;-><init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setCaptchaListener(Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$c;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    new-instance v0, Ldn7;

    invoke-direct {v0, p0}, Ldn7;-><init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setSmsCodeListener(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AccountPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "key_captcha_limit_bind"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {p1, v5, v6}, Lpl7;->b(J)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_binding_phone_count"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p(J)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    iget-object v0, v0, Lpl7;->h:Lml7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lml7;->a()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

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

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setText(Ljava/lang/String;)V

    :cond_0
    const-string v0, "smsCode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setText(Ljava/lang/String;)V

    :cond_1
    const-string v0, "countryCode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lpl7;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {v1}, Lpl7;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    :cond_2
    const-string v0, "captchaCode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setText(Ljava/lang/String;)V

    :cond_3
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

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smsCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {v0}, Lpl7;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countryCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    const-string v0, "captchaCode"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSmsCodeReceived(Lcom/transsion/xuanniao/account/model/data/SmsCodeEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "onSmsCodeReceived BindingPhoneActivity"

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/SmsCodeEvent;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setText(Ljava/lang/String;)V

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    const-string p1, "BindingPhoneActivity"

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

.method public onSuccess()V
    .locals 4

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1, v1}, Lxj;->r(Ljava/lang/String;II)V

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public r()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_cannot_bind:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_cannot_bind_note:I

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_phone_middle:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_got_it:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getEdit()Landroid/widget/EditText;

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
