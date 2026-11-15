.class public Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->savePwdBtn:I

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    sget v0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->n:I

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->D0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->B0(Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;Z)Z

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_not_same:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    iget v0, v0, Lnm7;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->E()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    invoke-virtual {p0}, Lnm7;->e()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->w1()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    invoke-virtual {p0}, Lnm7;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->forgetPwd:I

    if-ne p1, v0, :cond_3

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    const-class v1, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method
