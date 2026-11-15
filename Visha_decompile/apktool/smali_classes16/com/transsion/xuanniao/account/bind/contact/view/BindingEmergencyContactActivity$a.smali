.class public Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->bindBtn:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->d()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^[0-9]{6,15}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_phone_not_exist:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_email_not_exist:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    invoke-virtual {p0}, Lvn7;->c()V

    :cond_2
    return-void
.end method
