.class public Lyl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ler7$a;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lyl7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lyl7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->i1()V

    iget-object p1, p0, Lyl7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/model/data/PrivacyAgreementMap;->getPrivacyUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyl7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Policy"

    invoke-virtual {p0, p1}, Ldo7;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyl7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_policy:I

    invoke-static {p1}, Ljr7;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
