.class public Lhr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ler7$a;


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/dialog/d;

.field public final synthetic b:Lmr7;


# direct methods
.method public constructor <init>(Lmr7;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lhr7;->b:Lmr7;

    iput-object p2, p0, Lhr7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lhr7;->b:Lmr7;

    iget-object p1, p1, Lmr7;->a:Landroid/app/Activity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string v0, "setpwd"

    invoke-virtual {p1, v0}, Lxj;->O(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lhr7;->b:Lmr7;

    iget-object v0, v0, Lmr7;->a:Landroid/app/Activity;

    const-class v1, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "setPwdType"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lhr7;->b:Lmr7;

    iget-object v0, v0, Lmr7;->a:Landroid/app/Activity;

    const/16 v1, 0x7d2

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p0, p0, Lhr7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
