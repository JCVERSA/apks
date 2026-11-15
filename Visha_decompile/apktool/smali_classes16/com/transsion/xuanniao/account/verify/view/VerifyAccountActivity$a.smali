.class public Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->verifyPwd:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->next:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->O1()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;->B0(Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity$a;->d:Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;->i:Lio7;

    invoke-virtual {p0}, Lio7;->h()V

    :cond_1
    return-void
.end method
