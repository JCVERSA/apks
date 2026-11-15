.class public Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->phoneButton:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->r1()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    const-class v1, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    iget v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->e:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->emailButton:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->n1()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    const-class v1, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;->d:Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    iget v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->f:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method
