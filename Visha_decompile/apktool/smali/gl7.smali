.class public Lgl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$d;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lgl7;->a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgl7;->a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    const-class v2, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lgl7;->a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {v1}, Lpl7;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "countryCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lgl7;->a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    iget-object v1, v1, Lpl7;->e:Ljava/lang/String;

    const-string v2, "countryName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lgl7;->a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    iget v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->e:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
