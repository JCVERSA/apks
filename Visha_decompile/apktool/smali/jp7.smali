.class public Ljp7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;)V
    .locals 0

    iput-object p1, p0, Ljp7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Ljp7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-static {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->D0(Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Ljp7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_logged_in"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao7$a;->a:Lao7;

    iget-object v1, p0, Ljp7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljp7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Ljp7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-static {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->B0(Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;)V

    return-void

    :cond_0
    iget-object v0, p0, Ljp7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->q1()V

    iget-object p0, p0, Ljp7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->h:Lfo7;

    invoke-virtual {p0}, Lfo7;->d()V

    return-void
.end method
