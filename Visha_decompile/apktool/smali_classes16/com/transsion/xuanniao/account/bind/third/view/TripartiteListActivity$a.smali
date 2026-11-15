.class public Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->facebookL:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {p1}, Ljl7;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1, v3}, Lxj;->s(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_facebook_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->D0(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1, v2}, Lxj;->s(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-static {p0, v3}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->C0(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->googleL:I

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {p1}, Ljl7;->h()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1, v3}, Lxj;->t(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_google_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->D0(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1, v2}, Lxj;->t(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-static {p0, v0}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->C0(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->vkL:I

    if-ne v0, v1, :cond_5

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {p1}, Ljl7;->i()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1, v3}, Lxj;->B(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_vk_app_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->D0(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1, v2}, Lxj;->B(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-static {p0, v0}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->C0(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->lineL:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {p1}, Ljl7;->g()Z

    move-result p1

    const/4 v0, 0x7

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1, v3}, Lxj;->u(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_line_app_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->D0(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1, v2}, Lxj;->u(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;->d:Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-static {p0, v0}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->C0(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;I)V

    :cond_7
    :goto_0
    return-void
.end method
