.class public LOppOOO0/OppOOp0$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOO0/OppOOp0;->e(Ljava/util/HashMap;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ljava/util/HashMap;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Z

.field public final synthetic n:LOppOOO0/OppOOp0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    iput-object p5, p0, LOppOOO0/OppOOp0$a;->k:Ljava/util/HashMap;

    iput-object p6, p0, LOppOOO0/OppOOp0$a;->l:Ljava/lang/String;

    iput-boolean p7, p0, LOppOOO0/OppOOp0$a;->m:Z

    invoke-direct {p0, p2, p3, p4}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 2

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    iget-object p1, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    const-string p1, "avatar"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lxj;->G0(ILjava/lang/String;)V

    iget-object p0, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    iget-object p1, p0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p2, p0, LOppOOO0/OppOOp0;->e:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ljq7;

    invoke-interface {p0, p2}, Ljq7;->F(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "state"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p3, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {p3}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p3

    invoke-static {p3}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Lxj;->H0(ILjava/lang/String;)V

    iget-object p2, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    iget-object p3, p0, LOppOOO0/OppOOp0$a;->k:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p2, LOppOOO0/OppOOp0;->g:Ljava/lang/String;

    iget-object p1, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    iget-object p2, p0, LOppOOO0/OppOOp0$a;->k:Ljava/util/HashMap;

    const-string p3, "countryCode"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, LOppOOO0/OppOOp0;->i:Ljava/lang/String;

    iget-object p1, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    iget-object p1, p1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p2, p0, LOppOOO0/OppOOp0$a;->k:Ljava/util/HashMap;

    const-string p3, "countryName"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->countryName:Ljava/lang/String;

    iget-object p0, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    iget-object p1, p0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p2, p0, LOppOOO0/OppOOp0;->g:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->state:Ljava/lang/String;

    iget-object p2, p0, LOppOOO0/OppOOp0;->i:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->countryCode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ljq7;

    invoke-interface {p0, p1}, Ljq7;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    goto :goto_0

    :cond_2
    const-string p1, "nickname"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lxj;->E0(ILjava/lang/String;)V

    iget-object p1, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    iget-object p2, p1, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p3, p1, LOppOOO0/OppOOp0;->h:Ljava/lang/String;

    iput-object p3, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    sget p1, Lam7;->a:I

    sget-object p1, Lgo7$a;->a:Lgo7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    iget-object p0, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Ljq7;

    iget-object p0, p0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-interface {p1, p0}, Ljq7;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "avatar"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget v2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxj;->G0(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "state"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget v2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxj;->H0(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "nickname"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget v2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxj;->E0(ILjava/lang/String;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOppOOO0/OppOOp0$a;->n:LOppOOO0/OppOOp0;

    iget-object v1, p0, LOppOOO0/OppOOp0$a;->k:Ljava/util/HashMap;

    iget-object v2, p0, LOppOOO0/OppOOp0$a;->l:Ljava/lang/String;

    iget-boolean p0, p0, LOppOOO0/OppOOp0$a;->m:Z

    invoke-virtual {v0, v1, v2, p0}, LOppOOO0/OppOOp0;->e(Ljava/util/HashMap;Ljava/lang/String;Z)V

    return-void
.end method
