.class public LOppOOO0/OppOp0$c;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOO0/OppOp0;->c(Ljava/util/HashMap;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ljava/util/HashMap;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Z

.field public final synthetic n:LOppOOO0/OppOp0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOp0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, LOppOOO0/OppOp0$c;->n:LOppOOO0/OppOp0;

    iput-object p5, p0, LOppOOO0/OppOp0$c;->k:Ljava/util/HashMap;

    iput-object p6, p0, LOppOOO0/OppOp0$c;->l:Ljava/lang/String;

    iput-boolean p7, p0, LOppOOO0/OppOp0$c;->m:Z

    invoke-direct {p0, p2, p3, p4}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object p1, p0, LOppOOO0/OppOp0$c;->n:LOppOOO0/OppOp0;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LOppOOO0/OppOp0$c;->n:LOppOOO0/OppOp0;

    invoke-virtual {p1}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p0, LOppOOO0/OppOp0$c;->n:LOppOOO0/OppOp0;

    iget-object p2, p1, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object v0, p1, LOppOOO0/OppOp0;->f:Ljava/lang/String;

    iput-object v0, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    sget-object p2, Lao7$a;->a:Lao7;

    invoke-virtual {p1}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p1

    iget-object v0, p0, LOppOOO0/OppOp0$c;->n:LOppOOO0/OppOp0;

    iget-object v0, v0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p2, p1, v0}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object p1, p0, LOppOOO0/OppOp0$c;->n:LOppOOO0/OppOp0;

    invoke-virtual {p1}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p1

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    iget-object p0, p0, LOppOOO0/OppOp0$c;->n:LOppOOO0/OppOp0;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lqq7;

    iget-object p0, p0, LOppOOO0/OppOp0;->e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-interface {p1, p0, p3}, Lqq7;->G(Lcom/transsion/xuanniao/account/model/data/AccountRes;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, LOppOOO0/OppOp0$c;->n:LOppOOO0/OppOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOppOOO0/OppOp0$c;->n:LOppOOO0/OppOp0;

    iget-object v1, p0, LOppOOO0/OppOp0$c;->k:Ljava/util/HashMap;

    iget-object v2, p0, LOppOOO0/OppOp0$c;->l:Ljava/lang/String;

    iget-boolean p0, p0, LOppOOO0/OppOp0$c;->m:Z

    invoke-virtual {v0, v1, v2, p0}, LOppOOO0/OppOp0;->c(Ljava/util/HashMap;Ljava/lang/String;Z)V

    return-void
.end method
