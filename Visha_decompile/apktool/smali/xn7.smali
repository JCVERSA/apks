.class public Lxn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/d;

.field public final synthetic c:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lxn7;->c:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    iput-object p2, p0, Lxn7;->b:Lcom/transsion/widgetslib/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lxn7;->c:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string v0, "ULT"

    const-string v1, "email"

    invoke-virtual {p1, v0, v1}, Lxj;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lao7$a;->a:Lao7;

    iget-object v2, p0, Lxn7;->c:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object p1

    iget-object v2, p0, Lxn7;->c:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v2

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {p1}, Lsm7;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v0, v1, p1}, Lxj;->z(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lxn7;->c:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    const-class v1, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lxn7;->c:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-object v0, v0, Ljl7;->f:Ljava/lang/String;

    const-string v1, "accountId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lxn7;->c:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    const/16 v1, 0x3ea

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p0, p0, Lxn7;->b:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
