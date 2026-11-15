.class public Ldo7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldo7;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ldo7;


# direct methods
.method public constructor <init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldo7$a;->l:Ldo7;

    iput-object p4, p0, Ldo7$a;->k:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 6

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/LoginRes;

    iget-object p1, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object p1, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {p1}, Ldo7;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Ldo7$a;->l:Ldo7;

    iget-wide v4, p1, Ldo7;->s:J

    sub-long v4, v2, v4

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lxj;->k0(Ljava/lang/String;ILjava/lang/String;J)V

    iget-object p1, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/LoginRes;->account:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldo7$a;->l:Ldo7;

    iget-object p3, p0, Ldo7$a;->k:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, p3, v1}, Ldo7;->f(Ldo7;Lcom/transsion/xuanniao/account/model/data/LoginRes;ILjava/lang/String;I)V

    iget-object p1, p0, Ldo7$a;->l:Ldo7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lkn7;

    iget-object p3, p2, Lcom/transsion/xuanniao/account/model/data/LoginRes;->account:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-interface {p1, p3}, Lkn7;->X(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object p0, p0, Ldo7$a;->l:Ldo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/LoginRes;->token:Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->eventType:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lkn7;->K(Ljava/lang/String;Lcom/transsion/xuanniao/account/model/data/LoginRes;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    iget-object p0, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {v0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v1

    iget-object v0, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {v0}, Ldo7;->v()Ljava/lang/String;

    move-result-object v2

    iget v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Ldo7$a;->l:Ldo7;

    iget-wide v7, v0, Ldo7;->s:J

    sub-long/2addr v5, v7

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lxj;->k0(Ljava/lang/String;ILjava/lang/String;J)V

    iget-object v0, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {v0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    iget-object v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/transsion/xuanniao/account/model/data/ErrorExtend;->needCaptcha:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldo7$a;->l:Ldo7;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lkn7;

    invoke-interface {v0}, Lkn7;->Q()V

    iget-object v0, p0, Ldo7$a;->l:Ldo7;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldo7;->g(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v1, 0x61ae4

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Ldo7$a;->l:Ldo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    invoke-interface {p0}, Lkn7;->o0()V

    goto :goto_1

    :cond_2
    const v1, 0x61a83

    if-eq v0, v1, :cond_6

    const v1, 0x61a80

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x61c1b

    if-ne v0, v1, :cond_4

    iget-object p2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    if-eqz p2, :cond_7

    iget-object p2, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {p2}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p2

    invoke-static {p2}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p2

    iget-object v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/model/data/ErrorExtend;->getEndTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lkk7;->a()V

    iget-object v2, p2, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "key_login_pwd_limit"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Lkk7;->b()V

    iget-object p0, p0, Ldo7$a;->l:Ldo7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/model/data/ErrorExtend;->getEndTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldo7;->i(J)V

    goto :goto_1

    :cond_4
    const v1, 0x61a82

    if-ne v0, v1, :cond_5

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    if-eqz p1, :cond_7

    iget-object p0, p0, Ldo7$a;->l:Ldo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/model/data/ErrorExtend;->getEndTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lkn7;->C(J)V

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p0, p0, Ldo7$a;->l:Ldo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    invoke-interface {p0}, Lkn7;->n()V

    :cond_7
    :goto_1
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ldo7$a;->l:Ldo7;

    invoke-virtual {p0}, Ldo7;->w()V

    return-void
.end method
