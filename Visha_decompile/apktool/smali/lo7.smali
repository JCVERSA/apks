.class public Llo7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/AccountInput$d;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Llo7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Llo7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object v1, p0, Llo7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v1}, Ldo7;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxj;->z0(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llo7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    const-class v2, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Llo7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v1}, Ldo7;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "countryCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Llo7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-object v1, v1, Ldo7;->d:Ljava/lang/String;

    const-string v2, "countryName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Llo7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget v2, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->e:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p0, p0, Llo7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    invoke-virtual {p0}, Lxj;->A0()V

    return-void
.end method
