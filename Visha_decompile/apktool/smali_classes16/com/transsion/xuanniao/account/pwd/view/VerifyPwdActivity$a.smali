.class public Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->verifyCode:I

    const-string v2, "CD"

    const-string v3, "source"

    if-ne v0, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    const-class v1, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "operation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    iget-object v0, v0, Leo7;->d:Ljava/lang/String;

    const-string v1, "accountId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    iget v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->e:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->forgetPwd:I

    if-ne v0, v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    const-class v1, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->next:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    sget v0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->i:I

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_logout_account:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    iget-object p1, p1, Leo7;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->r0()V

    :cond_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->O1()V

    :cond_3
    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    invoke-virtual {p0}, Leo7;->d()V

    :cond_4
    :goto_0
    return-void
.end method
