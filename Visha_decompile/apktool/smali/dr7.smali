.class public Ldr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lmr7;


# direct methods
.method public constructor <init>(Lmr7;)V
    .locals 0

    iput-object p1, p0, Ldr7;->b:Lmr7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Ldr7;->b:Lmr7;

    iget-object p1, p1, Lmr7;->a:Landroid/app/Activity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string p2, "exit"

    invoke-virtual {p1, p2}, Lxj;->O(Ljava/lang/String;)V

    iget-object p1, p0, Ldr7;->b:Lmr7;

    invoke-virtual {p1}, Lmr7;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ldr7;->b:Lmr7;

    iget-object p2, p2, Lmr7;->a:Landroid/app/Activity;

    const-class v0, Lcom/transsion/xuanniao/account/verify/view/VerifyAccountActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_logout_account:I

    const-string v0, "operation"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Ldr7;->b:Lmr7;

    iget-object p2, p2, Lmr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const-string v0, "accountId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Ldr7;->b:Lmr7;

    iget-object p0, p0, Lmr7;->a:Landroid/app/Activity;

    const/16 p2, 0x7d1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Ldr7;->b:Lmr7;

    iget-object p0, p0, Lmr7;->c:Lmr7$a;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$b;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$b;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    sget p1, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->h:I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->D0()V

    :cond_2
    :goto_1
    return-void
.end method
