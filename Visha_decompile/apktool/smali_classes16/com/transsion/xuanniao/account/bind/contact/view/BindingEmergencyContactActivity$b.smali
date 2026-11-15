.class public Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$b;->b:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$b;->b:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    sget p1, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->o:I

    sget p1, Lcom/transsion/xuanniao/account/R$id;->bindBtn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[0-9]{6,15}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

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
