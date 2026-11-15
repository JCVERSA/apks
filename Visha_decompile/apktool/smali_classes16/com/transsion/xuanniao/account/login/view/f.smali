.class public Lcom/transsion/xuanniao/account/login/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ler7$a;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/f;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/f;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v0, p1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget v1, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->j:I

    iget v0, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->k:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/f;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "ext_developer_policy_version"

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ext_dpv"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1e1e

    const/4 v0, 0x0

    const-string v1, "privacy_policy_cl"

    invoke-static {v1, p0, p1, v0}, Lxm7;->a(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
