.class public Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity$a;->d:Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;

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

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity$a;->d:Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity$a;->d:Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Lxj;->A(Ljava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity$a;->d:Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;

    const-class v1, Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity$a;->d:Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;->f:Ljava/lang/String;

    const-string v1, "accountId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity$a;->d:Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;

    iget v0, p0, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;->e:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
