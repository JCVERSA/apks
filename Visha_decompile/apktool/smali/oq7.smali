.class public Loq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Loq7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Loq7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-static {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->D0(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Loq7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

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

    iget-object v1, p0, Loq7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Loq7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    iget-object v2, v2, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    invoke-virtual {v2}, Lup7;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Loq7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-virtual {v2}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Loq7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-static {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->B0(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V

    return-void

    :cond_0
    iget-object v0, p0, Loq7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->u1()V

    iget-object v0, p0, Loq7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Leq9;->a(Landroid/app/Activity;)Lfq9;

    move-result-object v1

    invoke-virtual {v1}, Lfq9;->v()Lxda;

    move-result-object v1

    new-instance v2, Luq7;

    invoke-direct {v2, v0}, Luq7;-><init>(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V

    invoke-virtual {v1, v2}, Lxda;->f(Llf7;)Lxda;

    new-instance v2, Lar7;

    invoke-direct {v2, v0}, Lar7;-><init>(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V

    invoke-virtual {v1, v2}, Lxda;->d(Lre7;)Lxda;

    iget-object p0, p0, Loq7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    invoke-virtual {p0}, Lup7;->d()V

    return-void
.end method
