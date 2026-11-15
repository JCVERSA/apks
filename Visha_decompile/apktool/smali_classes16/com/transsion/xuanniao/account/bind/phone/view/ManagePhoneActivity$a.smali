.class public Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity$a;->d:Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->bindBtn:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity$a;->d:Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity$a;->d:Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Lxj;->A(Ljava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity$a;->d:Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;

    const-class v1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity$a;->d:Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->f:Ljava/lang/String;

    const-string v1, "accountId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity$a;->d:Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;

    iget v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->e:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
