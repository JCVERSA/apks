.class public Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;->b:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;->b:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->captchaInput:I

    iget-object v1, p1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;->b:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->phoneInput:I

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->k()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;->b:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->smsCodeInput:I

    iget-object v3, p1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v3}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;->b:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    iget-object p1, p1, Lpl7;->h:Lml7;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lml7;->c:Z

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v0

    :goto_2
    iget-object v2, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;->b:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    iget-object v2, v2, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_3

    :cond_3
    const/16 p1, 0x8

    :goto_3
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;->b:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->B0(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$b;->b:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->bindBtn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v2}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmq7;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x4

    if-lt p0, v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
