.class public Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->infoL:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->J1()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    iget-object v1, v0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iget-object v2, v1, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-nez v2, :cond_0

    const-string v0, "goPersonInfo"

    invoke-virtual {v1, v0}, LOppOOO0/OppOp0;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->F0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->safeCenterL:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->H1()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    const-class v2, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    iget v2, v1, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->i:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->privacyCenterL:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->L1()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    const-class v2, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->portrait:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iget-object p1, p1, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const-string v0, ""

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->I1()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/center/view/o;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->m:Lcom/transsion/xuanniao/account/center/view/o;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/o;->h()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$f;->d:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/transsion/xuanniao/account/center/view/PortraitPreviewActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    iget-object v1, v1, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz v1, :cond_6

    iget-object v0, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    :cond_6
    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_2
    return-void
.end method
