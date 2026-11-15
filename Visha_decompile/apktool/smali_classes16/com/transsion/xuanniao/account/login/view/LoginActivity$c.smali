.class public Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/login/view/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->switchLoginMode:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, p1, Ldo7;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Ldo7;->b:Z

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->G0(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->loginOrRegister:I

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, v0, Ldo7;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0O0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Phone"

    goto :goto_0

    :cond_0
    const-string v0, "Mail"

    :goto_0
    invoke-virtual {p1, v0}, Lxj;->j0(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E0(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p0}, Ldo7;->t()V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->googleLogin:I

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->d0()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Ldo7;->s:J

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E0(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D0(Lcom/transsion/xuanniao/account/login/view/LoginActivity;I)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->facebookLogin:I

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->c0()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Ldo7;->s:J

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E0(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D0(Lcom/transsion/xuanniao/account/login/view/LoginActivity;I)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->otherLogin:I

    if-ne v0, v1, :cond_7

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget v0, p1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->x:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->e0()V

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->i0()V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Ldo7;->s:J

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E0(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->x:I

    invoke-static {p0, p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D0(Lcom/transsion/xuanniao/account/login/view/LoginActivity;I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->bootBack:I

    const-string v2, "login"

    if-ne v0, v1, :cond_8

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string v0, "back"

    invoke-virtual {p1, v2, v0}, Lxj;->X0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->bootSkip:I

    if-ne v0, v1, :cond_9

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string v0, "skip"

    invoke-virtual {p1, v2, v0}, Lxj;->X0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/transsion/widgetslib/dialog/d$a;

    sget v0, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {p1, p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_login_note:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_boot_success_tips:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_got_it:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltq7;

    invoke-direct {v1, p0}, Ltq7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->forgotPwd:I

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->Q()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    const-class v1, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->p()Z

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;->d:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->g:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_a
    :goto_2
    return-void
.end method
