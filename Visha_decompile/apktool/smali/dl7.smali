.class public Ldl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/center/view/p$b;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;)V
    .locals 0

    iput-object p1, p0, Ldl7;->a:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldl7;->a:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {v0, p1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "+"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "-"

    const-string v0, " "

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object v0, p0, Ldl7;->a:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvn7;->b:Ljava/lang/String;

    iget-object v0, p0, Ldl7;->a:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    iget-object v1, v0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    invoke-virtual {v0}, Lvn7;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string p1, "[[\\s-:punct:]]"

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ldl7;->a:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p2, p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setText(Ljava/lang/String;)V

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Ldl7;->a:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p0, p3}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->setText(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
