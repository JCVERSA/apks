.class public Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity$a;->d:Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->phoneL:I

    const-string v2, "accountId"

    const-string v3, "operation"

    const-string v4, "havePhoneOrEmail"

    const-string v5, "source"

    const-class v6, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    const-string v7, "security"

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity$a;->d:Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    sget p1, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->l:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->y()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p1}, Lyr7;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "BP"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {v0}, Lyr7;->f()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_bind_phone:I

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {v0}, Lyr7;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_0
    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_safe_set_pwd_tips:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v7}, Lck7;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->emailL:I

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity$a;->d:Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    sget p1, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->l:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->v()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p1}, Lyr7;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "BE"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {v0}, Lyr7;->f()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_bind_email:I

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {v0}, Lyr7;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3eb

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_2
    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_safe_set_pwd_tips:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v7}, Lck7;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->emergencyContactL:I

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity$a;->d:Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    sget p1, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->l:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->L()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p1}, Lyr7;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "BC"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {v0}, Lyr7;->f()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_add_to_account:I

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {v0}, Lyr7;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3ed

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_4
    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_safe_set_pwd_tips:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v7}, Lck7;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->pwdL:I

    if-ne v0, v1, :cond_7

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity$a;->d:Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    sget p1, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->l:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->F0()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p1}, Lyr7;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "setPwdType"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_safe_set_pwd_tips:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v7}, Lck7;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->thirdL:I

    if-ne p1, v0, :cond_9

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity$a;->d:Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    sget p1, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->l:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->c()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p1}, Lyr7;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "BT"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {v0}, Lyr7;->f()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_bind_third:I

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {v0}, Lyr7;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3ef

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_8
    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_safe_set_pwd_tips:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v7}, Lck7;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method
