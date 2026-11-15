.class public Lis7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/o;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/o;)V
    .locals 0

    iput-object p1, p0, Lis7;->b:Lcom/transsion/xuanniao/account/center/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lis7;->b:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Ljr7;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lis7;->b:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lis7;->b:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    const-string p1, "Settings"

    invoke-virtual {p0, p1}, Lxj;->K1(Ljava/lang/String;)V

    return-void
.end method
