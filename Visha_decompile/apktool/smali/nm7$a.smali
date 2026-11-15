.class public Lnm7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm7;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lnm7;


# direct methods
.method public constructor <init>(Lnm7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lnm7$a;->k:Lnm7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object p1, p0, Lnm7$a;->k:Lnm7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnm7$a;->k:Lnm7;

    invoke-virtual {p1}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lxj;->P1(ILjava/lang/String;)V

    iget-object p0, p0, Lnm7$a;->k:Lnm7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lxk7;

    invoke-interface {p0}, Lxk7;->j()V

    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnm7$a;->k:Lnm7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnm7$a;->k:Lnm7;

    invoke-virtual {v0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lxj;->P1(ILjava/lang/String;)V

    iget-object v0, p0, Lnm7$a;->k:Lnm7;

    invoke-virtual {v0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v1, 0x61a83

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lnm7$a;->k:Lnm7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lxk7;

    invoke-interface {p0}, Lxk7;->n()V

    goto :goto_0

    :cond_1
    const v1, 0x61c1b

    if-ne v0, v1, :cond_2

    iget-object p2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lnm7$a;->k:Lnm7;

    invoke-virtual {p2}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p2

    invoke-static {p2}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p2

    iget-object v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/model/data/ErrorExtend;->getEndTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ltl7;->f(J)V

    invoke-virtual {p2}, Lkk7;->b()V

    iget-object p0, p0, Lnm7$a;->k:Lnm7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/model/data/ErrorExtend;->getEndTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnm7;->b(J)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lnm7$a;->k:Lnm7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnm7$a;->k:Lnm7;

    invoke-virtual {p0}, Lnm7;->e()V

    return-void
.end method
