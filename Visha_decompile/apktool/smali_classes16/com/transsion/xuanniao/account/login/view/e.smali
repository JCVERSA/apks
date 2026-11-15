.class public Lcom/transsion/xuanniao/account/login/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ler7$a;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/e;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, ""

    :try_start_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/e;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ext_privacy_policy_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/e;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v3, v2, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget v3, v3, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->h:I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/e;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget v1, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->i:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v2, v3, v1}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    const-string p0, "ext_privacy_policy_version"

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ext_pv"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lwj;

    const-string v0, "privacy_policy_cl"

    const/16 v1, 0x1e1e

    invoke-direct {p0, v0, v1}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
