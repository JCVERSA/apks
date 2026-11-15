.class public Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->notExistSuffix:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->next:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->s1()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AccountPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "is_logged_in"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lao7$a;->a:Lao7;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    invoke-virtual {v1}, Lup7;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-static {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->B0(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;->i:Lup7;

    invoke-virtual {p0}, Lup7;->h()V

    :cond_2
    :goto_0
    return-void
.end method
